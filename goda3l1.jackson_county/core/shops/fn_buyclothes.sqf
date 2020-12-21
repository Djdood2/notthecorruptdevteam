/*
	File: fn_buyClothes.sqf
	Author: Bryan "Tonic" Boardwine
	Description:
	Buys the current set of clothes and closes out of the shop interface.
*/
private["_price"];
if((lbCurSel 3101) == -1) exitWith {titleText[localize "STR_Shop_NoClothes","PLAIN"];};

_price = 0;
{
	if(_x != -1) then
	{
		_price = _price + _x;
	};
} foreach life_clothing_purchase;

if(_price > aQ3CGZRg3W9tGxzs) exitWith {titleText[localize "STR_Shop_NotEnoughClothes","PLAIN"];};
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
			 if(_price >  aQ3CGZRg3W9tGxzs) exitWith {titleText[localize "STR_Shop_NotEnoughClothes","PLAIN"];};
			 aQ3CGZRg3W9tGxzs = aQ3CGZRg3W9tGxzs - _price;
			 life_clothesPurchased = true;
			 closeDialog 0;
			 hint "Because you are an emergency service worker your gear was exempt from taxation.";
		 } else {
			//Civilians are taxed.
			 if(_pricewithtax >  aQ3CGZRg3W9tGxzs) exitWith {
			 titleText[localize "STR_Shop_NotEnoughClothes","PLAIN"]; 
			 hint format["The price of the item with tax on top is $%1.",_pricewithtax];
			 };
			 aQ3CGZRg3W9tGxzs =  aQ3CGZRg3W9tGxzs - _pricewithtax; 
			life_clothesPurchased = true;
			closeDialog 0;
			 if (player distance (getMarkerPos "reb_v_1_1") < 150 OR player distance (getMarkerPos "gangzone") < 150) then {
			 } else {
				 hint format["Added %1 percent onto the price of the product as the government taxation levels are currently set at that level.",_taxrate];
			 };
			 playSound "alrp_notify";
		 };