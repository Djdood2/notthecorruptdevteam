/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
private["_campfire"];
if(playerSide != civilian) exitWith {}; 
_campfire = nearestObjects[getPos player,["Campfire_burning_F"],8] select 0;
if(isNil "_campfire") exitWith {};

if(([true,"campfire",1] call life_fnc_alrphandleinventory)) then
{
	deleteVehicle _campfire;
	titleText["You have packed up a campfire!","PLAIN"];
	life_campfiredrugfield = 0;
	player removeAction life_action_campfirePickup;
	life_action_campfirePickup = nil;
};