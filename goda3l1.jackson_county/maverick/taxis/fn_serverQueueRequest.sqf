/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

params [
	["_player", objNull, [objNull]],
	["_destinationPosition", [], [[]]]
];

if (!isServer) exitWith {};
if !(_player in playableUnits) exitWith {};
if !(count _destinationPosition == 3) exitWith {};
if (count (mav_taxi_v_callQueue select { (_x param [0, objNull]) isEqualTo _player}) > 0) exitWith {};

// Queue player
private _callId = round (random 100000);
mav_taxi_v_callQueue pushBack [
	_player,
	serverTime,
	_callId,
	_destinationPosition
];

publicVariable "mav_taxi_v_callQueue";

// Send back result
[_callId] remoteExecCall ["mav_taxi_fnc_setCallId", _player];