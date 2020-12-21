fnc_arrestmenu = {
	createdialog "a3l_jail_menu";
	private["_unit","_id"];
	_unit = cursorTarget;
	personyouwanjail = _unit;
	if(isNull _unit) exitWith {};
	if(isNil "_unit") exitwith {}; 
	if(!(_unit isKindOf "Man")) exitWith {}; 
	if(!isPlayer _unit) exitWith {};
	if((_unit getVariable "life_is_arrested")) exitWith {["<t size='3.2' color='#E50000'>That person is already arrested!!</t>"] call life_fnc_alerttwo; closeDialog 1;};
	if(!(_unit getVariable "restrained")) exitWith {["<t size='3.2' color='#E50000'>That person is not restrained!</t>"] call life_fnc_alerttwo; closeDialog 1;}; 
	if(!((side _unit) in [civilian,independent])) exitWith {}; 
	if(isNull _unit) exitWith {}; 

	_display = findDisplay 5546;
	_nameofperson = _display displayCtrl 2200;
	_nametext = format ["%1",name _unit];
	_nameofperson ctrlSetText _nametext;
};

fnc_arrestbutton = {
	_display = findDisplay 5546;
	_nameofperson = _display displayCtrl 2200;
	_timeinminute = _display displayCtrl 2201;
	_reasonofjail = _display displayCtrl 2202;
	_playername = ctrlText _nameofperson;
	_jailtime = ctrlText _timeinminute;
	_reason = ctrlText _reasonofjail;
	if (koil_antispam == 1) exitWith { hint "Slow down!"; DisableUserInput true; uiSleep 3; disableUserInput false; closeDialog 1;};
	if(isNull personyouwanjail) exitWith {};
	koil_antispam = 1;
	detach personyouwanjail;
	closeDialog 1;
	[[personyouwanjail,false,_jailtime,_reason],"fnc_sendtojail",personyouwanjail,false] spawn life_fnc_MP;
	[[personyouwanjail,player,false],"life_fnc_wantedBounty",false,false] spawn life_fnc_MP;
	["sendtojail"] spawn mav_ttm_fnc_addExp;;
	aQ3CGZRg3W9tGxzs = aQ3CGZRg3W9tGxzs + 1500;
	closeDialog 1;
	uiSleep 3;
	koil_antispam = 0;
};

fnc_sendtojail = {
	private["_bad","_unit"];
	_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
	hint format["%1", _unit];
	if(isNull _unit) exitWith {};
	if(_unit != player) exitWith {};
	if(life_is_arrested) exitWith {};
	_bad = [_this,1,false,[false]] call BIS_fnc_param;
	life_arrestMinutes = _this select 2;
	life_arrestReason = _this select 3;

	A3L_Fnc_OldUniform = Uniform player;
	removeHeadgear player;
	removeBackpack player;
	removeUniform player;
	removeVest player;
	removeGoggles player;
	player addUniform "Inmate_Uni1";

	hint localize "STR_Jail_LicenseNOTF";
	[1] call life_fnc_removeLicenses;


	if(_bad) then
	{
		waitUntil {alive player};
		uiSleep 1;
	};
	if(life_inv_cannabis > 0) then {[false,"cannabis",life_inv_cannabis] call life_fnc_alrphandleinventory;};
	if(life_inv_marijuana > 0) then {[false,"marijuana",life_inv_marijuana] call life_fnc_alrphandleinventory;};
	if(life_inv_keycard > 0) then {[false,"keycard",life_inv_keycard] call life_fnc_alrphandleinventory;};
	[] spawn life_fnc_leavejob;
	aQ3CGZRg3W9tGxzs = 0;
	[[player,_bad,life_arrestMinutes,life_arrestReason],"svr_sendtojail",false,false] spawn life_fnc_MP;
	[5] call SOCK_fnc_updatePartial;
};

