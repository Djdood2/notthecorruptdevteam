/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (playerside != west) exitWith {};
//Check for dirty money
if (typeOf _x != "Land_Sleeping_bag_brown_folded_F") exitWith { hint "You do not have any dirty money to trade in!"; };
DisableUserInput true;
cobra_attached = 0;
//Delete attached items
detach _x;
deletevehicle _x;
_money = 10000;
//Reward and display output
aQ3CGZRg3W9tGxzs = aQ3CGZRg3W9tGxzs + _money;
//Sync
[] spawn SOCK_fnc_syncData;
uiSleep 1;
DisableUserInput false;