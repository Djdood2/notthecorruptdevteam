/*
	File: fn_putInCar.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Finds the nearest vehicle and loads the target into the vehicle.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit OR !isPlayer _unit) exitWith {};
if((player distance _unit > 3)) exitWith {hint "You are too far away from the person!";};
if(vehicle player != player) exitWith {["<t size='3.2' color='#E50000'>You cannot do this while inside of a vehicle!!</t>"] call life_fnc_alerttwo;};
_nearestVehicle = nearestObjects[getPosATL player,["Car","Motorcycle","Bicycle","Motorbike","Ship","Submarine","Air"],10] select 0;
if(isNil "_nearestVehicle") exitWith {hint localize "STR_NOTF_VehicleNear"};

detach _unit;
[[_nearestVehicle],"life_fnc_moveIn",_unit,false] call life_fnc_MP;
_unit setVariable["Escorting",FALSE,TRUE];
_unit setVariable["transporting",TRUE,TRUE];