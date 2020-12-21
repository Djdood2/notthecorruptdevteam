/*
	File: fn_searchClient.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Searches the player and he returns information back to the player.
*/
private["_cop","_dicks"];
_cop = [_this,0,Objnull,[objNull]] call BIS_fnc_param;
if(isNull _cop) exitWith {};
_dicks = 0;
if(life_inv_keycard > 0) then {[false,"keycard",life_inv_keycard] call life_fnc_alrphandleinventory; _dicks = 2;};
if(life_inv_marijuana > 0) then {[false,"marijuana",life_inv_marijuana] call life_fnc_alrphandleinventory; _dicks = 2;};
if(life_inv_hackingtool > 0) then {[false,"hackingtool",life_inv_hackingtool] call life_fnc_alrphandleinventory; _dicks = 2;};
if(life_inv_blastingcharge > 0) then {[false,"blastingcharge",life_inv_blastingcharge] call life_fnc_alrphandleinventory; _dicks = 2;};
if(life_inv_uraniumr > 0) then {[false,"uraniumr",life_inv_uraniumr] call life_fnc_alrphandleinventory; _dicks = 2;};

if (_dicks == 2) exitWith { 
[false,"uraniumr",life_inv_uraniumr] call life_fnc_alrphandleinventory;
[false,"keycard",life_inv_keycard] call life_fnc_alrphandleinventory;
[false,"marijuana",life_inv_marijuana] call life_fnc_alrphandleinventory;
[false,"hackingtool",life_inv_hackingtool] call life_fnc_alrphandleinventory;
[false,"blastingcharge",life_inv_blastingcharge] call life_fnc_alrphandleinventory;
[false,"uraniumr",life_inv_uraniumr] call life_fnc_alrphandleinventory;
[] spawn SOCK_fnc_syncData;
uiSleep 1;
hint "You were patted down and had all of your illegal items removed.";
};
