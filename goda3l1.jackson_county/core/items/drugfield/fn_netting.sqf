/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
private["_netting"];
if(playerSide != civilian) exitWith {}; 
if(vehicle player != player) exitWith {[true,"netting",1] call life_fnc_alrphandleinventory; cutText ["You cannot place netting while in your car!","PLAIN",2];};
if (isOnRoad (getPos player)) exitWith {[true,"netting",1] call life_fnc_alrphandleinventory; hint parseText format["<t color='#FA4F4F'><t size='1.2'>You cannot place the netting on the road, you will get seen!"];};if (count ((getPos player) isFlatEmpty [0,0,0.5,10,0,false,player]) == 0) exitWith {hint "You cannot place the netting here, the surface is too steep.";[true,"netting",1] call life_fnc_alrphandleinventory; };
if (surfaceIsWater (getPos player)) exitWith {hint "You cannot place netting on water!";};
if ((player distance (getMarkerPos "city") < 1500) OR (player distance (getMarkerPos "civ_spawn_4") < 300) OR (player distance (getMarkerPos "civ_spawn_2") < 300)) exitWith 
{
	hint parseText format["<t color='#FA4F4F'><t size='1.2'>It's too dangerous to grow drugs so close to popular areas."];
	[true,"netting",1] call life_fnc_alrphandleinventory;
};
if (player distance (getMarkerPos "weedproces") < 200) exitWith { hint "You cannot do that here, you are too close to the processing factory!"; 
[true,"netting",1] call life_fnc_alrphandleinventory;
};
if (player distance (getMarkerPos "heroinproces") < 200) exitWith { hint "You cannot do that here, you are too close to the processing factory!"; 
[true,"netting",1] call life_fnc_alrphandleinventory;
};
if(life_nettingdrugfield == 1) exitWith {[true,"netting",1] call life_fnc_alrphandleinventory; hint parseText format["<t color='#FA4F4F'><t size='1.2'>You already have some netting in active deployment."];};
life_nettingdrugfield = 1;
player playAction "Medic";
uiSleep 6;
_pos = position player;
_netting = "CamoNet_INDP_Curator_F" createVehicle ([0,0,0]);
_dir = getDir player;
_netting setpos _pos;
_netting setDir _dir;
life_action_nettingPickup = _netting addaction [("<t color=""#FF3300"">" + ("Pack Up Netting") +"</t>"),"core\items\drugfield\fn_packupNetting.sqf"];