/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
private["_position","_generator","_tent"];
if(playerSide != civilian) exitWith {}; 
_tent = nearestObjects [(getPos player),["CamoNet_INDP_Curator_F"], 15];
if ((count _tent) == 0) exitWith {hint "You cannot do your drugs operation without netting nearby!";[true,"generator",1] call life_fnc_alrphandleinventory; };
_tent = (_tent select 0);
if(vehicle player != player) exitWith {[true,"generator",1] call life_fnc_alrphandleinventory; cutText ["You cannot place generator while in your car!","PLAIN",2];};
if (isOnRoad (getPos player)) exitWith {[true,"generator",1] call life_fnc_alrphandleinventory; hint parseText format["<t color='#FA4F4F'><t size='1.2'>You cannot place the generator on the road, you will get seen!"];};if (count ((getPos player) isFlatEmpty [0,0,0.5,10,0,false,player]) == 0) exitWith {hint "You cannot place the chair here, the surface is too steep.";[true,"chair",1] call life_fnc_alrphandleinventory; };
if (count ((getPos player) isFlatEmpty [0,0,0.5,10,0,false,player]) == 0) exitWith {hint "You cannot place the generator here, the surface is too steep.";[true,"generator",1] call life_fnc_alrphandleinventory; };
if ((player distance (getMarkerPos "city") < 1500)) exitWith {[true,"generator",1] call life_fnc_alrphandleinventory; hint parseText format["<t color='#FA4F4F'><t size='1.2'>You cannot do drugs so close to Lakeside, there is too much of a police presence!"];};
if(life_generatordrugfield == 1) exitWith {[true,"generator",1] call life_fnc_alrphandleinventory; hint parseText format["<t color='#FA4F4F'><t size='1.2'>You already have a generator in active deployment."];};
life_generatordrugfield = 1;
player playAction "Medic";
uiSleep 6;
_pos = position player;	
_generator = "Land_Portable_generator_F" createVehicle ([0,0,0]);
player disablecollisionwith _generator;
_dir = getDir player;
_generator setpos _pos;
_generator setDir _dir;
player setDamage 0; //just incase the generator damages the player..
life_action_generatorPickup = _generator addaction [("<t color=""#FF3300"">" + ("Pack Up Generator") +"</t>"),"core\items\drugfield\fn_packupGenerator.sqf"];