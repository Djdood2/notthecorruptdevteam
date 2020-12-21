/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
_pile = _this select 0;
if (localbank animationPhase "d_o_Anim" != 1 ) exitWith {hint "The vault door is closed, you cannot grab right now.";};
if (grabbingbag == 1) exitWith { hint "You are already grabbing a bag!"; };
if (animationState player == "AinvPknlMstpSnonWnonDnon_medic_1") exitwith {hint "You are already grabbing a bag!";};
if (count (attachedobjects player) > 0) exitwith {hint "You are carrying too much.";}; 
if (_pile getVariable "robbed") exitwith {["<t size='3.2' color='#E50000'>There is no money left to loot here. The police need to lock the vault before the bags are filled up again.</t>"] call life_fnc_alerttwo;};
if (player distance _pile > 5) exitWith { hint "You are too far away from the pile!";};
if(vehicle player != player) exitWith {["<t size='3.2' color='#E50000'>You cannot do this while inside of a vehicle!!</t>"] call life_fnc_alerttwo;};
["<t size='3.2' color='#E50000'>Grabbing the money.... this will take a few seconds!</t>"] call life_fnc_alerttwo;
_pile setVariable ["robbed", true, true];
grabbingbag = 1;
cobra_attached = 1;
DisableUserInput true;
player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
uiSleep 3;
player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
if (player distance _pile > 15) exitWith { hint "You are too far away from the pile!"; DisableUserInput false; grabbingbag = 0; cobra_attached = 0;};
if (!alive player) exitWith { DisableUserInput false; grabbingbag = 0; cobra_attached = 0; };
_veh = "Land_Sleeping_bag_folded_F" createvehicle (getpos player);
{_veh disableCollisionWith _x} foreach playableUnits;
_veh setVariable ["pickup",false,true];
_veh attachto [player, [0.1,-0.18,0], "rfemur"];
_veh setVectorDirAndUp [[0.5,0.5,0],[-0.5,0.5,0]];
_veh setdir (getdir player + 180);
_veh setpos (getpos _veh);
grabbingbag = 0;
DisableUserInput false;
//shit loop to monitor when inside of a car or not..
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
				_veh = "Land_Sleeping_bag_folded_F" createvehicle (getpos player);
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