/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
//Check the price of the healthcare
if (isNil {tax getVariable "healthcare"}) then { tax setVariable ["healthcare", 350, true];;diag_log "Healthcare variable set to charged healthcare."; }; //Healthcare price does not exist... Set to $350 by default.
_price = tax getVariable "healthcare"; 
if (aQ3CGZRg3W9tGxzs < _price) exitWith {hint format["You do not have enough money to pay for the health insurance. It is currently priced at $%1.", _price];};
if (_price == 0) then {
hint format["Free healthcare courtesy of Lakeside government.", _price];
} else {
aQ3CGZRg3W9tGxzs = aQ3CGZRg3W9tGxzs - _price; 
hint format["You paid $%1 for the healthcare.", _price];
};
titleCut ["", "BLACK FADED", 999]; 
uiSleep 10; 
player setDamage 0; 
player setvariable ["diseaseon",false,true];
player setvariable ["bleedingon",false,true];
player setvariable ["woundedon",false,true];
player setvariable ["unconciouson",false,true];
titlecut [" ","BLACK IN",3];