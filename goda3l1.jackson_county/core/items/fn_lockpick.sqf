/*
	File: fn_lockpick.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for lock-picking.
*/
private["_curTarget","_distance","_isVehicle","_title","_progressBar","_cP","_titleText","_dice","_badDistance"];
if (player distance getMarkerPos "NoImpound" < 20) exitWith {};
_curTarget = cursorTarget;
life_interrupted = false;
if(life_action_inUse) exitWith {};
if(isNull _curTarget) exitWith {}; //Bad type
_distance = ((boundingBox _curTarget select 1) select 0) + 2;
if(player distance _curTarget > _distance) exitWith {}; //Too far
_isVehicle = if((_curTarget isKindOf "LandVehicle") OR (_curTarget isKindOf "Ship") OR (_curTarget isKindOf "Air")) then {true} else {false};
if(_isVehicle && _curTarget in life_vehicles) exitWith {hint localize "STR_ISTR_Lock_AlreadyHave"};

//More error checks
if(!_isVehicle && !isPlayer _curTarget) exitWith {};
if(!_isVehicle && !(_curTarget getVariable["restrained",false])) exitWith {};
_memecheck = typeOf _curTarget;
if (_memecheck isEqualTo 'red_swat_08_p_swat' OR _memecheck isEqualTo 'O_Boat_Armed_01_hmg_F' OR _memecheck isEqualTo 'B_MRAP_01_F' OR _memecheck isEqualTo 'B_G_Offroad_01_armed_F' OR _memecheck isEqualTo 'HummerSERT_01' OR _memecheck isEqualTo 'HummerSERT_02' OR _memecheck isEqualTo 'HummerSERT_03' OR _memecheck isEqualTo 'Abruzzi_LencoPD_01' OR _memecheck isEqualTo 'SWATBearcat_01' OR _memecheck == 'B_Boat_Armed_01_minigun_F') exitWith {
["<t size='3.2' color='#E50000'>You cannot lockpick this vehicle.</t>"] call life_fnc_alerttwo;
};


_title = format[localize "STR_ISTR_Lock_Process",if(!_isVehicle) then {"Handcuffs"} else {getText(configFile >> "CfgVehicles" >> (typeOf _curTarget) >> "displayName")}];
life_action_inUse = true; //Lock out other actions

//Setup the progress bar
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;
player setVariable ["lockpicking",true,true];
//make this play max once per xx time or something to prevent spam

if(_isVehicle) then {
		playSound3D ["ALRPSounds\snds\caralarm.ogg", player, false, getPosASL player, 1, 1, 155];
};
while {true} do
{
	if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
		[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
	};
	uiSleep 0.26;
	if(isNull _ui) then {
		5 cutRsc ["life_progress","PLAIN"];
		_ui = uiNamespace getVariable "life_progress";
		_progressBar = _ui displayCtrl 38201;
		_titleText = _ui displayCtrl 38202;
	};
	_cP = _cP + 0.01;
	_progressBar progressSetPosition _cP;
	_titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
	if(_cP >= 1 OR !alive player) exitWith {};
	if(life_istazed) exitWith {}; //Tazed
	if(life_interrupted) exitWith {};
	if((player getVariable["restrained",false])) exitWith {};
	if(player distance _curTarget > _distance) exitWith {_badDistance = true;};
};

//Kill the UI display and check for various states
5 cutText ["","PLAIN"];
player playActionNow "stop";
player setVariable ["lockpicking",false,true];
if(!alive player OR life_istazed) exitWith {life_action_inUse = false;};
if((player getVariable["restrained",false])) exitWith {life_action_inUse = false;};
if(!isNil "_badDistance") exitWith {titleText[localize "STR_ISTR_Lock_TooFar","PLAIN"]; life_action_inUse = false;};
if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};
if(!([false,"lockpick",1] call life_fnc_alrphandleinventory)) exitWith {life_action_inUse = false;};

life_action_inUse = false;

if(!_isVehicle) then {
	_curTarget setVariable["restrained",false,true];
	_curTarget setVariable["Escorting",false,true];
	_curTarget setVariable["transporting",false,true];
	player setVariable ["lockpicking",false,true];
} else {
	_dice = random(150);
	_lock1 = [FFuVsqqZ, "Perk4_4"] call mav_ttm_fnc_hasPerk; 
	_lock2 = [FFuVsqqZ, "Perk4_4_1"] call mav_ttm_fnc_hasPerk; 
	_lock3 = [FFuVsqqZ, "Perk4_4_1_1"] call mav_ttm_fnc_hasPerk; 
	if (_lock1) then {
	_dice = random(128);
	};
	if (_lock2) then {
	_dice = random(112);
	};
	if (_lock3) then {
	_dice = random(75);
	};
	if(_dice < 25) then {
		[[_curTarget,0],"life_fnc_lockVehicle",_curTarget,false] spawn life_fnc_MP;
		["<t size='3.2' color='#04EE4A'>You've successfully unlocked this vehicle.</t>"] call life_fnc_alerttwo;
		playSound3D ["ALRPSounds\snds\caralarm.ogg", player, false, getPosASL player, 1, 0.8, 355];
		player setVariable ["lockpicking",false,true];
		_reason = "487";
		_skilled = [FFuVsqqZ, "Perk4_6"] call mav_ttm_fnc_hasPerk; 
		if (!_skilled) then {[player,player,_reason] spawn life_fnc_createEvidence;};
	} else {
		[[0,format[localize "STR_ISTR_Lock_FailedNOTF",profileName]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
		["<t size='3.2' color='#E50000'>You've failed to unlock this vehicle.</t>"] call life_fnc_alerttwo;
		player setVariable ["lockpicking",false,true];
	};
};