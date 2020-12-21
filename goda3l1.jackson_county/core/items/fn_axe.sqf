/*
	File: fn_pickaxeUse.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for pickaxe in mining.
*/
if (life_nospampls == 1) exitWith { hint "Slow down, you cannot do that just yet!"; closeDialog 0;}; 
closeDialog 0;
private["_mine","_itemWeight","_diff","_itemName","_val"];
switch (true) do
{
case (player distance (getMarkerPos "forestry") < 50) : {_mine = "log"; _val = 2;};
default {_mine = "";};
};
if(_mine == "") exitWith {cutText ["You are not close enough to the forestry zone.","PLAIN",2];};
if (player getVariable ["surrender", false]) exitWith { hint "You cannot do that while surrendering!";};
if (Life_WoodLogger == 0) exitWith { ["<t size='3.2' color='#E50000'>You need to be a registered wood logger to collect logs. Sign up at the job centre!</t>"] call life_fnc_alert;};
if(vehicle player != player) exitWith {cutText ["You cannot collect logs inside a vehicle!","PLAIN",2];};
 
_diff = [_mine,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {cutText ["Your inventory is full!","PLAIN",2];};
life_nospampls = 1; //just in case 
life_action_inUse = true;
 
_time = 2;
 
for "_i" from 0 to 2 do
{
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
uiSleep _time;
};
 
 
if(([true,_mine,_diff] call life_fnc_alrphandleinventory)) then
{
	_itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	cutText ["You have collected 2 logs succesfully.","PLAIN",2];
	_chance = round (random 250); 
	if (_chance < 100) then { 
		if (_chance < 30) then {["miningbig"] spawn mav_ttm_fnc_addExp; 
		} else { 
			["miningextra"] spawn mav_ttm_fnc_addExp; 
			}; 
		} else { 
			["mining"] spawn mav_ttm_fnc_addExp; 
			};
};

life_action_inUse = false;
life_nospampls = 0;