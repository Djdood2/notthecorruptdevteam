/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
private["_light"];
if(playerSide != civilian) exitWith {}; 
_light = nearestObjects[getPos player,["Land_PortableLight_double_F"],8] select 0;
if(isNil "_light") exitWith {};

if(([true,"light",1] call life_fnc_alrphandleinventory)) then
{
	deleteVehicle _light;
	titleText["You have packed up a light!","PLAIN"];
	life_lightdrugfield = life_lightdrugfield - 1;
	player removeAction life_action_lightPickup;
	life_action_lightPickup = nil;
};