/*

*/

private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "blindfolded")) exitWith {};

if((life_action_inUse) || (player getVariable "tied") || (player getVariable "restrained")) exitWith { 
titleText["You can not do that.","PLAIN"];
titleFadeOut 5;
}; 

if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
//Broadcast!

hint "Blindfolding Target, please wait...";
_cme = 1;
_myposy = getPos player;

while {true} do {
life_action_inUse = true;
	if( player distance _myposy > 2.5 ) exitwith { 
			titleText["Target to far away!.","PLAIN"];
	};
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	_cme = _cme + 1;
	if(_cme > 3) exitwith {
		cursorTarget setVariable["blindfolded",true,true];
		[[player], "life_fnc_blindfold", cursorTarget, false] spawn life_fnc_MP;
	};
};
life_action_inUse = false;

