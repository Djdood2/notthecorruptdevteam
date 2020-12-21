/*
	COPY PASTE TIME
*/
private["_val"];
_val = parseNumber(ctrlText 2702);
if(_val > 999999) exitWith {hint localize "STR_ATM_WithdrawMax";};
if(_val < 0) exitwith {};
if(!([str(_val)] call life_fnc_isnumeric)) exitWith {hint localize "STR_ATM_notnumeric"};
if(_val > b2UuDWVw9NeDh45d) exitWith {hint localize "STR_ATM_NotEnoughFunds"};
if(_val < 100 && b2UuDWVw9NeDh45d > 20000000) exitWith {hint localize "STR_ATM_WithdrawMin"}; //Temp fix for something.
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


aQ3CGZRg3W9tGxzs = aQ3CGZRg3W9tGxzs + _val;
b2UuDWVw9NeDh45d = b2UuDWVw9NeDh45d - _val;
hint format [localize "STR_ATM_WithdrawSuccess",[_val] call life_fnc_numberText];
[] call life_fnc_atmMenu;
[6] call SOCK_fnc_updatePartial; //Silent Sync
closeDialog 1;
