/*
	File: fn_syncData.sqf
	Author: Bryan "Tonic" Boardwine"
	
	Description:
	Used for player manual sync to the server.
*/
sleep 0.2;
private["_exit"];
if(isNil "life_session_time") then {life_session_time = false;};
if(life_session_time) exitWith {
["<t size='3.2' color='#E50000'>You have recently done this, you will have to wait a little while before you can sync!</t>"] call life_fnc_alert;
};

switch (typeName life_fnc_MP_packet) do
{
	case "ARRAY":
	{
		if(count life_fnc_MP_packet == 0) exitWith
		{
			_exit = true;
		};
	};
	
	default {_exit = true;};
};

if(!isNil "_exit") exitWith {hint localize "STR_Session_SyncCheater"; closedialog 0;};

[] call SOCK_fnc_updateRequest;
[7] call SOCK_fnc_updatePartial;
[] spawn
{
	life_session_time = true;
	sleep (5 * 60);
	life_session_time = false;
};
["<t size='3.2' color='#04EE4A'>Data saved to database!</t>"] call life_fnc_alert;