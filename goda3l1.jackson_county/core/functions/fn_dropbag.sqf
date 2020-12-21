/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (cobra_attached == 0) exitWith {};
if (count attachedObjects player == 0) exitWith {};
if (life_nospampls == 1) exitWith { hint "You cannot do that right now, anti spam protection is active!"; };
if(vehicle player != player) exitWith {["<t size='3.2' color='#E50000'>You cannot do this while inside of a vehicle!!</t>"] call life_fnc_alerttwo;};
{
  detach _x;
} forEach attachedObjects player;
cobra_attached = 0;