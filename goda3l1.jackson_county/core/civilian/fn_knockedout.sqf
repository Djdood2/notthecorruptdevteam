
/*
	File: fn_knockedOut.sqf
	Author: Bryan "Tonic" Boardwine
	Description:
	Starts and monitors the knocked out state.
*/
private["_target","_who","_obj"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_who = [_this,1,"",[""]] call BIS_fnc_param;
if(isNull _target) exitWith {};
if(_target != player) exitWith {};
if(_who == "") exitWith {};
life_knockout = true;
player setVariable ["knockedout", true, true];
player setVariable ["tf_voiceVolume", 0, true];
titleText[format[localize "STR_Civ_KnockedOut",_who],"PLAIN"];
[[player,"Incapacitated"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
[] call life_fnc_stage3pain;
sleep 3;


if(!(player getVariable["restrained",false]) && !(player getVariable["tied",false])) then {
	player playMoveNow "amovppnemstpsraswrfldnon";
};
player setVariable["robbed",FALSE,TRUE];
player setVariable ["tf_voiceVolume", 1, true];
life_knockout = false;
player setVariable ["knockedout", false, true];