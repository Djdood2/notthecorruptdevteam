/*
	File: fn_onPlayerKilled.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	When the player dies collect various information about that player
	and pull up the death dialog / camera functionality.
*/
cobra_attached = 0;
private["_unit","_killer"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_killer = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
pyd_dead_gear = getUnitLoadout player;
life_corpse = _unit;
if !(pyd_dead_gear isEqualTo []) then {diag_log "Gear array empty?"};
removeAllWeapons player;
_medics = independent countSide playableUnits;
if (_medics == 0) then { life_respawn_timer = 2; };
_perk = [FFuVsqqZ, "Perk9"] call mav_ttm_fnc_hasPerk; 
if (_perk && _medics != 0) then { life_respawn_timer = 3.75; };

while {!isNull (findDisplay 49)} do
{
	(findDisplay 49) closeDisplay 1;
};
while {dialog} do
{
	closeDialog 0;
};

if (count attachedObjects player > 0) then {
	{
		if(isPlayer _x) then {
			detach _x;
		} else {
			deleteVehicle _x;
		};
	} forEach attachedObjects _unit;
};

{
	deleteVehicle _x;
} forEach nearestObjects [player, ["WeaponHolder"], 4];

//Set some vars
disableUserInput true;
_unit setVariable["Revive",FALSE,TRUE]; //Set the corpse to a revivable state.
_unit setVariable["name",profileName,TRUE]; //Set my name so they can say my name.
_unit setVariable["restrained",FALSE,TRUE];
_unit setVariable["Escorting",FALSE,TRUE];
_unit setVariable["transporting",FALSE,TRUE]; //Why the fuck do I have this? Is it used?
_unit setVariable["steam64id",(getPlayerUID player),true]; //Set the UID.
_unit setVariable ["EMSON",1,true];

sleep 0.5;
//Setup our camera view
life_deathCamera  = "CAMERA" camCreate (getPosATL _unit);
showCinemaBorder FALSE;
life_deathCamera cameraEffect ["Internal","Back"];
createDialog "DeathScreen";
life_deathCamera camSetTarget _unit;
life_deathCamera camSetRelPos [0,22,22];
life_deathCamera camSetFOV .5;
life_deathCamera camSetFocus [50,0];
life_deathCamera camCommit 0;
(findDisplay 7300) displaySetEventHandler ["KeyDown","if((_this select 1) == (_this select 1)) then {true}"]; //Block the ESC menu
[] call life_fnc_requestMedic;
_unit spawn
{
	scopeName "DeathLoop";
	private["_maxTime","_RespawnBtn","_Timer"];
	disableSerialization;
	_RespawnBtn = ((findDisplay 7300) displayCtrl 7302);
	_Timer = ((findDisplay 7300) displayCtrl 7301);
	_maxTime = time + (life_respawn_timer * 60);
	_RespawnBtn ctrlEnable false;
	waitUntil {_Timer ctrlSetText format[localize "STR_Medic_Respawn",[(_maxTime - time),"MM:SS.MS"] call BIS_fnc_secondsToString];
	round(_maxTime - time) <= 0 OR isNull _this};
	_RespawnBtn ctrlEnable true;
	_Timer ctrlSetText localize "STR_Medic_Respawn_2";
	disableUserInput false;
};
life_action_inUse = false;
koil_antispam = 0;
[] spawn life_fnc_deathScreen;

[_unit] spawn
{
	private["_unit"];
	_unit = _this select 0;
	waitUntil {if(speed _unit == 0) exitWith {true}; life_deathCamera camSetTarget _unit; life_deathCamera camSetRelPos [0,22,22]; life_deathCamera camCommit 0;};
};
_UID = "Unknown";
_Weapon = "Unknown";
_Distance = _unit distance _killer;

if(isPlayer _killer) then {
	_UID = getPlayerUID _killer;
	_weapon = getText (configFile >> "cfgWeapons" >> currentWeapon _killer >> "displayname");
};
ctrlSetText [1001,_UID];
ctrlSetText [1003,format["%1m",_distance]];
ctrlSetText [1005,_weapon];
if(!isNull _killer && {_killer != _unit} && {side _killer != west} && {alive _killer}) then {
	if(vehicle _killer isKindOf "LandVehicle") then {

	} else {
		if(side _killer != west) then {
			_reason = "187";
			[_killer,_unit,_reason] spawn life_fnc_createEvidence;
		};
	};
};

//Gives exp to killer
if (_killer != player) then {
[player,playerSide] remoteExecCall ["life_fnc_frag",_killer];
};



_handle = [_unit] spawn life_fnc_dropItems;
waitUntil {scriptDone _handle};

life_hunger = 100;
life_thirst = 100;
life_carryWeight = 0;
if (aQ3CGZRg3W9tGxzs > 10000) then {
} else {
aQ3CGZRg3W9tGxzs = 0;
};

[] call life_fnc_hudUpdate; //Get our HUD updated.
[[player,life_sidechat,playerSide],"TON_fnc_managesc",false,false] spawn life_fnc_MP;


[0] call SOCK_fnc_updatePartial;
[3] call SOCK_fnc_updatePartial;

life_koil_nlr = 0;
uiSleep 2;
life_koil_nlr = 1;
((findDisplay 7300) displayCtrl 7303) ctrlEnable false;