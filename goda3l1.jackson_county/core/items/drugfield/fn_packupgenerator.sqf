/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
private["_generator"];
if(playerSide != civilian) exitWith {}; 
_generator = nearestObjects[getPos player,["Land_Portable_generator_F"],8] select 0;
if(isNil "_generator") exitWith {};

if(([true,"generator",1] call life_fnc_alrphandleinventory)) then
{
	deleteVehicle _generator;
	titleText["You have packed up a generator!","PLAIN"];
	life_generatordrugfield = 0;
	player removeAction life_action_generatorPickup;
	life_action_generatorPickup = nil;
};