/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/
private["_unit"];
//Check if the the cop is tied or restrained
if((player getVariable "restrained")) exitWith {}; 
if((player getVariable "tied")) exitWith {}; 
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "restrained")) exitWith {}; //Check to see if hes already restrained
if(player == _unit) exitWith {}; //Wtf lol
if(!isPlayer _unit) exitWith {}; //Wtf??
_myposy = getPos player;
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
_unit setVariable["restrained",true,true];
[[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;

