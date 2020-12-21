/*
	File: fn_robReceive.sqf
	Author: Bryan "Tonic" Boardwine
*/
private["_cash"];
_cash = [_this,0,0,[0]] call BIS_fnc_param;
if(_cash == 0) exitWith {titleText[localize "STR_Civ_RobFail","PLAIN"]};
if (_cash > 400000) exitWith {titleText[localize "STR_Civ_RobHack","PLAIN"];[[1,format["%1 appears to be duping gear. Report them to an admin!",name player]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;[[1,format["%1 appears to be duping gear. Report them to an admin!",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;["SpyGlass",false,true] call BIS_fnc_endMission;};
aQ3CGZRg3W9tGxzs = aQ3CGZRg3W9tGxzs + _cash;
titleText[format[localize "STR_Civ_Robbed",[_cash] call life_fnc_numberText],"PLAIN"];
[] call life_fnc_saveGear;