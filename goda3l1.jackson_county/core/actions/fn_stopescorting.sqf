/*
	File: fn_stopEscorting.sqf

	Description:
	ASFSDFHAGFASF
*/
private "_unit";
_unit = cursorTarget;
if(isNull _unit) exitWith {};
if (!isPlayer _unit) exitWith {};
if(!(_unit getVariable "Escorting")) exitWith {life_escortTarget = objNull;};
detach _unit;
_unit setVariable["Escorting",false,true];
life_escortTarget = objNull;
