#include <macro.h>
/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
//Pre-Checks
if(playerSide != west) exitWith {}; //wtf
if(__GETC__(life_coplevel) < 3) exitWith { hint "You are not a high enough rank to use the fingerprint scanner!"; };
//Stops people doing shit when they're restrained
if((player getVariable "restrained")) exitWith {}; 
if((player getVariable "tied")) exitWith {};
_unit = cursorTarget;
if(isNull _unit) exitWith {};
if(!(_unit getVariable "restrained")) exitWith {
["<t size='3.2' color='#E50000'>You cannot use the fingerprint scanner on someone if they're not restrained!</t>"] call life_fnc_alerttwo;
 closeDialog 1;}; 
closeDialog 0;
_name = _unit getVariable["realname", true];
_side = side _unit;
hint "Scanning fingerprint.... Please wait.";
uiSleep 3;
switch (_side) do {
case civilian: { hint format["This fingerprint is comes back to %1 who is not currently on duty as a police officer.", _name]; };
case west: { hint format["This fingerprint comes back to %1 who is currently on duty as a police officer.", _name]; };
case independent: { hint format["This fingerprint comes back to %1 who is currently on duty as a EMS medic.", _name]; };
};








