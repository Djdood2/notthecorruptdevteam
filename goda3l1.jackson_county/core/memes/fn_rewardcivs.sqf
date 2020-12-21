/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
params [
  ["_finalvalue",0,[0]]
];
if (_finalvalue isEqualTo 0) exitWith {};
if !(playerSide isEqualTo civilian) exitWith {};
aQ3CGZRg3W9tGxzs = aQ3CGZRg3W9tGxzs + _finalvalue; 
hint "Money added to bank account.";




