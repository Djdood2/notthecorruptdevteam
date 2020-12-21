/*
	File: fn_adminnotif.sqf
	Author: Cobra
	
	Description:
	Sends a notification to admins in-game when someone spawns in a weapon/gun they aren't supposed to have
*/
#include <macro.h>
if(__GETC__(life_adminlevel) < 1) exitWith {};
params [
	["_message", "", [""]]
];
hint format ["%1",_message];
