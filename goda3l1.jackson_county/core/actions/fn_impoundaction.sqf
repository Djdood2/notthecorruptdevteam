/*
	File: fn_impoundAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Impounds the vehicle
*/
if (koil_antispam == 1) exitWith {};
private["_vehicle","_type","_time","_price","_vehicleData","_upp","_ui","_progress","_pgText","_cP"];
if (player distance getMarkerPos "NoImpound" < 20) exitWith {};
_vehicle = cursorTarget;
if (playerside == civilian) exitWith { closeDialog 0; };
if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship") || (_vehicle isKindOf "Motorcycle") || (_vehicle isKindOf "Bicycle") || (_vehicle isKindOf "Motorbike") || (_vehicle isKindOf "A3L_Tahoe_Base"))) exitWith {};
koil_antispam = 1;
if(player distance cursorTarget > 10) exitWith {koil_antispam = 0; closeDialog 0;};

if((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship") || (_vehicle isKindOf "Motorcycle") || (_vehicle isKindOf "Bicycle") || (_vehicle isKindOf "Motorbike") || (_vehicle isKindOf "A3L_Tahoe_Base")) then
{
	_vehicleData = _vehicle getVariable["vehicle_info_owners",[]];

	if(count _vehicleData == 0) exitWith {deleteVehicle _vehicle; koil_antispam = 0; closeDialog 0; hint "This job vehicle has been deleted.";}; //Job Vehicle... Not in the DB so cannot be impounded.
	_vehicleName = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
	
	closeDialog 0;
	life_action_inUse = true;
	
	_upp = localize "STR_NOTF_Impounding";
	//Setup our progress bar.
	disableSerialization;
	5 cutRsc ["life_progress","PLAIN"];
	_ui = uiNameSpace getVariable "life_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
	_progress progressSetPosition 0.01;
	_cP = 0.01;
	while{true} do
	{
		uiSleep 0.09;
		_speed = [FFuVsqqZ, "Perk6_2"] call mav_ttm_fnc_hasPerk; 
		_memes = getPlayerUID player;
		_cP = _cP + 0.03;
		if (_speed) then { _cP = _cP + 0.05; };
		if (_memes == "76561198180662769" OR _memes == "76561198008573171") then { _cP = _cP + 0.10;};
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {koil_antispam = 0;};
		if(player distance _vehicle > 10) exitWith {koil_antispam = 0; closeDialog 0;};
		if(!alive player) exitWith {koil_antispam = 0; closeDialog 0;};
	};
	5 cutText ["","PLAIN"];
	
	if(player distance _vehicle > 10) exitWith {closeDialog 0; hint localize "STR_NOTF_ImpoundingCancelled"; life_action_inUse = false; koil_antispam = 0;};
	if(!alive player) exitWith {closeDialog 0; life_action_inUse = false; koil_antispam = 0;};
		if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Motorcycle") || (_vehicle isKindOf "Bicycle") || (_vehicle isKindOf "Motorbike") || (_vehicle isKindOf "Ship"))) exitWith {closeDialog 0; life_action_inUse = false; koil_antispam = 0;};
		_type = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
		switch (true) do
		{
			case (_vehicle isKindOf "Bicycle"): {_price = (call life_impound_car);};		
			case (_vehicle isKindOf "Motorbike"): {_price = (call life_impound_car);};		
			case (_vehicle isKindOf "Motorcycle"): {_price = (call life_impound_car);};
			case (_vehicle isKindOf "Car"): {_price = (call life_impound_car);};
			case (_vehicle isKindOf "Ship"): {_price = (call life_impound_boat);};
			case (_vehicle isKindOf "Air"): {_price = (call life_impound_air);};
		};
		life_impound_inuse = true;
		[[_vehicle,true,player],"TON_fnc_vehicleStore",false,false] spawn life_fnc_MP;
		waitUntil {!life_impound_inuse};
              if (_vehicle in life_vehicles) then {
                hint "You impounded your own vehicle.";
            } else {
				_price1 = [FFuVsqqZ, "Perk6_1"] call mav_ttm_fnc_hasPerk; 
				_price2 = [FFuVsqqZ, "Perk6_1_1"] call mav_ttm_fnc_hasPerk; 
				_newprice = _price;
				if (_price1) then { _newprice = _price * 2; };
				if (_price2) then { _newprice = _price * 3; };
                hint format[localize "STR_NOTF_Impounded",_type,_newprice];
                aQ3CGZRg3W9tGxzs = aQ3CGZRg3W9tGxzs + _newprice;
				["miningbig"] spawn mav_ttm_fnc_addExp;;
				uiSleep 1;
				koil_antispam = 0;
            };		
		closeDialog 0;

};
life_action_inUse = false;