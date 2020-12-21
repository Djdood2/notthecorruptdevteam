#include <macro.h>
/*
	File: fn_weaponShopBuySell.sqf
	Author: Bryan "Tonic" Boardwine
	Edited a huge amount by: Cobra @ ALRP
	
	Description:
	Master handling of the weapon shop for buying / selling an item.
*/
disableSerialization;
private["_price","_item","_itemInfo","_bad"];
if((lbCurSel 38403) == -1) exitWith {hint localize "STR_Shop_Weapon_NoSelect"};
_price = lbValue[38403,(lbCurSel 38403)]; if(isNil "_price") then {_price = 0;};



_item = lbData[38403,(lbCurSel 38403)];
_itemInfo = [_item] call life_fnc_fetchCfgDetails;

_bad = "";

if((_itemInfo select 6) != "CfgVehicles") then
{
	if((_itemInfo select 4) in [4096,131072]) then
	{
		if(!(player canAdd _item) && (uiNamespace getVariable["Weapon_Shop_Filter",0]) != 1) exitWith {_bad = (localize "STR_NOTF_NoRoom")};
	};
};

if(_bad != "") exitWith {hint _bad};
if (player distance (getMarkerPos "reb_v_1_1") < 150 && cobrarebel getVariable "raided") exitWith {
	hint "The rebel weapon cache was recently raided, you need to fix the crate before you can buy more weapons.";
	uiSleep 4;
	hint "The weapons crate will be marked on your GPS for a short period of time.";
	_marker = createMarkerLocal ["DeliveryPoint",getPos cobrarebel];
	_marker setMarkerColorLocal "ColorRed";
	_marker setMarkerTypeLocal "mil_dot";
	_marker setMarkerTextLocal ">>Rebel Weapons Crate<<";
	uiSleep 15;
	deleteMarker "DeliveryPoint";
};
		/*FIND OUT TAX RATE AND DETERMINE NEW PRICE*/
		//Checks to see if the mayor has set a custom level.
		if (isNil {tax getVariable "taxrate"}) then { tax setVariable ["taxrate", 5, true];;diag_log "Set 5% taxation.. Wasn't setup yet."; };
		_taxrate = tax getVariable "taxrate";  //Gets tax rate
		if (player distance (getMarkerPos "reb_v_1_1") < 150 OR player distance (getMarkerPos "gangzone") < 150) then {_taxrate = 0;};
		_divide = _taxrate/100; //Divides curent tax rate by 100
		_dividedamount = _price * _divide; //Multiply price by divided amount
		_pricewithtax = _dividedamount + _price; //Adds taxed amount and old price together
		//Check side
		 if (playerside != civilian) then {
			 //NOT A CIV - Cheaper prices! (No tax)
			 if(_price >  aQ3CGZRg3W9tGxzs) exitWith {hint localize "STR_NOTF_NotEnoughMoney";};
		     [_item,true] spawn life_fnc_handleItem;
			 hint parseText format[localize "STR_Shop_Weapon_BoughtItem",_itemInfo select 1,[_price] call life_fnc_numberText];
			 aQ3CGZRg3W9tGxzs =  aQ3CGZRg3W9tGxzs - _price; 
			 uiSleep 3;
			 hint "Because you are an emergency service worker your gear was exempt from taxation.";
		 } else {
			//Civilians are taxed.
			if(_pricewithtax >  aQ3CGZRg3W9tGxzs) exitWith {hint localize "STR_NOTF_NotEnoughMoney"; uiSleep 2;  hint format["The price of the item with tax on top is $%1.",_pricewithtax];};
			 [_item,true] spawn life_fnc_handleItem;
			 hint parseText format[localize "STR_Shop_Weapon_BoughtItem",_itemInfo select 1,[_pricewithtax] call life_fnc_numberText];
			 aQ3CGZRg3W9tGxzs =  aQ3CGZRg3W9tGxzs - _pricewithtax; 
			 uiSleep 3;
			 if (player distance (getMarkerPos "reb_v_1_1") < 150 OR player distance (getMarkerPos "gangzone") < 150) then {
			 } else {
				 hint format["Added %1 percent onto the price of the product as the government taxation levels are currently set at that level.",_taxrate];
			 };
			 if (antisound == 1) exitWith {};
			 antisound = 1;
			 playSound "alrp_notify";
			 uiSleep 4;
			 antisound = 0;
		 };	 
[] call life_fnc_saveGear;
