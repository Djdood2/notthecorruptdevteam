player addRating 99999999;
tf_no_auto_long_range_radio = true;

TF_terrain_interception_coefficient = 1;


if(life_is_arrested) then
{
	[false,false,life_arrestMinutes] call fnc_jailsetup;
	player setFatigue 1;
}
	else
{
	//_file = compile preprocessFile "new\intro.sqf";
	//[] spawn _file;
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)};
	waitUntil{isNull (findDisplay 38500)};
};

player setUnitRecoilCoefficient 1.9;
life_recoilSet = true;


waitUntil {missionNamespace getVariable ["life_recoilSet", false]}; 



player setVariable ["tf_sendingDistanceMultiplicator", 100];
[] spawn life_fnc_copMarkers;
[] spawn life_fnc_DebugGear;