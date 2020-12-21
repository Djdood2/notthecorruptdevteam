/*
	File: fn_jail.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the initial process of jailing.
*/
private["_bad","_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
hint format["%1", _unit];
if(isNull _unit) exitWith {}; //Dafuq?
if(_unit != player) exitWith {}; //Dafuq?
if(life_is_arrested) exitWith {}; //Dafuq i'm already arrested
_bad = [_this,1,false,[false]] call BIS_fnc_param;
player setVariable["restrained",false,true];
player setVariable["Escorting",false,true];
player setVariable["transporting",false,true];
aQ3CGZRg3W9tGxzs = 0;
titleText[localize "STR_Jail_Warn","PLAIN"];
hint localize "STR_Jail_LicenseNOTF";
player setPos [5606.597,3118.520,70.026];

if (uniform player == "A3L_Prisoner_Outfit") then 
{
	A3L_Fnc_OldUniform = "ALRPCulyerPuggy";
} 
else
{
	A3L_Fnc_OldUniform = Uniform player;
};

if(_bad) then
{
	waitUntil {alive player};
	uiSleep 1;
};

//Check to make sure they goto check
if(player distance (getMarkerPos "jail_marker") > 40) then
{
	player setPos [5606.597,3118.520,70.026];
};

[1] call life_fnc_removeLicenses;
if(life_inv_heroinu > 0) then {[false,"heroinu",life_inv_heroinu] call life_fnc_alrphandleinventory;};
if(life_inv_heroinp > 0) then {[false,"heroinp",life_inv_heroinp] call life_fnc_alrphandleinventory;};
if(life_inv_coke > 0) then {[false,"cocaine",life_inv_coke] call life_fnc_alrphandleinventory;};
if(life_inv_cokep > 0) then {[false,"cocainep",life_inv_cokep] call life_fnc_alrphandleinventory;};
if(life_inv_turtle > 0) then {[false,"turtle",life_inv_turtle] call life_fnc_alrphandleinventory;};
if(life_inv_cannabis > 0) then {[false,"cannabis",life_inv_cannabis] call life_fnc_alrphandleinventory;};
if(life_inv_marijuana > 0) then {[false,"marijuana",life_inv_marijuana] call life_fnc_alrphandleinventory;};
life_is_arrested = true;
aQ3CGZRg3W9tGxzs = 0;

//REMOVE OLD SHIT
removeHeadgear player;
removeGoggles player;
removeVest player;
removeBackpack player;
removeAllWeapons player;
{player removeMagazine _x} foreach (magazines player);

[[player,_bad],"life_fnc_jailSys",false,false] spawn life_fnc_MP;
[5] call SOCK_fnc_updatePartial;