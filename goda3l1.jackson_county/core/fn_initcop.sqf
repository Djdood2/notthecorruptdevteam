#include <macro.h>
player addRating 99999999;
tf_no_auto_long_range_radio = true;

TF_terrain_interception_coefficient = 1;
private["_end"];
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};


if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
	sleep 35;
};

player setVariable["rank",(__GETC__(life_coplevel)),true];
//_file = compile preprocessFile "new\intro.sqf";
//[] spawn _file;

player setVariable ["copLevel",1,true];
setGroupIconsVisible [false,false];
player setUnitRecoilCoefficient 2.3;
life_recoilSet = true;
player setVariable ["tf_sendingDistanceMultiplicator", 100];
[] spawn life_fnc_DebugGear;

if (life_inv_mobilephone < 1) then{
[true,"mobilephone",1] call life_fnc_alrphandleinventory;
};

if (life_inv_keycard < 1) then{
[true,"keycard",1] call life_fnc_alrphandleinventory;
};
player setVariable ["copLevel",1,true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)};
waitUntil{isNull (findDisplay 38500)};
