/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (PrisonSiren1 getVariable "disabled") exitwith {["<t size='3.2' color='#E50000'>The power has been cut, please ensure the generator is not damaged before trying to do this.</t>"] call life_fnc_alerttwo;};
if (isNull cursorObject) exitWith { hint "Look directly at the object!";};
if (cursorObject isKindOf "Stop") then {
cursorObject animate ["stop", 1];
};
if (cursorObject isKindOf "Bollards") then {
bollard1 animate ["bollard", 1.3];
};
if (cursorObject isKindof "A3L_PrisonWall_Enterence") then {
cursorObject animate ["maindoor1", 0];
cursorObject animate ["maindoor2", 0];
};