/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (!alive player) exitWith {};
_double = [FFuVsqqZ, "Perk10_1"] call mav_ttm_fnc_hasPerk; 
if (_double) then {
["playingdouble"] spawn mav_ttm_fnc_addExp;
} else{
["playing"] spawn mav_ttm_fnc_addExp;
};
if (playerside == civilian) then {
yzBSEGppqZnJrfWE = yzBSEGppqZnJrfWE + 1;
} else {
if (isNil {tax getVariable "taxrate"}) then { tax setVariable ["taxrate", 5, true];;diag_log "Set 5% taxation.. Wasn't setup yet."; };
_taxrate = tax getVariable "taxrate";
_base = 400;
_divide = _taxrate/100; //Divides curent tax rate by 100
_dividedamount = _base * _divide; //Multiply price by divided amount
_pricewithtax = _dividedamount + _base; //Adds taxed amount and old price together
b2UuDWVw9NeDh45d = b2UuDWVw9NeDh45d + _pricewithtax;

if (hideout1 getVariable "copcaptured" && hideout2 getVariable "copcaptured") exitWith {
_add = _pricewithtax * 6;
b2UuDWVw9NeDh45d = b2UuDWVw9NeDh45d + _add;
["<t size='3.2' color='#04EE4A'>Since the PD currently controls 2 gang hideouts you have received a large bonus.</t>"] call life_fnc_alerttwo;
};
if (hideout2 getVariable "copcaptured") exitWith {
_add = _pricewithtax * 3;
b2UuDWVw9NeDh45d = b2UuDWVw9NeDh45d + _add;
["<t size='3.2' color='#04EE4A'>Since the PD currently controls a gang hideout you have received a bonus.</t>"] call life_fnc_alerttwo;
};
if (hideout1 getVariable "copcaptured") exitWith {
_add = _pricewithtax * 3;
b2UuDWVw9NeDh45d = b2UuDWVw9NeDh45d + _add;
["<t size='3.2' color='#04EE4A'>Since the PD currently controls a gang hideout you have received a bonus.</t>"] call life_fnc_alerttwo;
};
};