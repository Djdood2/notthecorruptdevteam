scriptName "fn_init";
/*--------------------------------------------------------------------
	Author: Maverick (ofpectag: MAV)
    File: fn_init.sqf

	<Maverick Applications>
    Written by Maverick Applications (www.maverick-apps.de)
    You're not allowed to use this file without permission from the author!
--------------------------------------------------------------------*/
#define __filename "fn_init.sqf"

[] spawn {
	if (isServer && !hasInterface) exitWith {};

	diag_log "fn_init.sqf 2";
	life_perksInitialized = false;
	FFuVsqqZ = (0 call mav_ttm_fnc_generateBasePerks);
	zCFxTiwLFG = 0;
	nVePVQxmFg = 0;
	KgcqPNwEFG = 0;
	// Wait until player is ready
	waitUntil {player == player};

	// Request data from server
	[player] remoteExecCall ["mav_ttm_fnc_loadFromDatabase", 2];

	// Create auto-retry thread
	[] spawn {
		while {!life_perksInitialized} do
		{
			sleep 5;
			if (life_perksInitialized) exitWith {};
			[player] remoteExecCall ["mav_ttm_fnc_loadFromDatabase", 2];
		};
	};
};