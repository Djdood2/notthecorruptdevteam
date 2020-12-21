/*
	File: fn_keyHandler.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Main key handler for event 'keyDown'
*/
private ["_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys"];
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;
_speed = speed cursorTarget;
_handled = false;



_interactionKey = if(count (actionKeys "User10") == 0) then {219} else {(actionKeys "User10") select 0};
_mapKey = actionKeys "ShowMap" select 0;
//hint str _code;
_interruptionKeys = [17,30,31,32]; //A,S,W,D

//Vault handling...
if((_code in (actionKeys "GetOver") || _code in (actionKeys "salute")) && {(player getVariable ["restrained",false])}) exitWith {
	true;
};


if(life_action_inUse) exitWith {
	if(!life_interrupted && _code in _interruptionKeys) then {life_interrupted = true;};
	_handled;
};

//Hotfix for Interaction key not being able to be bound on some operation systems.
if(count (actionKeys "User10") != 0 && {(inputAction "User10" > 0)}) exitWith {
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	if(!life_action_inUse) then {
		[] spawn
		{
			private["_handle"];
			_handle = [] spawn life_fnc_actionKeyHandler;
			waitUntil {scriptDone _handle};
			life_action_inUse = false;
		};
	};
	true;
};

switch (_code) do {
    // -- Disable commander/tactical view
        private _CommandMode = actionKeys "tacticalView";
        if (_code in _CommandMode) then {
		hint "Commander mode is disabled.";
		_handled = true;
        };
	//Space key for Jumping
	case 57:
	{
	if(isNil "jumpActionTime") then {jumpActionTime = 0;};
		if(_shift && {animationState player != "AovrPercMrunSrasWrflDf"} && {isTouchingGround player} && {stance player == "STAND"} && {speed player > 2} && {!life_is_arrested} && {(velocity player) select 2 < 2.5} && {time - jumpActionTime > 1.5}) then {
			jumpActionTime = time; //Update the time.
			[player,true] spawn life_fnc_jumpFnc; //Local execution
		[[player,false],"life_fnc_jumpFnc",nil,FALSE] call life_fnc_MP; //Global execution
			_handled = true;
		};
	};

	case 62: //sync when people alt f4
	{
	if (_alt) then {
			[] spawn SOCK_fnc_syncData;
			_items = uniformItems player;
			player forceAddUniform uniform player;
			{player addItemToUniform _x} foreach _items;
			_vestItems = vestItems player;
			player addVest vest player;
			{player addItemToVest _x} foreach _vestItems;
	};
};
	
	case 74: {
		if(_shift) then {
		[] spawn {
		if (koil_antispam == 1) exitWith {};
		koil_antispam = 1;
		life_action_inUse = true;
		disableUserInput true;
		hint "Your input has been disabled for 45 seconds because you pressed blacklisted keys. Please refrain from pressing SHIFT and - at the same time.";
		uiSleep 45;
		disableUserInput false;
		life_action_inUse = false;
		koil_antispam = 0;
		hint "You are now able to use keys again.";
		_handled = true;
		};
	};
};


    case 6: //what job am i doing m8
	{
		if(_shift && playerside == civilian) then
		{
			[] spawn life_fnc_jobType;
			_handled = true;
		};
		if(_shift && playerside != civilian) then
		{
			[] spawn life_fnc_barrierMenu;
			_handled = true;
		};
	};

	case 2: //dab
	{
		player playActionnow "ASN_dab2_1";
		_handled = true;
	};

	case 24: //open gates (O)
	{
		if(_shift) then {
			if (soundVolume != 1) then {
				1 fadeSound 1;
				titleText ["Your sound has returned to normal.", "PLAIN"];
					_handled = true;
			} else {
				1 fadeSound 0.1;
				titleText ["Your sound has been lowered.", "PLAIN"];
					_handled = true;
			};
		};
		if (playerside == west) then {
    _gate = nearestObjects [getPos player,["A3L_Fence_Open"],10] select 0;
_gate2 = nearestObjects [getPos player,["xcam_BarGate_F"],5] select 0;

if(playerSide != west) then {};

if(_gate animationPhase "Gate" < 0.5) then {
    _gate animate ["Gate", 3.6];
} else {
    _gate animate ["Gate", 0];
};

if(_gate2 animationPhase "Door_1_rot" == 0) then {
    _gate2 animate ["Door_1_rot", 1];
    _gate2 animate ["Door_2_rot", 1];
} else {
    _gate2 animate ["Door_1_rot", 0];
    _gate2 animate ["Door_2_rot", 0];
};
  };
};



	case 5:
	{
		//Spike Strip
		if(_ctrlKey && !_alt && !_shift && playerSide == west) then {
			life_inv_spikeStrip = life_inv_spikeStrip + 1;

		if(!isNull life_spikestrip) exitWith {hint "You cannot hold more than one spikestrip at once!"};
		if(([false,"spikeStrip",1] call life_fnc_alrphandleinventory)) then

		{

		[] spawn life_fnc_spikeStrip;

			};

		};
	};

	case 207: //PANIC BUTTON (END) And allows the repairmen to fix shit?
{
	if(playerside == civilian && Life_Repairman == 1) then
		{
			[] spawn life_fnc_fixshit;
			_handled = true;
	};
	if(playerside == west) then
		{
	[] spawn life_fnc_callBackup;
	_handled = true;
	};
};

	//Map Key
	case _mapKey:
	{
		switch (playerSide) do
		{
			case west: {if(!visibleMap) then {[] spawn life_fnc_copMarkers;}};
			case independent: {if(!visibleMap) then {[] spawn life_fnc_medicMarkers;[] spawn life_fnc_medicMarkers2;}};
		};
	};


	//Holster / recall weapon.
	case 35:
	{
		if(_shift && !_ctrlKey && currentWeapon player != "") then {
			life_curWep_h = currentWeapon player;
			player action ["SwitchWeapon", player, player, 100];
			player switchcamera cameraView;
		};

		if(!_shift && _ctrlKey && !isNil "life_curWep_h" && {(life_curWep_h != "")}) then {
			if(life_curWep_h in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
				player selectWeapon life_curWep_h;
			};
		};


        if( playerSide == west && vehicle player != player && ((driver vehicle player) == player) && _ctrlKey ) then
                {
                    _veh = vehicle player;
                    if( _veh isKindOf "Car" || _veh isKindOf "Motorcycle" || _veh isKindOf "Motorbike" ) then {
                    if(isNil {_veh getVariable "sirenUC"}) then {_veh setVariable["sirenUC",false,true];};
                    if((_veh getVariable "sirenUC")) then
                    {
                       titleText ["Undercover Sirens Off","PLAIN"];
                        _veh setVariable["sirenUC",false,true];
                    };
                    };
                };


        if( playerSide == west && vehicle player != player && ((driver vehicle player) == player) && !_ctrlKey ) then
                {
                    _veh = vehicle player;
                    if( _veh isKindOf "Car" || _veh isKindOf "Motorcycle" || _veh isKindOf "Motorbike" ) then {
                    if(isNil {_veh getVariable "sirenUC"}) then {_veh setVariable["sirenUC",false,true];};
                    if(!(_veh getVariable "sirenUC")) then
                    {
                         _veh setVariable["sirenUC",true,true];
                         titleText ["Undercover Sirens On - CTRL+H to turn off!","PLAIN"];
                        [[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
                    };
                    };
                };

        if( playerSide == independent && vehicle player != player && ((driver vehicle player) == player) && _ctrlKey ) then
                {
                    _veh = vehicle player;
                    if( _veh isKindOf "Car" || _veh isKindOf "Motorcycle" || _veh isKindOf "Motorbike" ) then {
                    if(isNil {_veh getVariable "sirenUC"}) then {_veh setVariable["sirenUC",false,true];};
                    if((_veh getVariable "sirenUC")) then
                    {
                       titleText ["Undercover Sirens Off","PLAIN"];
                        _veh setVariable["sirenUC",false,true];
                    };
                    };
                };


        if( playerSide == independent && vehicle player != player && ((driver vehicle player) == player) && !_ctrlKey ) then
                {
                    _veh = vehicle player;
                    if( _veh isKindOf "Car" || _veh isKindOf "Motorcycle" || _veh isKindOf "Motorbike" ) then {
                    if(isNil {_veh getVariable "sirenUC"}) then {_veh setVariable["sirenUC",false,true];};
                    if(!(_veh getVariable "sirenUC")) then
                    {
                         _veh setVariable["sirenUC",true,true];
                        titleText ["Undercover Sirens On - CTRL+H to turn off!","PLAIN"];
                        [[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
                    };
                    };
                };
  	};



		case 211:
		{
			if (playerSide isEqualTo west && {!life_knockout} && {(count (nearestObjects [player,["weaponholder"],3]) > 0)} && {(count (nearestObjects [player,["groundWeaponHolder"],3]) > 0)} && {!(player getVariable["restrained",false])} && {!(player getVariable["tied",false])} &&  {!life_istazed}) then
			{
				_handled = true;
				[] spawn life_fnc_seizeObjects;
			};
		 };

	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	case _interactionKey:
	{
		if(!life_action_inUse) then {
			[] spawn
			{
				private["_handle"];
				_handle = [] spawn life_fnc_actionKeyHandler;
				waitUntil {scriptDone _handle};
				life_action_inUse = false;
			};
		};
	};

	case 50:
	{
		if((player getVariable "tied")) then {
			_handled = true;
		};
	};


	case 36:
	{
		if(!dialog) then {
		_handled = true;
		};
	};

	case 83:
	{
		if(!dialog) then {
		_handled = true;
		};
	};

	//Radar
	case 16: {
		if(_shift && playerSide == west) then {
			[] call life_fnc_radar;
		};
	};

	//Restraining (Shift + R)
	case 19:
	{
		if(_shift) then {_handled = true;};

		if(_shift && playerSide == west && !isNull cursorTarget && !life_paintball && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 4.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained")) then
		{
			[] call life_fnc_restrainAction;
		};
	};

	//Knockout
	case 34:
	{
		if(_shift) then {_handled = true;};
		if(_shift && !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget && alive cursorTarget && cursorTarget distance player < 5 && !life_knockout) then
		{
			if((animationState cursorTarget) != "Incapacitated" && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player ) && currentWeapon player != "" && !life_knockout && !(player getVariable["restrained",false]) && !(player getVariable["tied",false]) && !life_istazed && !life_paintball) then
			{
				[cursorTarget] spawn life_fnc_knockoutAction;
			};

			if ((animationState cursorTarget) != "Incapacitated" && (player getVariable "breakouton") == 2 && !life_knockout && !(player getVariable["restrained",false]) && !life_istazed && !life_paintball) then {
				[cursorTarget] spawn life_fnc_knockoutAction;
			};
		};
	};

	//T Key (Trunk)
	case 20:
	{
		if(_shift && playerSide == west) exitWith {
		[] spawn life_fnc_ThreatLevelMenu;
		_handled = true;
		};
		if(!_alt && !_ctrlKey) then
		{
			if (cursorObject isKindOf "Land_CargoBox_V1_F") exitWith { 
				if (player distance suitcase1 < 10) then {
					[] spawn life_fnc_stealgold;
				} else {
					[cursorObject] spawn life_fnc_openInventory; 
				};
				};
			if(vehicle player != player && alive vehicle player) then
			{
				if((vehicle player) in life_vehicles) then
				{
					[vehicle player] spawn life_fnc_openInventory;
				};
			}
				else
			{
				if((cursorObject isKindOf "Car" OR cursorObject isKindOf "Air" OR cursorObject isKindOf "Ship" OR cursorObject isKindOf "House_F"  OR cursorObject isKindOf "Motorcycle") && player distance cursorObject < 7 && vehicle player == player && alive cursorObject) then
				{
					if(cursorObject in life_vehicles OR {!(cursorObject getVariable ["locked",true])}) then
					{
						[cursorObject] spawn life_fnc_openInventory;
					};
				};
			};
		};
	};

	//CAPSLOCK CHECK
	case 58:
	{
		if((player getVariable "tied")) then {
			_handled = true;
		};
		if((player getVariable "restrained")) then {
			_handled = true;
		};
	};

	//Y Player Menu
	case 21:
	{
		_stop = false;
		if(!_alt && !_ctrlKey && _shift && !dialog && !_stop) then
		{
			createDialog "TTM_GUI_RscDisplayTalentOverview";
			_stop = true;
		};
		if(!_alt && _ctrlKey && !dialog && !_stop) then
		{
			createdialog "playerSettings";
			_stop = true;
		};
		if(_alt && !_ctrlKey && !dialog && !_stop) then
		{
			createdialog "Life_key_management";
			_stop = true;
		};
		if(!_alt && !_ctrlKey && !dialog && !_stop) then
		{
			[] call fnc_opentablet;
			_stop = true;
		};
	};

	//6 - Surrender
	case 7:
	{
		if(_shift) then {_handled = true;};

		if (_shift) then
		{
			if (vehicle player == player && !(player getVariable ["restrained", false]) && (animationState player) != "Incapacitated" && !life_istazed && !life_paintball) then
			{
				if (player getVariable ["surrender", false]) then
				{
					player setVariable ["surrender", false, true];
				} else
				{
					[] spawn life_fnc_surrender;
				};
			};
		};
	};

	//7 - Mine
	case 8:
	{
		_uid = getPlayerUID player;
		if(_shift && _uid == "76561198041914511" OR _uid == "76561198041914511") exitWith {createdialog 'TaxChanger';_handled = true;}; //If its the mayor give him the tax changer menu
	};

	//8 - Resync Option
	case 9:
	{
		if(!_alt && !_ctrlKey && !dialog) then
		{
			[] spawn SOCK_fnc_syncData;
			_items = uniformItems player;
			player forceAddUniform uniform player;
			{player addItemToUniform _x} foreach _items;
			_vestItems = vestItems player;
			player addVest vest player;
			{player addItemToVest _x} foreach _vestItems;
		};
	};

	//U Key
	case 22:
	{
		if(!_alt && !_ctrlKey) then {
			if(vehicle player == player) then {
				_veh =  cursorObject;
			} else {
				_veh = vehicle player;
			};

			if(_veh isKindOf "House_F" && playerSide == civilian) then {
				if(_veh in life_vehicles && player distance _veh < 8) then {
					_door = [_veh] call life_fnc_nearestDoor;
					if(_door == 0) exitWith {hint localize "STR_House_Door_NotNear"};
					_locked = _veh getVariable [format["bis_disabled_Door_%1",_door],0];
					if(_locked == 0) then {
						_veh setVariable[format["bis_disabled_Door_%1",_door],1,true];
						_veh animate [format["door_%1_rot",_door],0];
						["<t size='3.2' color='#04EE4A'>Door locked</t>"] call life_fnc_alerttwo;
					} else {
						_veh setVariable[format["bis_disabled_Door_%1",_door],0,true];
						_veh animate [format["door_%1_rot",_door],1];
						["<t size='3.2' color='#04EE4A'>Door unlocked</t>"] call life_fnc_alerttwo;
					};
				};
			} else {
				_locked = locked _veh;
				if(_veh in life_vehicles && player distance _veh < 8 && (velocity _veh select 2) < 3) then {
					if(_locked == 2) then {
						if(local _veh) then {
							_veh lock 0;
						} else {
							[[_veh,0],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};
						["<t size='3.2' color='#04EE4A'>Vehicle unlocked</t>"] call life_fnc_alerttwo;
					} else {
						if(local _veh) then {
							_veh lock 2;
						} else {
							[[_veh,2],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};
						["<t size='3.2' color='#04EE4A'>Vehicle locked</t>"] call life_fnc_alerttwo;
					};
				};
			};
		};
	};
};

_handled;
