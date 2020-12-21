/*
	File: fn_bankDeposit.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Figure it out.
*/
private["_value"];
_value = parseNumber(ctrlText 2702);

//Series of stupid checks
if(_value > 999999) exitWith {hint localize "STR_ATM_GreaterThan";};
if(_value < 0) exitWith {};
if(!([str(_value)] call life_fnc_isnumeric)) exitWith {hint localize "STR_ATM_notnumeric"};
if(_value > aQ3CGZRg3W9tGxzs) exitWith {hint localize "STR_ATM_NotEnoughCash"};
if (player distance (getMarkerPos "reb_v_1_1") < 150 && cobrarebel getVariable "raided") exitWith {
	hint "This ATM is not functioning correctly. You need to fix the rebel cache before you can use it.";
	uiSleep 4;
	hint "The weapons crate will be marked on your GPS for a short period of time.";
	_marker = createMarkerLocal ["DeliveryPoint",getPos cobrarebel];
	_marker setMarkerColorLocal "ColorRed";
	_marker setMarkerTypeLocal "mil_dot";
	_marker setMarkerTextLocal ">>Rebel Weapons Crate<<";
	uiSleep 15;
	deleteMarker "DeliveryPoint";
};
aQ3CGZRg3W9tGxzs = aQ3CGZRg3W9tGxzs - _value;
b2UuDWVw9NeDh45d = b2UuDWVw9NeDh45d + _value;

hint format[localize "STR_ATM_DepositMSG",[_value] call life_fnc_numberText];
[] call life_fnc_atmMenu;
[6] call SOCK_fnc_updatePartial;
closeDialog 1;
