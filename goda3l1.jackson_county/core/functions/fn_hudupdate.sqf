/*
	File: fn_hudUpdate.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Updates the HUD when it needs to.
*/
private["_hud","_health"];
disableSerialization;

_ui = uiNameSpace getVariable ["ALRPHUD",displayNull];
if(isNull _ui) then {[] call life_fnc_hudSetup;};



_playerstamina = getFatigue player;
_playerstamina = round(_playerstamina * 100);

_playerhunger = life_hunger;
_playerthirst = life_thirst;
_dam = damage player;
_playerhealth = damage player;
_playerhealth = round(_playerhealth * 100);
_playerhealth = round(100 - _playerhealth);

_amountmag = {_x == (currentmagazine player)} count magazines player;
_ammoLeft = player ammo (currentweapon player);

_magsleft = "XXX";
_side = "load u fuck";

switch (playerSide) do {
    case west: {
        _side = "Police Officer";
    };
    case civilian: {
        _side = "Civilian";
    };
    case independent: {
        _side = "Medic";
    };
};


_playernametext = parseText format ["<t font='PuristaSemibold' size='1' align='center'>%1</t>", name player];
_plrside = parseText format ["<t font='PuristaSemibold' size='0.9' align='center'>%1</t>", _side];
_ammohudtext = parseText format ["<t font='PuristaSemibold' align='left' size='1.6'>%1</t>", _ammoLeft];
_maghudtext = parseText format ["<t font='PuristaSemibold' size='1'>%1</t>", _amountmag];

_plrhealth = parseText format ["<t font='PuristaSemibold' size='0.9'>%1</t>", _playerhealth];
_plrhunger= parseText format ["<t font='PuristaSemibold' size='0.9'>%1</t>", Life_hunger];
_plrthirst = parseText format ["<t font='PuristaSemibold' size='0.9'>%1</t>", Life_thirst];
_plrstamina = parseText format ["<t font='PuristaSemibold' size='0.9'>%1</t>", _playerstamina];


((uiNamespace getVariable "ALRPHUD") displayCtrl 1100) ctrlSetStructuredText _playernametext;
((uiNamespace getVariable "ALRPHUD") displayCtrl 1101) ctrlSetStructuredText _plrside;
((uiNamespace getVariable "ALRPHUD") displayCtrl 1103) ctrlSetStructuredText _ammohudtext;
((uiNamespace getVariable "ALRPHUD") displayCtrl 1104) ctrlSetStructuredText _maghudtext;


((uiNamespace getVariable "ALRPHUD") displayCtrl 666) ctrlSetStructuredText _plrhealth;
((uiNamespace getVariable "ALRPHUD") displayCtrl 6666) ctrlSetStructuredText _plrstamina;
((uiNamespace getVariable "ALRPHUD") displayCtrl 66666) ctrlSetStructuredText _plrthirst;
((uiNamespace getVariable "ALRPHUD") displayCtrl 666666) ctrlSetStructuredText _plrhunger;




