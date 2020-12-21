/* 
  Author: Cobra @ArmaLifeRoleplay 
  www.armaliferp.co.uk 
  **ONLY TO BE USED BY ALRP** 
*/ 
_pile = cursorObject; 
if (life_nospampls == 1) exitWith { hint "You cannot do that right now, anti spam protection is active!"; }; 
if (isNull _pile) exitWith {hint "You need to look directly at the bag!";}; 
if (player distance _pile > 5) exitWith { hint "You are too far away from the bag!";}; 
if (cobra_attached == 1) exitWith { hint "You are already carrying a bag!"; }; 
if(vehicle player != player) exitWith {["<t size='3.2' color='#E50000'>You cannot do this while inside of a vehicle!!</t>"] call life_fnc_alerttwo;}; 
life_nospampls = 1; 
if (typeOf _pile != "Land_Sleeping_bag_blue_folded_F") exitWith {hint "You need to look directly at the bag!"; life_nospampls = 0;}; 
deleteVehicle _pile; 
["<t size='3.2' color='#E50000'>Grabbing the money.... this will take a few seconds!</t>"] call life_fnc_alerttwo; 
cobra_attached = 1; 
DisableUserInput true; 
player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1"; 
uiSleep 3; 
player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1"; 
if (!alive player) exitWith { DisableUserInput false; cobra_attached = 0; }; 
_veh = "Land_Sleeping_bag_blue_folded_F" createvehicle (getpos player); 
{_veh disableCollisionWith _x} foreach playableUnits; 
_veh setVariable ["pickup",false,true]; 
_veh attachto [player, [0.1,-0.18,0], "rfemur"]; 
_veh setVectorDirAndUp [[0.5,0.5,0],[-0.5,0.5,0]]; 
life_nospampls = 0; 
DisableUserInput false; 
[_veh] spawn { 
  _veh = _this select 0; 
  if (cobra_attached == 0) exitWith {}; //bag dropped kill the loop 
  while {cobra_attached == 1} do { 
    if(vehicle player != player) then { 
      _coolbisanigga = count attachedObjects player; 
      if (_coolbisanigga == 1) then { 
        detach _veh; 
        deleteVehicle _veh; 
      }; 
    } else { 
      _check = count attachedObjects player; 
      if (_check == 0) then { 
        _veh = "Land_Sleeping_bag_blue_folded_F" createvehicle (getpos player); 
        {_veh disableCollisionWith _x} foreach playableUnits; 
        _veh setVariable ["pickup",false,true]; 
        _veh attachto [player, [0.1,-0.18,0], "rfemur"]; 
        _veh setVectorDirAndUp [[0.5,0.5,0],[-0.5,0.5,0]]; 
        _veh setdir (getdir player + 180); 
        _veh setpos (getpos _veh); 
        ["<t size='3.2' color='#04EE4A'>Heres your bag back!</t>"] call life_fnc_alerttwo; 
      }; 
    }; 
    uiSleep 0.25;     
  }; 
}; 
