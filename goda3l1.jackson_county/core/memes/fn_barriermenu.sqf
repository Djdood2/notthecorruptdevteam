private ["_index"];

createDialog "Life_Barriers";
waitUntil {!(isNull (findDisplay 2720))};


{
	_index = lbAdd [ 1102, ( _x select 0 ) ]; 
	lbSetData [ 1102, _index, ( _x select 1 ) ];  
} forEach [
	["Spawn Large Barrier", "execvm'core\memes\fn_barriers.sqf';"],
	["Spawn Cone", "execvm'core\memes\fn_cones.sqf';"],
	["Delete Spawned Item", "execvm'core\memes\deletebarriers.sqf';"]
];

lbSetCurSel [ 1102, 0 ];


