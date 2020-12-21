/*
	File: fn_pickupMoney.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Picks up money
*/
if((time - life_action_delay) < 1.5) exitWith {
	hint "You can't rapidly use action keys!";
	if(!isNil {(_this select 0) getVariable "inUse"}) then {
		_this select 0 setVariable["inUse",false,true];
	};
};
private["_obj","_val"];
_obj = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_val = (_obj getVariable "item") select 1;
if(isNil {_val}) exitWith {};
if(isNull _obj || player distance _obj > 3) exitWith {if(!isNull _obj) then {_obj setVariable["inUse",false,true];};};
if((_obj getVariable["PickedUp",false])) exitWith {deleteVehicle _obj;}; //Object was already picked up.
if(vehicle player != player) exitWith {["<t size='3.2' color='#E50000'>You cannot do that while inside of a vehicle.</t>"] call life_fnc_alerttwo;};
if (currentWeapon player == "Laserdesignator_01_khk_F" OR currentWeapon player == "Binocular" OR currentWeapon player == "Rangefinder") exitWith { hint "You pickup money with that in your hand!";};
if (count (player nearEntities["Man", 10]) > 1) then {hint 'You cannot pick up the money using this menu, there are people too close to you.';
} else { 
_obj setVariable["PickedUp",TRUE,TRUE];
if(!isNil {_val}) then
{
	deleteVehicle _obj;
	switch (true) do
	{
		case (_val > 20000000) : {_val = 100000;}; //VAL>20mil->100k
		case (_val > 5000000) : {_val = 250000;}; //VAL>5mil->250k
		default {};
	};
	if (_val > 100000) exitWith {hint "That money seems to have been spawned in. You are not allowed to pick it up ";};
	player playmove "AinvPknlMstpSlayWrflDnon";
	titleText[format[localize "STR_NOTF_PickedMoney",[_val] call life_fnc_numberText],"PLAIN"];
	aQ3CGZRg3W9tGxzs = aQ3CGZRg3W9tGxzs + _val;
	life_action_delay = time;
};
};