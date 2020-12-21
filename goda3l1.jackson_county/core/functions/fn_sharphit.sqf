/*
sharp melee hit
*/
private["_curWep","_curMags","_attach"];
params [["_unit", objNull, [objNull]], ["_shooter", objNull, [objNull]]];
if(isNull _unit OR isNull _shooter) exitWith {player allowDamage true; life_istazed = false;};
if(!alive player) exitWith {};


if(_shooter isKindOf "Man" && alive player) then
{
	["Remove",0.015] call fnc_doHealth;
};


player setVariable["UserFucked",true,true];
uiSleep 3;
player setVariable["UserFucked",false,true];