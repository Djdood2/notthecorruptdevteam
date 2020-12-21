#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Buys the house?
*/
private["_house","_uid","_action","_houseCfg"];
_house = cursorObject;
_uid = getPlayerUID player;

if(isNull _house) exitWith {};
if(!(_house isKindOf "House_F")) exitWith {};
if((_house getVariable["house_owned",false])) exitWith {hint "This house is already owned even though you shouldn't be seeing this hint..."};
if(!isNil {(_house getVariable "house_sold")}) exitWith {hint localize "STR_House_Sell_Process"};
if(!license_civ_home) exitWith {hint localize "STR_House_License"};
closeDialog 0;

_houseCfg = [(typeOf _house)] call life_fnc_houseConfig;
if(count _houseCfg == 0) exitWith {};

_cost = (_houseCfg select 0);
_costs = _cost / 1000000;
if(b2UuDWVw9NeDh45d < _cost) exitWith { hint format ["You need (%1 Million Dollars) to buy this.", _costs]; closeDialog 0; };




_action = [
	format[localize "STR_House_BuyMSG",
	[(_houseCfg select 0)] call life_fnc_numberText,
	(_houseCfg select 1)],localize "STR_House_Purchase",localize "STR_Global_Buy",localize "STR_Global_Cancel"
] call BIS_fnc_guiMessage;

if(_action) then {
	if((_house getVariable["house_owned",false])) exitWith {hint "This house is already owned."; closeDialog 1;};
	[[_uid,_house],"TON_fnc_addHouse",false,false] spawn life_fnc_MP;
	_house setVariable["house_owner",[_uid,profileName],true];
	_house setVariable["locked",true,true];
	_house setVariable["Trunk",[[],0],true];
	_house setVariable["containers",[],true];
	_house setVariable["uid",round(random 99999),true];
	b2UuDWVw9NeDh45d = b2UuDWVw9NeDh45d - (_houseCfg select 0);
	life_vehicles set[count life_vehicles,_house];
	life_houses set[count life_houses,[str(getPosATL _house),[]]];
	[1] call SOCK_fnc_updatePartial;
	[] spawn SOCK_fnc_syncData;
	_items = uniformItems player;
	player forceAddUniform uniform player;
	{player addItemToUniform _x} foreach _items;
	_vestItems = vestItems player;
	player addVest vest player;
    {player addItemToVest _x} foreach _vestItems;
	_marker = createMarkerLocal [format["house_%1",(_house getVariable "uid")],getPosATL _house];
	_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
	_marker setMarkerTextLocal _houseName;
	_marker setMarkerColorLocal "ColorBlue";
	_marker setMarkerTypeLocal "loc_Lighthouse";
	_numOfDoors = getNumber(configFile >> "CfgVehicles" >> (typeOf _house) >> "numberOfDoors");
	for "_i" from 1 to _numOfDoors do {
		_house setVariable[format["bis_disabled_Door_%1",_i],1,true];
	};
};
