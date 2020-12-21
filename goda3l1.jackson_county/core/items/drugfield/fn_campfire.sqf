/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
private["_position","_campfire"];
if(playerSide != civilian) exitWith {}; 
if(vehicle player != player) exitWith {[true,"campfire",1] call life_fnc_alrphandleinventory; cutText ["You cannot place campfire while in your car!","PLAIN",2];};
if (isOnRoad (getPos player)) exitWith {[true,"campfire",1] call life_fnc_alrphandleinventory; hint parseText format["<t color='#FA4F4F'><t size='1.2'>You cannot place the campfire on the road, you will get seen!"];};
if (count ((getPos player) isFlatEmpty [0,0,0.5,10,0,false,player]) == 0) exitWith {hint "You cannot place the campfire here, the surface is too steep.";[true,"campfire",1] call life_fnc_alrphandleinventory; };
if ((player distance (getMarkerPos "city") < 1500)) exitWith {[true,"campfire",1] call life_fnc_alrphandleinventory; hint parseText format["<t color='#FA4F4F'><t size='1.2'>You cannot do drugs so close to Lakeside, there is too much of a police presence!"];};
if(life_campfiredrugfield == 1) exitWith {[true,"campfire",1] call life_fnc_alrphandleinventory; hint parseText format["<t color='#FA4F4F'><t size='1.2'>You already have a campfire in active deployment."];};
life_campfiredrugfield = 1;
player playAction "Medic";
uiSleep 6;
_pos = position player;
_campfire = "Campfire_burning_F" createVehicle ([0,0,0]);
_dir = getDir player;
_campfire setpos _pos;
_campfire setDir _dir;
life_action_campFirePickup = _campfire addaction [("<t color=""#FF3300"">" + ("Pack Up Campfire") +"</t>"),"core\items\drugfield\fn_packupCampfire.sqf"];