fnc_jailsetup = {
	_minutes = parseNumber life_arrestMinutes;
	_hours = floor (_minutes/60);
	_minutes = _minutes % 60;
	player setVariable["restrained",false,true];
	player setVariable["Escorting",false,true];
	player setVariable["transporting",false,true];
	life_is_arrested = true;
	player setVariable["life_is_arrested",true,true];
	removeAllWeapons player;
	{player removeMagazine _x} foreach (magazines player);
	_marker = JailSpawn; 
	player setPos (getPos _marker);
	uiSleep 1;
	player setDamage 0;
	uiSleep 2;
	player forceWalk true;
	player enableFatigue true;
	player setFatigue 1;
	
	("A3LJAILTIME" call BIS_fnc_rscLayer) cutRsc ["a3l_jail_timer","PLAIN"]; //show
	[] spawn
	{
		while {(player distance (getMarkerPos "jail_marker")) < 60} do
		{
			uiSleep 120;
			if ((player distance (getMarkerPos "jail_marker")) < 60) then {
			("A3LJAILTIME" call BIS_fnc_rscLayer) cutText ["","PLAIN"]; //remove
			("A3LJAILTIME" call BIS_fnc_rscLayer) cutRsc ["a3l_jail_timer","PLAIN"]; //show
			_sexytext = parseText format["<t font='PuristaBold' color='#B20000' align='center' size='1.5'>%1</t>",life_arrestReason];
			((uiNamespace getVariable "a3ljailtimer") displayCtrl 1101) ctrlSetStructuredText _sexytext;
			};
		};
	};
		
	_sexytext = parseText format["<t font='PuristaBold' color='#B20000' align='center' size='1.5'>%1</t>",life_arrestReason];
	((uiNamespace getVariable "a3ljailtimer") displayCtrl 1101) ctrlSetStructuredText _sexytext;
	
	[0,_minutes,_hours,0] spawn fnc_jailtimer;
};




fnc_jailtimer = {
	uiSleep 1;
	_release = 0;
	_second = _this select 0;
	_minute = _this select 1;
	_hour = _this select 2;
	_dtbsave = _this select 3;
	if (_second > 0) then {
		_second = _second - 1;
	} else { if (_minute > 0) then {
		_minute = _minute - 1;
		_second = 60;
	} else { if (_hour > 0) then {
		_hour = _hour - 1;
		_minute = 59;
		_second = 60;
	} else {};};};
	seconds = _second;
	minute = _minute;
	hour = _hour;

	_hrtext = "";
	_hourtext = "";
	_mntext = "";
	_minutetext = "";
	_sectext = "";
	_secondtext = "seconds";

	if (_hour == 0) then {_hrtext = "";} else {
	if (_hour == 1) then {_hourtext = "hour"} else {_hourtext = "hours"};
		_hrtext = parseText format["%1 %2, ",_hour,_hourtext];
	};
	if ((_hour == 0) && (_minute == 0)) then { _mntext = ""; } else {
	if (_minute == 1) then {_minutetext = "minute"} else {_minutetext = "minutes"};
		_mntext = parseText format["%1 %2 and ",_minute,_minutetext];
	};

	_dtbsave = _dtbsave + 1;
	if (_dtbsave == 300) then {  [[_hour,_minute,player],"svr_jailtodb",false,false] spawn life_fnc_MP; _dtbsave = 0; };
	_sectext = parseText format["%1 %2",_second,_secondtext];

	_sexytext = parseText format["<t font='PuristaBold' color='#B20000' align='center' size='1.5'>%1%2%3</t>",_hrtext,_mntext,_sectext];
	((uiNamespace getVariable "a3ljailtimer") displayCtrl 1100) ctrlSetStructuredText _sexytext;

	if (((_hour < 1) && (_minute < 1)&& (_second < 1)) OR ((player distance (getMarkerPos "jail_marker")) > 600)) then {
		if ((_hour < 1) && (_minute < 1)&& (_second < 1)) then {
			_release = 1;
			[_release] call fnc_releaseprison;
		} else {
			_release = 2;
			[_release] call fnc_releaseprison;
		};
	} else { [_second,_minute,_hour,_dtbsave] spawn fnc_jailtimer;  };
};

fnc_releaseprison = {
	_release = _this select 0;
	[[player],"svr_releaseprison",false,false] spawn life_fnc_MP;
	if (_release == 1) then {
		
		if (isNil "A3L_Fnc_OldUniform") then 
		{
			player addUniform "ALRPJeff";
		} else
		{
			player addUniform A3L_Fnc_OldUniform;
		};
		
		[[getPlayerUID player],"life_fnc_wantedRemove",false,false] spawn life_fnc_MP;
		player setPos (getMarkerPos "jail_release");
		("A3LJAILTIME" call BIS_fnc_rscLayer) cutText ["","PLAIN"]; //remove
		["<t size='3.2' color='#04EE4A'>Your jailtime is over, you are a free man now!</t>"] call life_fnc_alerttwo;
		player forceWalk false;
		player setFatigue 0;
		player setDamage 0;
		life_is_arrested = false;
		player setVariable["life_is_arrested",false,true];
	} else {
		[[getPlayerUID player,profileName,"901"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		["<t size='3.2' color='#04EE4A'>You escaped the jail!</t>"] call life_fnc_alerttwo;
		player forceWalk false;
		player setFatigue 0;
		("A3LJAILTIME" call BIS_fnc_rscLayer) cutText ["","PLAIN"]; //remove
	};
};