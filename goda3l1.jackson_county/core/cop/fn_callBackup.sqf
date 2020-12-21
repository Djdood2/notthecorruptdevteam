/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
//Pre-Checks
if(playerSide != west) exitWith {}; 
//Stops people pressing the key binding while being took hostage.
if((player getVariable "restrained")) exitWith {}; 
if((player getVariable "tied")) exitWith {};
if (cobra_panic == 1) exitWith {};
life_action_inUse = true;
cobra_panic = 1;
_dicks = position player; 
[_dicks] remoteExec ["life_fnc_panicmarkers",west];
closeDialog 0;	
[[1,format["DISPATCH: PANIC BUTTON USED BY %1",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[0,format["DISPATCH: PANIC BUTTON USED BY %1",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
life_action_inUse = false;
uiSleep 5;
cobra_panic = 0;
