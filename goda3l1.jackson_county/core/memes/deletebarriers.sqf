/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (cobra_deployingcurrently == 1) exitWith {
["<t size='3.2' color='#E50000'>You are deploying a cone/barrier, wait until you're finished!</t>"] call life_fnc_alerttwo;
};
if(vehicle player != player) exitWith {
["<t size='3.2' color='#E50000'>You cannot do this while inside of a vehicle!!</t>"] call life_fnc_alerttwo;
};
_list = position player nearObjects ["plp_up_WoodBarrierLongPolice",1.5];
_chck = nearestObjects[getPos player,["plp_up_WoodBarrierLongPolice"],1.5] select 0;
_barrier = (_list select 0);
if(isNil "_chck") then { //No barrier
} else {
deleteVehicle _barrier;
["<t size='3.2' color='#04EE4A'>Deleted barrier!</t>"] call life_fnc_alerttwo;
cobra_barriers = cobra_barriers - 1;
};

_list = position player nearObjects ["RoadCone_F",1.5];
_chck = nearestObjects[getPos player,["RoadCone_F"],1.5] select 0;
_cone = (_list select 0);
if(isNil "_chck") then { //No cone
} else {
deleteVehicle _cone;
["<t size='3.2' color='#04EE4A'>Deleted cone!</t>"] call life_fnc_alerttwo;
cobra_cones = cobra_cones - 1;
};




