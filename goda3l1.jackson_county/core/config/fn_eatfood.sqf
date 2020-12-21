/*
	File: fn_eatFood.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main handling system for eating food.
	*Needs to be revised and made more modular and more indept effects*
*/
private["_food","_val","_sum"];
_food = [_this,0,"",[""]] call BIS_fnc_param;
if(_food == "") exitWith {};

if([false,_food,1] call life_fnc_alrphandleinventory) then {
	switch (_food) do
	{
		case "apple": {_val = 5};
		case "rabbit":{ _val = 15};
		case "donuts": {_val = 5};
		case "tbacon": {_val = 10};
		case "peach": {_val = 5};
		case "burger": {_val = 15};
		case "fries": {_val = 5};
	};

	_sum = life_hunger + _val;
	life_hunger = _sum;
};