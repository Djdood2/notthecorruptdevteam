/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/

private ["_index"];

createDialog "Life_Prison_Menu";
waitUntil {!(isNull (findDisplay 2720))};


{
	_index = lbAdd [ 1102, ( _x select 0 ) ]; 
	lbSetData [ 1102, _index, ( _x select 1 ) ];  
} forEach [
	["Activate Alarm", "execvm'core\cop\prisonalarm\fn_prisonalarm.sqf';"],
	["Stop Alarm","execvm'core\cop\prisonalarm\fn_stopprisonalarm.sqf';"]
];

lbSetCurSel [ 1102, 0 ];


