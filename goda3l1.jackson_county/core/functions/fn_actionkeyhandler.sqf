#include <macro.h>
private["_curTarget","_isWater", "_veh"];

if (cursorObject isKindOf 'Land_Atm_02_F') exitWith { 
		createDialog 'Life_atm_management'; [] spawn life_fnc_atmmenu;
};


if !(isNull life_escortTarget) exitWith
{
	[life_escortTarget] call life_fnc_stopescorting;
};

if(dialog) exitWith {}; //Don't bother when a dialog is open.
life_action_inUse = true;

//Temp fail safe.
[] spawn {
	uiSleep 60;
	life_action_inUse = false;
};
_curTarget = cursorTarget;
if(!dialog && playerSide == independent && _curTarget isKindOf "Man" && !alive _curTarget) exitwith {
		[_curTarget] call life_fnc_revivePlayer;
};
_perk = [FFuVsqqZ, "Perk2_1_6"] call mav_ttm_fnc_hasPerk; 
if(!alive _curTarget && playerSide != independent && !dialog && _curTarget isKindOf "Man") then {
	_canrevive = false;
	if (life_inv_medkit > 0) then {_canrevive = true;};
	if (_perk) then { _canrevive = true;};
			if(_canrevive) then {
				[_curTarget] call life_fnc_CPRPlayer;
			} else {
				hint "You have no medkit to perform CPR.";
		};
};
//OK, it wasn't a player so what is it?
	private["_isVehicle","_miscItems","_money"];
	_miscItems = ["Land_BottlePlastic_V1_F","Land_TacticalBacon_F","Land_Can_V3_F","Land_CanisterFuel_F","Land_ButaneCanister_F","Land_Antibiotic_F","Land_VitaminBottle_F","Land_DisinfectantSpray_F","Land_MobilePhone_smart_F","Land_Bandage_F","Land_Pillow_grey_F","Land_SatellitePhone_F","Land_Battery_F","Land_Defibrillator_F"];
	_money = "cg_money_stack_1";
			if((typeOf _curTarget) in _miscItems) then {
				private["_handle"];
				_handle = [_curTarget] spawn life_fnc_pickupItem;
				waitUntil {scriptDone _handle};
			} else {
				//It wasn't a misc item so is it money?
				if((typeOf _curTarget) == _money && {!(_curTarget getVariable["inUse",false])}) then {
					private["_handle"];
					_curTarget setVariable["inUse",TRUE,TRUE];
					_handle = [_curTarget] spawn life_fnc_pickupMoney;
					waitUntil {scriptDone _handle};
				} else {
					if(player getvariable "restrained") exitwith {closeDialog 0; hint "You're restrained, you can't do that right now!"};
					[] spawn life_fnc_usemenu;
				};
			};

	
