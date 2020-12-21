/*
	File: fn_vehicleShopBuy.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Cobra
	
	Description:
	Does something with vehicle purchasing.
*/
private["_mode","_spawnPoints","_className","_basePrice","_colorIndex","_spawnPoint","_vehicle"];
_mode = _this select 0;
if((lbCurSel 2302) == -1) exitWith {hint localize "STR_Shop_Veh_DidntPick"};
_className = lbData[2302,(lbCurSel 2302)];
_vIndex = lbValue[2302,(lbCurSel 2302)];
_vehicleList = [life_veh_shop select 0] call life_fnc_vehicleListCfg; _basePrice = (_vehicleList select _vIndex) select 1;
 if(_mode) then {_basePrice = round(_basePrice * 1.5)};
_colorIndex = lbValue[2304,(lbCurSel 2304)];
//Series of checks (YAY!)
if(_basePrice < 0) exitWith {}; //Bad price entry
if(aQ3CGZRg3W9tGxzs < _basePrice) exitWith {hint format[localize "STR_Shop_Veh_NotEnough",[_basePrice - aQ3CGZRg3W9tGxzs] call life_fnc_numberText];};
if(!([_className] call life_fnc_vehShopLicenses) && _className != "B_MRAP_01_hmg_F") exitWith {hint "You do not have the requirements to purchase this vehicle.";};
_spawnPoints = life_veh_shop select 1;
_spawnPoint = "";

	//Check if there is multiple spawn points and find a suitable spawnpoint.
	if(typeName _spawnPoints == typeName []) then {
		//Find an available spawn point.
		{if(count(nearestObjects[(getMarkerPos _x),["Car","Motorcycle","Ship","Air"],5]) == 0) exitWith {_spawnPoint = _x};} foreach _spawnPoints;
	} else {
		if(count(nearestObjects[(getMarkerPos _spawnPoints),["Car","Motorcycle","Ship","Air"],5]) == 0) exitWith {_spawnPoint = _spawnPoints};
};
if(_spawnPoint == "") exitWith {hint localize "STR_Shop_Veh_Block";};
//////////////////////////
_perk = [FFuVsqqZ, "Perk5_2"] call mav_ttm_fnc_hasPerk; //check to see if the player has the cheap vehicle perk?
if (_perk) then { 
_ten = _basePrice/10;
_basePrice = _basePrice - _ten;
};
aQ3CGZRg3W9tGxzs = aQ3CGZRg3W9tGxzs - _basePrice;
hint format[localize "STR_Shop_Veh_Bought",getText(configFile >> "CfgVehicles" >> _className >> "displayName"),[_basePrice] call life_fnc_numberText];

_vehicle = createVehicle [_className, (getMarkerPos _spawnPoint), [], 0, "NONE"];
	waitUntil {!isNil "_vehicle"}; //Wait?
	_vehicle allowDamage false; //Temp disable damage handling..
	_vehicle lock 2;
	_vehicle setVectorUp (surfaceNormal (getMarkerPos _spawnPoint));
	_vehicle setDir (markerDir _spawnPoint);
	_vehicle setPos (getMarkerPos _spawnPoint);
	[[_vehicle,_colorIndex],"life_fnc_colorVehicle",true,false] spawn life_fnc_MP;
	[_vehicle] call life_fnc_clearVehicleAmmo;
	_vehicle setVariable["trunk_in_use",false,true];
	_vehicle setVariable["vehicle_info_owners",[[getPlayerUID player,profileName]],true];
	_vehicle disableTIEquipment true; //No Thermals.. They're cheap but addictive.


if (_baseprice < 5000) then {
["carBought"] spawn mav_ttm_fnc_addExp;
};
if (_baseprice > 4999 && _baseprice < 50000) then {
["carBoughtmedium"] spawn mav_ttm_fnc_addExp;
};
if (_baseprice > 49999) then {
["carBoughtexpensive"] spawn mav_ttm_fnc_addExp; 
};

switch(playerSide) do {
	case civilian: {
		if(_className == "B_Heli_Light_01_F") then {
			[_vehicle,"civ_littlebird",true] spawn life_fnc_vehicleAnimate;
		};
	};
};

_vehicle allowDamage true;

life_vehicles set[count life_vehicles,_vehicle]; //Add err to the chain.
if(_mode) then {
	if(!(_className in ["B_G_Offroad_01_armed_F","B_MRAP_01_hmg_F"])) then {
		[[(getPlayerUID player),playerSide,_vehicle,_colorIndex],"TON_fnc_vehicleCreate",false,false] spawn life_fnc_MP;
	};
};

[0] call SOCK_fnc_updatePartial; //Sync silently because it's obviously silently..
true;
