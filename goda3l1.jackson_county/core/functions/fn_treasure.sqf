/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
private ["_time"];
if (collectingt == 1) exitWith { hint "You are already collecting treasure!"; };
collectingt = 1;
_ch = round (random 100);
_randamt = round (random 2);
["<t size='3.2' color='#E50000'>Collecting treasure.... This may take a while!</t>"] call life_fnc_alerttwo;
_time = 1 + round(random 3); 
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	uiSleep _time;
};
        if (_ch > 1 && _ch < 30) exitWith { ["miningextra"] spawn mav_ttm_fnc_addExp;  hint "You found some tokens, a pretty terrible haul it will probably be better to just throw these away than trying to sell them."; [true,"token",_randamt] call life_fnc_alrphandleinventory; collectingt = 0;};
        if (_ch > 30 && _ch < 79) exitWith { ["miningextra"] spawn mav_ttm_fnc_addExp;  hint "You found some bronze coins, not the best haul but they will definatenly sell for something.";[true,"bronzecoins",_randamt] call life_fnc_alrphandleinventory; collectingt = 0;};
        if (_ch > 79 && _ch < 98) exitWith { ["miningextra"] spawn mav_ttm_fnc_addExp;  hint "You found some gold coins, these should sell for a decent amount!"; [true,"goldcoins",_randamt] call life_fnc_alrphandleinventory; collectingt = 0;};
        if (_ch > 98) exitWith { ["miningextramore"] spawn mav_ttm_fnc_addExp;  hint "You found some super rare jewelry, they are so rare that you'll need to find somebody interested in purchasing them, buyers for this kind of item are rare!"; [true,"jewelry",_randamt] call life_fnc_alrphandleinventory; collectingt = 0;};
        