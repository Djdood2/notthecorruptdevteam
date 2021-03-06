#include <macro.h>
/*
	Master client initialization file
*/

// Introcam Start
[] call mav_introcam_fnc_startCinematicCam;
[0, "Setting up client, please wait"] call mav_introcam_fnc_updateCinematicStatus;

if (!isNil "A3L_RunCode") exitwith {
	player setvariable ["lolusuck",true,true];
};
A3L_RunCode = compileFinal "
	private ""_code"";
	_code = _this select 0;
	_code = compile _code;
	[] call _code;
";
// Run Some Client Stuff
[] execVM "A3L_Stuff\jailsystem.sqf";
[] execVM "A3L_Stuff\bank.sqf";
harambe = playerSide;
player setvariable ["fractureon",false,true];
player setvariable ["bleedingon",false,true];
player setvariable ["woundedon",false,true];
player setvariable ["unconciouson",false,true];
player setVariable["koilmedicbegin",1,true];
player setVariable["koilcombat",1,true];
player setVariable["breakouton",1,true];
player setVariable["EMSON",2,true];
player setvariable["tfrchat",false,true];
player setVariable["search",false,true];
player setVariable["tf_receivingDistanceMultiplicator", 10];
player setVariable["tf_sendingDistanceMultiplicator", 10];
player setVariable["UserFucked",false,true];
godMode = false;
life_firstSpawn = true;
life_session_completed = false;
private["_handle","_timeStamp"];
_timeStamp = diag_tickTime;
diag_log "------------------------------------------------------------------------------------------------------";
diag_log "--------------------------------- Starting ArmA 3 Life Client Init ----------------------------------";
diag_log "------------------------------------------------------------------------------------------------------";
waitUntil {!isNull player && player == player}; //Wait till the player is ready
//Setup initial client core functions
diag_log "::Life Client:: Initialization Variables";
[] call compile PreprocessFileLineNumbers "core\configuration.sqf";
diag_log "::Life Client:: Variables initialized";
diag_log "::Life Client:: Setting up Eventhandlers";
[] call life_fnc_setupEVH;
diag_log "::Life Client:: Eventhandlers completed";
diag_log "::Life Client:: Setting up user actions";
[] call life_fnc_setupActions;
diag_log "::Life Client:: User actions completed";
diag_log "::Life Client:: Waiting for server functions to transfer..";
waitUntil {(!isNil {clientGangLeader})};
A3L_Fnc_Request = player;
PublicvariableServer "A3L_Fnc_Request";
waitUntil {(!isNil {A3L_fnc_dreDeta8})};
diag_log "::Life Client:: Received server functions.";
diag_log "::Life Client:: Executed custom client functions";

// Introcam Wait for server
[0, "Waiting for server to be ready"] call mav_introcam_fnc_updateCinematicStatus;

// 0 cutText ["Waiting for the server to be ready...","BLACK FADED"];
// 0 cutFadeOut 99999999;

diag_log "::Life Client:: Waiting for the server to be ready..";
waitUntil{!isNil "life_server_isReady"};
waitUntil{(life_server_isReady)};
if(!isNil "life_server_extDB_notLoaded") exitWith {
	diag_log "::Life Client:: Server did not load extDB";
	
	// Introcam Error
	[0, "The server-side extension extDB was not loaded into the engine, report this to the server admin."] call mav_introcam_fnc_updateCinematicStatus;

	// 999999 cutText ["The server-side extension extDB was not loaded into the engine, report this to the server admin.","BLACK FADED"];
	// 999999 cutFadeOut 99999999;
};
[] call SOCK_fnc_dataQuery;
waitUntil {life_session_completed};

// Introcam Final
[1, "PRESS SPACE TO CONTINUE"] call mav_introcam_fnc_updateCinematicStatus;
waitUntil {mav_introcam_continue};

// 0 cutText["Finishing client setup procedure","BLACK FADED"];
// 0 cutFadeOut 9999999;

[] spawn life_fnc_escInterupt;
[] execVM "core\functions\fn_tfr.sqf";

switch (playerSide) do
{
	case west:
	{
		_handle = [] spawn life_fnc_initCop;
		waitUntil {scriptDone _handle};
	};

	case civilian:
	{
		//Initialize Civilian Settings
		_handle = [] spawn life_fnc_initCiv;
		waitUntil {scriptDone _handle};
	};

	case independent:
	{
		//Initialize Medics and blah
		_handle = [] spawn life_fnc_initMedic;
		waitUntil {scriptDone _handle};
	};
};

player setVariable["restrained",false,true];
player setVariable["Escorting",false,true];
player setVariable["transporting",false,true];
diag_log "Past Settings Init";
[] execFSM "core\fsm\client.fsm";
diag_log "Executing client.fsm";
waitUntil {!(isNull (findDisplay 46))};
diag_log "Display 46 Found";
(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call life_fnc_keyHandler"];



player addRating 99999999;
diag_log "------------------------------------------------------------------------------------------------------";
diag_log format["                End of Altis Life Client Init :: Total Execution Time %1 seconds ",(diag_tickTime) - _timeStamp];
diag_log "------------------------------------------------------------------------------------------------------";
life_sidechat = true;
[[player,life_sidechat,playerSide],"TON_fnc_managesc",false,false] spawn life_fnc_MP;
0 cutText ["","BLACK IN"];
[] call life_fnc_hudSetup;
[] call life_fnc_hudUpdate;
LIFE_ID_PlayerTags = ["LIFE_PlayerTags","onEachFrame","life_fnc_playerTags"] call BIS_fnc_addStackedEventHandler;
LIFE_ID_RevealObjects = ["LIFE_RevealObjects","onEachFrame","life_fnc_revealObjects"] call BIS_fnc_addStackedEventHandler;
[] call life_fnc_settingsInit;
player setVariable["steam64ID",getPlayerUID player];
player setVariable["realname",profileName,true];

KK_fnc_forceRagdoll = compileFinal
"
    if (vehicle player != player || godMode) exitWith {};
    private ""_rag"";
    godMode = true;
    player allowdamage false;
    _rag = ""Land_Can_V3_F"" createVehicleLocal [0,0,0];
    _rag setMass 1e10;
    _rag attachTo [player, [0,0,0], ""Spine3""];
    _rag setVelocity [0,0,8];
    detach _rag;
    0 = _rag spawn {
        deleteVehicle _this;
        uisleep 1;
        godMode = false;
        player allowdamage true;
    };
";

life_fnc_moveIn = compileFinal
"
	player moveInCargo (_this select 0);
";

[] execVM "core\init_survival.sqf";

__CONST__(life_paycheck,life_paycheck); //Make the paycheck static.
//Dyn Market
DYNAMICMARKET_boughtItems = [];
[[getPlayerUID player],"TON_fnc_playerLogged",false,false] spawn life_fnc_MP;
