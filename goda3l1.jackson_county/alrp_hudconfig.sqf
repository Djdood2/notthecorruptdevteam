disableSerialization;
_ui = uiNameSpace getVariable "ALRPHUD";

while {true} do {
	uiSleep 0.01;

	_playerstamina = getFatigue player;
	_playerstamina = round(_playerstamina * 100);

	_name = name player;

	_playerhunger = life_hunger;
	_playerthirst = life_thirst;
	_dam = damage player;
	_playerhealth = damage player;
	_playerhealth = round(_playerhealth * 100);
	_playerhealth = round(100 - _playerhealth);

	_ammotext = parseText format[""];
	_amountmagtext = parseText format[""];
	_hudinfo = weaponState player; 
	_curweapon = _hudinfo select 0;
	_curmagazine = _hudinfo select 4;

	_selectmode = _ui displayCtrl 999999;
	_gunmode = currentWeaponMode player;
	
	_zeroing = format ["%1 m", currentZeroing player];
	if (vehicle player != player || currentWeapon player == "") then {
		_gunmode = "";
		_zeroing = "";
	};

	_magazineClass = currentMagazine player;
	_maxammo = getNumber(configFile >> "CfgMagazines" >> _magazineClass >> "count") ;
	_prcentammo = 0;
	if (_curmagazine == 0) then {
		_prcentammo = 0;
	} 
	else 
	{
		_prcentammo = (_curmagazine / _maxammo) * 100;
	};

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


	_playernametext = parseText format ["<t font='PuristaSemibold' size='1' align='center'>%1</t>", _name];
	_plrside = parseText format ["<t font='PuristaSemibold' size='0.9' align='center'>%1</t>", _side];
	_ammohudtext = parseText format ["<t font='PuristaSemibold' align='left' size='1.6'>%1</t>", _ammoLeft];
	_maghudtext = parseText format ["<t font='PuristaSemibold' size='1'>%1</t>", _amountmag];

	_plrhealth = parseText format ["<t font='PuristaSemibold' size='0.9'>%1</t>", _playerhealth];
	_plrhunger= parseText format ["<t font='PuristaSemibold' size='0.9'>%1</t>", Life_hunger];
	_plrthirst = parseText format ["<t font='PuristaSemibold' size='0.9'>%1</t>", Life_thirst];
	_plrstamina = parseText format ["<t font='PuristaSemibold' size='0.9'>%1</t>", _playerstamina];

	_curZero = parseText format ["<t font='PuristaSemibold' size='0.7'>%1</t>", _zeroing];
	_selectmode = parseText format ["<t font='PuristaSemibold' size='0.7'>%1</t>", _gunmode];

	((uiNamespace getVariable "ALRPHUD") displayCtrl 1100) ctrlSetStructuredText _playernametext;
	((uiNamespace getVariable "ALRPHUD") displayCtrl 1101) ctrlSetStructuredText _plrside;
	((uiNamespace getVariable "ALRPHUD") displayCtrl 1103) ctrlSetStructuredText _ammohudtext;
	((uiNamespace getVariable "ALRPHUD") displayCtrl 1104) ctrlSetStructuredText _maghudtext;


	((uiNamespace getVariable "ALRPHUD") displayCtrl 666) ctrlSetStructuredText _plrhealth;
	((uiNamespace getVariable "ALRPHUD") displayCtrl 6666) ctrlSetStructuredText _plrstamina;
	((uiNamespace getVariable "ALRPHUD") displayCtrl 66666) ctrlSetStructuredText _plrthirst;
	((uiNamespace getVariable "ALRPHUD") displayCtrl 666666) ctrlSetStructuredText _plrhunger;
	((uiNamespace getVariable "ALRPHUD") displayCtrl 999999) ctrlSetStructuredText _selectmode;
	((uiNamespace getVariable "ALRPHUD") displayCtrl 999998) ctrlSetStructuredText _curZero;
};