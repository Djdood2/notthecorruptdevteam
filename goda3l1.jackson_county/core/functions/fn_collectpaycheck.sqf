/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (playerside != civilian) exitWith { 
	["<t size='3.2' color='#E50000'>Only civilians can collect paychecks!</t>"] call life_fnc_alert;
	};
if (yzBSEGppqZnJrfWE == 0) exitWith { 
	["<t size='3.2' color='#E50000'>You have no paychecks to collect!</t>"] call life_fnc_alert;
	};
_pay = yzBSEGppqZnJrfWE * 100;
_finalpay = _pay;
_dbl = [FFuVsqqZ, "Perk5_1"] call mav_ttm_fnc_hasPerk; 
if (JobType == 0 && _dbl) then {
_finalpay = _pay * 2;
};
yzBSEGppqZnJrfWE = 0;
["<t size='3.2' color='#04EE4A'>You collected your paycheck.</t>"] call life_fnc_alert;
b2UuDWVw9NeDh45d = b2UuDWVw9NeDh45d + _finalpay;