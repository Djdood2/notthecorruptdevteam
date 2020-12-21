/*
	File: fn_revivePlayer.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the revive process on the player.
*/
private["_target","_revivable","_targetName","_ui","_progressBar","_titleText","_cP","_title"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _target) exitWith {};
if(player distance _target > 4) exitWith {};
_perk = [FFuVsqqZ, "Perk8"] call mav_ttm_fnc_hasPerk; 
_meme = independent countSide playableUnits; 
if (_meme > 2 && !_perk) exitWith { ["<t size='3.2' color='#E50000'>This person requires EMS assistance, your CPR kit is not working.</t>"] call life_fnc_alert; };
if(koil_antispam == 1) exitWith {};

[] spawn life_fnc_AntiSpam;



_revivable = _target getVariable["revive",FALSE];
if(_revivable) exitWith {
	hideBody _target;
};


if(_target getVariable ["CPR",ObjNull] == player) exitWith {hint "Someone is already performing CPR..";};
if(player distance _target > 5) exitWith {}; //Not close enough.

//Fetch their name so we can shout it.
_targetName = _target getVariable["name","Unknown"];
_title = format[localize "STR_Medic_ProgressCPR",_targetName];

life_action_inUse = true; //Lockout the controls.



_target setVariable["CPR",player,TRUE];
//Setup our progress bar
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNamespace getVariable ["life_progress",displayNull];
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["Performing CPR (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;

//Lets reuse the same thing!
while {true} do
{

	if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
		[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
	};

	uiSleep 0.2;
	_cP = _cP + 0.01;
	_progressBar progressSetPosition _cP;
	_titleText ctrlSetText format["Performing CPR (%1%2)...",round(_cP * 100),"%",_title];
	if(_cP >= 1 OR !alive player) exitWith {};
	if(life_istazed) exitWith {}; //Tazed
	if(life_interrupted) exitWith {};
	if((player getVariable["restrained",false])) exitWith {};
	if(player distance _target > 4) exitWith {_badDistance = true;};
	if(_target getVariable["Revive",FALSE]) exitWith {};
	if(_target getVariable["CPR",ObjNull] != player) exitWith {};
};

//Kill the UI display and check for various states
5 cutText ["","PLAIN"];
player playActionNow "stop";
if(_target getVariable ["CPR",ObjNull] != player) exitWith { hint "Someone is already performing CPR.."; };
_target setVariable["CPR",NIL,TRUE];


if(!alive player OR life_istazed) exitWith {life_action_inUse = false;};
if(_target getVariable["Revive",FALSE]) exitWith {hint localize "STR_Medic_RevivedRespawned"};
if((player getVariable["restrained",false])) exitWith {life_action_inUse = false;};
if(!isNil "_badDistance") exitWith {titleText[localize "STR_Medic_TooFar","PLAIN"]; life_action_inUse = false;};
if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};


life_action_inUse = false;

_chance = round (random 250);
_cpr = [FFuVsqqZ, "Perk2_1_2"] call mav_ttm_fnc_hasPerk; 
_cpr2 = [FFuVsqqZ, "Perk2_1_3"] call mav_ttm_fnc_hasPerk; 
_cpr3 = [FFuVsqqZ, "Perk2_1_4"] call mav_ttm_fnc_hasPerk; 
_cpr4 = [FFuVsqqZ, "Perk2_1_5"] call mav_ttm_fnc_hasPerk; 
if (_cpr) then {
	_chance = round (random 225);
};
if (_cpr2) then {
	_chance = round (random 200);
};
if (_cpr3) then {
	_chance = round (random 150);
};
if (_cpr4) then {
	_chance = round (random 99);
};
if(_chance < 100) then {
	_target setVariable["Revive",TRUE,TRUE];
	[[profileName],"life_fnc_revived",_target,FALSE] spawn life_fnc_MP;
	_pid = _target getVariable["steam64ID",""];
	if(_targetName == "Unknown" || _targetName == "" || _pid == "") then {
		hideBody _target;
		deleteVehicle _target;
		_target hideObject true;
	} else {
		uiSleep 0.6;
		player reveal _target;
	};
};