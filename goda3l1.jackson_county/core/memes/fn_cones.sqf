/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (cobra_deployingcurrently == 1) exitWith {
	 ["<t size='3.2' color='#E50000'>You are already deploying a cone, wait until you're finished!</t>"] call life_fnc_alerttwo;
	 };
if(vehicle player != player) exitWith {
["<t size='3.2' color='#E50000'>You cannot do this while inside of a vehicle!!</t>"] call life_fnc_alerttwo;
};
if((player getVariable["restrained",false])) exitWith {};
if (playerside == civilian) exitWith {hint "da fuck";};
cobra_deployingcurrently = 1;
cobra_cones = cobra_cones + 1;
_pos = position player;
_jamesisabaldfuckingcuntwholovestomeme = "RoadCone_F" createVehicle ([0,0,0]);
_dir = getDir player;
_jamesisabaldfuckingcuntwholovestomeme setpos _pos;
_jamesisabaldfuckingcuntwholovestomeme setDir _dir;
cobra_deployingcurrently = 0;
["<t size='3.2' color='#04EE4A'>Cone deployed!</t>"] call life_fnc_alerttwo;