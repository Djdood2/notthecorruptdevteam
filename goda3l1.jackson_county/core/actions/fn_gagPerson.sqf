/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
private["_unit"];
_unit = cursorTarget;

if((life_action_inUse) || (player getVariable "tied") || (player getVariable "restrained")) exitWith { titleText["You can not do that.","PLAIN"];titleFadeOut 5;}; 
if(isNull _unit) exitWith {}; //Not valid
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
//Broadcast!
if (_unit getVariable "gagged") exitWith { hint "Removing gag..."; _unit setVariable ["gagged",false,true]; _unit setVariable ["tf_voiceVolume", 1, true]; };


life_action_inUse = true;
hint "Gagging Person!";

_randycunt = 3;
_num = 1;
_myposy = getPos player;
while {_randycunt > _num} do {
_randycunt = _randycunt - 1;
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
uiSleep 1;
};
[[player], "life_fnc_gag", _unit, false] spawn life_fnc_MP;
life_action_inUse = false;
