#include <macro.h>
if(__GETC__(life_coplevel) < 5) exitWith { closeDialog 0; hint "You are not a high enough rank to change the threat level!"; };
/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
private ["_index"];

createDialog "Life_Threat_Level";
waitUntil {!(isNull (findDisplay 2720))};


{
	_index = lbAdd [ 1102, ( _x select 0 ) ]; 
	lbSetData [ 1102, _index, ( _x select 1 ) ];  
} forEach [
	["Green", "execvm'core\cop\threatlevel\Green.sqf';"],
	["Amber","execvm'core\cop\threatlevel\Amber.sqf';"],
	["Red","execvm'core\cop\threatlevel\Red.sqf';"],
	["Martial Law","execvm'core\cop\threatlevel\martial.sqf';"]
];

lbSetCurSel [ 1102, 0 ];


