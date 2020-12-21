scriptName "fn_clientReceiveData";
/*--------------------------------------------------------------------
	Author: Maverick (ofpectag: MAV)
    File: fn_clientReceiveData.sqf

	<Maverick Applications>
    Written by Maverick Applications (www.maverick-apps.de)
    You're not allowed to use this file without permission from the author!
--------------------------------------------------------------------*/
#define __filename "fn_clientReceiveData.sqf"

params [
	["_level", 0],
	["_exp", 0],
	["_perkPoints", 0],
	["_perks", []]
];

// -- Already intitialized?
if (life_perksInitialized) exitWith {diag_log "Experience data already loaded";};

// -- Assign data
if !(_perks isEqualTo []) then {
	[_perks] call mav_ttm_fnc_setPerks;
};

zCFxTiwLFG = _level;
nVePVQxmFg = _exp;
KgcqPNwEFG = _perkPoints;

// -- Done
life_perksInitialized = true;