/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
private["_position","_light","_generator"];
if(playerSide != civilian) exitWith {}; 
_generator = nearestObjects [(getPos player),["Land_Portable_generator_F"], 15];
if ((count _generator) == 0) exitWith {hint "You cannot place lights without a generator!"; [true,"light",1] call life_fnc_alrphandleinventory;};
_generator = (_generator select 0);
if(vehicle player != player) exitWith {[true,"light",1] call life_fnc_alrphandleinventory; cutText ["You cannot place light while in your car!","PLAIN",2];};
if (isOnRoad (getPos player)) exitWith {[true,"light",1] call life_fnc_alrphandleinventory; hint parseText format["<t color='#FA4F4F'><t size='1.2'>You cannot place the light on the road, you will get seen!"];};if (count ((getPos player) isFlatEmpty [0,0,0.5,10,0,false,player]) == 0) exitWith {hint "You cannot place the chair here, the surface is too steep.";[true,"chair",1] call life_fnc_alrphandleinventory; };
if (count ((getPos player) isFlatEmpty [0,0,0.5,10,0,false,player]) == 0) exitWith {hint "You cannot place the light here, the surface is too steep.";[true,"light",1] call life_fnc_alrphandleinventory; };
if ((player distance (getMarkerPos "city") < 1500)) exitWith {[true,"light",1] call life_fnc_alrphandleinventory; hint parseText format["<t color='#FA4F4F'><t size='1.2'>You cannot do drugs so close to Lakeside, there is too much of a police presence!"];};
if(life_lightdrugfield == 3) exitWith {[true,"light",1] call life_fnc_alrphandleinventory; hint parseText format["<t color='#FA4F4F'><t size='1.2'>You already have the maximum of 3 lights in active deployment."];};
life_lightdrugfield = life_lightdrugfield + 1;
player playAction "Medic";
uiSleep 6;
_pos = position player;
_light = "Land_PortableLight_double_F" createVehicle ([0,0,0]);
_dir = getDir player;
_light setpos _pos;
_light setDir _dir;
life_action_lightPickup = _light addaction [("<t color=""#FF3300"">" + ("Pack Up Light") +"</t>"),"core\items\drugfield\fn_packupLight.sqf"];


