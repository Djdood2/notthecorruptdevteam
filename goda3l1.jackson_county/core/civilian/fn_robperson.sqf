/*
	File: fn_robPerson.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Getting tired of adding descriptions...
*/
private["_robber"];
_robber = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _robber) exitWith {}; //No one to return it to?

if(aQ3CGZRg3W9tGxzs > 0) then
{
	[[aQ3CGZRg3W9tGxzs],"life_fnc_robReceive",_robber,false] spawn life_fnc_MP;
	[[1,format[localize "STR_NOTF_Robbed",_robber getVariable["realname",name _robber],profileName,[aQ3CGZRg3W9tGxzs] call life_fnc_numberText]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	aQ3CGZRg3W9tGxzs = 0;
	[] call life_fnc_saveGear;
	[] spawn SOCK_fnc_syncData;
	_items = uniformItems player;
	player forceAddUniform uniform player;
	{player addItemToUniform _x} foreach _items;
	_vestItems = vestItems player;
	player addVest vest player;
	{player addItemToVest _x} foreach _vestItems;
	hint "You cannot log off for a little while as you have just been robbed.";
	cobra_justrobbed = true;
	uiSleep 60;
	cobra_justrobbed = false;
}
	else
{
	[[2,format[localize "STR_NOTF_RobFail",profileName]],"life_fnc_broadcast",_robber,false] spawn life_fnc_MP;
};