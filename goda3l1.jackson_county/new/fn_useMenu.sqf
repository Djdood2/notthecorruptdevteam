/*
  File: fn_useMenu.sqf
  Desc: Opens and fills the use menu.
  Author: Matthew "ParallelGames"
  Last update: 19/05/16 by Matthew
  All rights reserved it's a breach of copyright law & intellectual property to use this framework without direct written permission from Matthew
*/
createDialog "an_use_dialog";
_items = getArray (missionConfigFile >> "CfgActions" >> "useMenu" >> "items");
_i = 0;

{
	_requirement = getText (missionConfigFile >> "CfgActions" >> "useMenu" >> _x >> "requirement");
	if (call compile _requirement) then {
		_display = getText (missionConfigFile >> "CfgActions" >> "useMenu" >> _x >> "displayName");
		_lbdata = getText (missionConfigFile >> "CfgActions" >> "useMenu" >> _x >> "lbdata");
		lbAdd [1500, _display];
		lbSetData [1500, _i, _lbdata];
		_i = _i + 1;
	};
} foreach _items;
((findDisplay 10) displayCtrl 1600) ctrlSetEventHandler ["ButtonClick", "closeDialog 0; [] call life_fnc_useitemNew"];