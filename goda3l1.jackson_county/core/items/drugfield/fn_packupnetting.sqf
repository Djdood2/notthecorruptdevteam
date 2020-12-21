/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
private["_netting"];
if(playerSide != civilian) exitWith {}; 
_netting = nearestObjects[getPos player,["CamoNet_INDP_Curator_F"],8] select 0;
if(isNil "_netting") exitWith {};

if(([true,"netting",1] call life_fnc_alrphandleinventory)) then
{
	deleteVehicle _netting;
	titleText["You have packed up some netting","PLAIN"];
	life_nettingdrugfield = 0;
	player removeAction life_action_nettingPickup;
	life_action_nettingPickup = nil;
};