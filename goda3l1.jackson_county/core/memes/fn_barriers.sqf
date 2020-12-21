/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (cobra_deployingcurrently == 1) exitWith {
["<t size='3.2' color='#E50000'>You are already deploying a barrier, wait until you're finished!</t>"] call life_fnc_alerttwo;
 };
if (cobra_barriers == 5) exitWith { 
["<t size='3.2' color='#E50000'>Maximum number of barriers deployed!</t>"] call life_fnc_alerttwo;
 };
if(vehicle player != player) exitWith {
["<t size='3.2' color='#E50000'>You cannot do this while inside of a vehicle!!</t>"] call life_fnc_alerttwo;
};
if((player getVariable["restrained",false])) exitWith {};
if (playerside == civilian) exitWith {hint "da fuck";};
cobra_deployingcurrently = 1;
cobra_barriers = cobra_barriers + 1;
_pos = position player;
_jamesisabaldfuckingcuntwholovestomeme = "plp_up_WoodBarrierLongPolice" createVehicle ([0,0,0]);
_dir = getDir player;
_jamesisabaldfuckingcuntwholovestomeme setpos _pos;
_jamesisabaldfuckingcuntwholovestomeme setDir _dir;
_jamesisabaldfuckingcuntwholovestomeme allowDamage false;
_jamesisabaldfuckingcuntwholovestomeme enableSimulation false;
cobra_deployingcurrently = 0;
["<t size='3.2' color='#04EE4A'>Barrier deployed!</t>"] call life_fnc_alerttwo;
