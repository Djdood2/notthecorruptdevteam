/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
private["_lights","_time","_amount","_weight","_newtime"];
_lights = nearestObjects [(getPos player),["Land_Portable_generator_F"], 10];
_amount = 2 + round(random 3);
_weight = [1,1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(playerSide != civilian) exitWith {}; 
if(_weight == 0) exitWith {hint localize "STR_NOTF_InvFull"};
if(life_seeded == 10) exitWith {hint "You already have seeds planted.";[true,"opium seed",1] call life_fnc_alrphandleinventory; };
if(life_shovel == 0) exitWith {hint "You have not cultivated the land.";[true,"opium seed",1] call life_fnc_alrphandleinventory; };
if ((count _lights) == 0) exitWith {hint "You are not close enough to the lights";[true,"opium seed",1] call life_fnc_alrphandleinventory; };
_lights = (_lights select 0);
closeDialog 1;
life_action_inUse = true;
player playAction "Medic";
uiSleep 6;
hintSilent "The opium seed has been planted.";
life_seeded = life_seeded + 1;
uiSleep 4;
["<t size='3.2' color='#04EE4A'>Opium seeds usually take around 130 seconds to grow.</t>"] call life_fnc_alerttwo;
life_action_inUse = false;
if(life_lightdrugfield == 1) then { 
_time = 120 + round(random 25);
};
if(life_lightdrugfield == 2) then { 
_time = 89 + round(random 25);
};
if(life_lightdrugfield == 3) then { 
_time = 65 + round(random 30);
};
_newtime = _time;
_skill = [FFuVsqqZ, "Perk4_13"] call mav_ttm_fnc_hasPerk; 
if (_skill) then {
_newtime = _time/2;
};
uiSleep _newtime;
hint "Your seeds have grown."; 
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
uiSleep 1;
hint format ["You have gathered %1 heroin.",_amount];
[true,"heroinu",_amount] call life_fnc_alrphandleinventory;
uiSleep 3;
hint "You need to re-cultivate the land to grow more drugs."; 
life_seeded = 0;
life_shovel = 0;
