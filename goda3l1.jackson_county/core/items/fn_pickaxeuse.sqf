/*
	File: fn_pickaxeUse.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for pickaxe in mining.
*/
if (life_nospampls == 1) exitWith { hint "Slow down, you cannot do that just yet!"; closeDialog 0;}; 
closeDialog 0;
private["_mine","_itemWeight","_diff","_itemName","_val"];
_diamond = [FFuVsqqZ, "Perk7_3"] call mav_ttm_fnc_hasPerk; 
_uranium = [FFuVsqqZ, "Perk7_4"] call mav_ttm_fnc_hasPerk; 
_sand = [FFuVsqqZ, "Perk7_5"] call mav_ttm_fnc_hasPerk; 
switch (true) do
{
	case (player distance (getMarkerPos "diamond_1") < 50): {_mine = "diamond"; if (_diamond) then { _val = 4;} else { _val = 2; };};
	case (player distance (getMarkerPos "uranium_1") < 100): {_mine = "uranium"; if (_uranium) then { _val = 2;} else { _val = 1; };};
	case (player distance (getMarkerPos "sandmine") < 50): {_mine = "sand"; if (_sand) then { _val = 5;} else { _val = 2; };};
	default {_mine = "";};
};
//Mine check
if(_mine == "") exitWith {hint localize "STR_ISTR_Pick_NotNear"};
if (player getVariable ["surrender", false]) exitWith { hint "You cannot do that while surrendering!";};
if (Life_Miner == 0) exitWith { 
	["<t size='3.2' color='#E50000'>You need to be a registered miner to mine here. Sign up at the job centre!</t>"] call life_fnc_alert;
	};

if(vehicle player != player) exitWith {hint localize "STR_ISTR_Pick_MineVeh";};
_diff = [_mine,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
life_nospampls = 1; //just in case 

_skill1 = [FFuVsqqZ, "Perk7_1"] call mav_ttm_fnc_hasPerk; 
_skill2 = [FFuVsqqZ, "Perk7_1_1"] call mav_ttm_fnc_hasPerk; 
_morexp = [FFuVsqqZ, "Perk7_2"] call mav_ttm_fnc_hasPerk;
_amt = 4;
_sleep = 0.5;
_endsleep = 1;
if (_skill1) then {_amt = 3.6; _sleep = 0.45;_endsleep = 0.9;};
if (_skill2) then {_amt = 3.4;_sleep = 0.425;_endsleep = 0.85;};
life_action_inUse = true;
for "_i" from 0 to _amt do {
    player playMoveNow "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
    waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
    uiSleep _sleep;
};

if(([true,_mine,_diff] call life_fnc_alrphandleinventory)) then
{
	_itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_ISTR_Pick_Success",_itemName,_diff],"PLAIN"];
uiSleep 1;
_chance = round (random 250); 
//WOW WHAT A NICE MEME
	if (_chance < 100) then { 
		if (_chance < 15) then {
			if (_morexp) then {
				["miningbigmore"] spawn mav_ttm_fnc_addExp; 
			} else {
				["miningbig"] spawn mav_ttm_fnc_addExp; 
			};
		} else { 
			if (_morexp) then {
				["miningextramore"] spawn mav_ttm_fnc_addExp; 
			} else {
				["miningextra"] spawn mav_ttm_fnc_addExp; 
			};
		}; 
		} else { 
			if (_morexp) then {
				["miningmore"] spawn mav_ttm_fnc_addExp; 
			} else {
				["mining"] spawn mav_ttm_fnc_addExp; 
			};	
			};
		};
uiSleep _endsleep;
life_action_inUse = false;
life_nospampls = 0;