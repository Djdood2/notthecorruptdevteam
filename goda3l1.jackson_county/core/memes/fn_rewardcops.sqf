/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
params [
  ["_finalvalue",0,[0]]
];
if (_finalvalue isEqualTo 0) exitWith {};
if !(playerSide isEqualTo west) exitWith {};
//Reward cops online
b2UuDWVw9NeDh45d = b2UuDWVw9NeDh45d + _finalvalue; 
["<t size='3.2' color='#04EE4A'>You were issued a bonus.</t>"] call life_fnc_alert;
hint format["Your bank balance increased by %1.",_finalvalue];



