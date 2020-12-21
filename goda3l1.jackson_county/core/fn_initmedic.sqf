#include <macro.h>

tf_no_auto_long_range_radio = true;

TF_terrain_interception_coefficient = 1;


private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};



if((__GETC__(life_medicLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	uiSleep 35;
};
//_file = compile preprocessFile "new\intro.sqf";
//[] spawn _file;
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)};
waitUntil{isNull (findDisplay 38500)};
player setVariable ["tf_sendingDistanceMultiplicator", 100];
[] spawn life_fnc_DebugGear;
