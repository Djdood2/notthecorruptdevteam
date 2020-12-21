/* 
  Author: Cobra @ArmaLifeRoleplay 
  www.armaliferp.co.uk 
  **ONLY TO BE USED BY ALRP** 
*/ 
private["_vehicle", "_veh"]; 
if (player distance getMarkerPos "lakesidelot" < 100) then { 
_vehicle = nearestObjects[ImpoundSpawn, ["Car", "Truck", "Motorcycle"], 7]; 
};
if (player distance getMarkerPos "aviemorelot" < 100) then {
_vehicle = nearestObjects[ImpoundSpawn_1, ["Car", "Truck", "Motorcycle"], 7]; 
}; 
if (player distance getMarkerPos "losdiabloslot" < 100) then {
_vehicle = nearestObjects[ImpoundSpawn_2, ["Car", "Truck", "Motorcycle"], 7]; 
}; 

_veh = _vehicle select 0; 
 
if (life_nospampls == 1) exitWith { hint "Slow down, you cannot do that just yet!"; }; 
if (Life_TowTruck == 0) exitWith { 
    ["<t size='3.2' color='#04EE4A'>You are not a tow truck driver!</t>"] call life_fnc_alert; 
}; 
 
if (count _vehicle == 0) exitWith { 
    ["<t size='3.2' color='#04EE4A'>There are no vehicles nearby to impound.</t>"] call life_fnc_alert; 
}; 
 
if (count _vehicle > 1) exitWith { 
    ["<t size='3.2' color='#04EE4A'>Too many vehicles nearby! Ensure there is only one vehicle in the impound zone.</t>"] call life_fnc_alert; 
}; 
life_nospampls = 1; //just in case 
[ 
    [_veh, true, player], "TON_fnc_vehicleStore", false, false 
] spawn life_fnc_MP; 
if (_veh in life_vehicles) then { 
    ["<t size='3.2' color='#04EE4A'>You have succesfully impounded your own vehicle so you did not get paid.</t>"] call life_fnc_alert;  
} else { 
    _amt = 400 + round random(500); 
    ["<t size='3.2' color='#04EE4A'>Vehicle impounded. You have been issued a payment for cleaning the streets.</t>"] call life_fnc_alert; 
    b2UuDWVw9NeDh45d = b2UuDWVw9NeDh45d + _amt; 
    ["impound"] spawn mav_ttm_fnc_addExp;;
}; 
 
uiSleep 10; //wait just incase the server is running slow 
life_nospampls = 0;