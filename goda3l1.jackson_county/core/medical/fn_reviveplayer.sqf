/*
	File: fn_revivePlayer.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Starts the revive process on the player.
*/
private["_target","_revivable","_targetName","_ui","_progressBar","_titleText","_cP","_title"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _target) exitWith {};
antispam = 1;


if(player distance _target > 4) exitWith {};


_revivable = _target getVariable["Revive",FALSE];
if(_revivable) exitWith {
//	aQ3CGZRg3W9tGxzs = aQ3CGZRg3W9tGxzs + 2000;
	hideBody _target;
};


if(_target getVariable ["Reviving",ObjNull] == player) exitWith {hint localize "STR_Medic_AlreadyReviving";};
if(player distance _target > 5) exitWith {}; //Not close enough.

//Fetch their name so we can shout it.
_targetName = _target getVariable["name","Unknown"];
_title = format[localize "STR_Medic_Progress",_targetName];

 if(koil_antispam == 1) exitWith {};

[] spawn life_fnc_AntiSpam;


life_action_inUse = true; //Lockout the controls.

_target setVariable["Reviving",player,TRUE];
//Setup our progress bar
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNamespace getVariable ["life_progress",displayNull];
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;

//Lets reuse the same thing!
while {true} do
{

	if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
		[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
	};

	uiSleep 0.08;
	_cP = _cP + 0.01;
	_progressBar progressSetPosition _cP;
	_titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
	if(_cP >= 1 OR !alive player) exitWith {antispam = 0;};
	if(life_istazed) exitWith {antispam = 0;}; //Tazed
	if(life_interrupted) exitWith {antispam = 0;};
	if((player getVariable["restrained",false])) exitWith {antispam = 0;};
	if(player distance _target > 4) exitWith {_badDistance = true; antispam = 0;};
	if(_target getVariable["Revive",FALSE]) exitWith {antispam = 0;};
	if(_target getVariable["Reviving",ObjNull] != player) exitWith {antispam = 0;};
};

//Kill the UI display and check for various states
5 cutText ["","PLAIN"];
player playActionNow "stop";
if(_target getVariable ["Reviving",ObjNull] != player) exitWith {hint localize "STR_Medic_AlreadyReviving"; antispam = 0;};
_target setVariable["Reviving",NIL,TRUE];
if(!alive player OR life_istazed) exitWith {life_action_inUse = false; antispam = 0;};
if(_target getVariable["Revive",FALSE]) exitWith {hint localize "STR_Medic_RevivedRespawned"};
if((player getVariable["restrained",false])) exitWith {life_action_inUse = false; antispam = 0;};
if(!isNil "_badDistance") exitWith {titleText[localize "STR_Medic_TooFar","PLAIN"]; life_action_inUse = false; antispam = 0;};
if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; antispam = 0; life_action_inUse = false;};
if (isNil {tax getVariable "revivefees"}) then { tax setVariable ["revivefees", 1200, true];;diag_log "Revive fee variable set."; }; //Revive price does not exist... Set to $800 by default.
_priceofrevive = tax getVariable "revivefees"; 
b2UuDWVw9NeDh45d = b2UuDWVw9NeDh45d + _priceofrevive;
life_action_inUse = false;
_target setVariable["Revive",TRUE,TRUE];
[[profileName],"life_fnc_revived",_target,FALSE] spawn life_fnc_MP;
titleText[format[localize "STR_Medic_RevivePayReceive",_targetName,[(call life_revive_fee)] call life_fnc_numberText],"PLAIN"];
antispam = 0;

_pid = _target getVariable["steam64ID",""];


if(_targetName == "Unknown" || _targetName == "" || _pid == "") then {
	hideBody _target;
	deleteVehicle _target;
	_target hideObject true;
} else {
uiSleep 0.6;
player reveal _target;
};

antispam = 0;
