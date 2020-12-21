tf_no_auto_long_range_radio = true; 
tf_west_radio_code = "";
tf_east_radio_code = tf_west_radio_code;
tf_guer_radio_code = tf_west_radio_code;
tf_civ_radio_code = tf_west_radio_code;
if (isServer) then {
	//bank stuff m8
	cgbankvault setvariable ["robbed",false,true];
	pstash1 setvariable ["robbed",false,true];
	pstash2 setvariable ["robbed",false,true];
	// gold
	cgbankvault1 setvariable ["robbed",false,true];
	_loot = getArray (missionConfigFile >> "CobraConfig" >> "Gold" >> "data");
	suitcase1 setVariable ["Trunk",[_loot,5000],true];
	//jail
	evidencelocker setvariable ["robbed",false,true];
	//RebelOutpost
	cobrarebel setvariable ["raided",false,true];
	cobrarebel setvariable ["raiding",false,true];
	//Gang Hideout Shit
	[] spawn life_fnc_initgangzones;
};

enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Corrupt Gaming";
[] execVM "KRON_Strings.sqf";
[] execVM "rain.sqf";
StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};

