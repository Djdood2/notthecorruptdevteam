/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
private["_tent"];
if(playerSide != civilian) exitWith {}; 
if(life_shovel == 1) exitWith {hint "You have already cultivated the land recently.";};
_tent = nearestObjects [(getPos player),["CamoNet_INDP_Curator_F"], 10];
if ((count _tent) == 0) exitWith {hint "You are not close enough to the netting!";};
_tent = (_tent select 0);
if(vehicle player != player) exitWith {cutText ["You cannot place the chair while in your car!","PLAIN",2];};
if (isOnRoad (getPos player)) exitWith {hint "You cannot place the chair on a road, people will see you!";};
if (count ((getPos player) isFlatEmpty [0,0,0.5,10,0,false,player]) == 0) exitWith {hint "You cannot place the chair here, the surface is too steep.";};
if ((player distance (getMarkerPos "city") < 1500)) exitWith {hint "You cannot do drugs in the city, its too populated!";};
player playAction "Medic";
uiSleep 6;
_shovel = "Land_ClutterCutter_large_F" createVehicle position player; 
hintSilent "The soil has been cultivated.";
life_shovel = 1;
