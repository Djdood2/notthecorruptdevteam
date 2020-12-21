/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (playerside != west) exitWith { 
["<t size='3.2' color='#E50000'>Only police can raid the rebel outpost weapons cache!</t>"] call life_fnc_alerttwo;
};
if (cobra_raiding == 1) exitWith {
["<t size='3.2' color='#E50000'>You are already raiding the rebel outpost weapons cache!</t>"] call life_fnc_alerttwo;
};
if (cobrarebel getVariable "raiding") exitwith {
["<t size='3.2' color='#E50000'>Someone is already raiding the rebel outpost weapons cache!</t>"] call life_fnc_alerttwo;
};
if (cobrarebel getVariable "raided") exitwith {
["<t size='3.2' color='#E50000'>This cache was recently raided!</t>"] call life_fnc_alerttwo;
};
if((player getVariable "restrained")) exitWith {}; 
if((player getVariable "tied")) exitWith {};
_cops = (west countSide playableUnits);
if (_cops < 10) exitWith {
["<t size='3.2' color='#E50000'>There are not enough officers on duty to do this!</t>"] call life_fnc_alerttwo;
};
_civs = (civilian countSide playableUnits);
if (_civs < 30) exitWith {
["<t size='3.2' color='#E50000'>There are not enough civilians currently awake to do this!</t>"] call life_fnc_alerttwo;
};
cobra_raiding = 1;
cobrarebel setvariable ["raiding",true,true];
[[1,format["%1 has began the raid on the rebel outpost. If all goes to plan the raid should be complete in around 4 minutes.",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
["<t size='3.2' color='#E50000'>Around 2 minutes left until the cache is fully raided.</t>"] call life_fnc_alerttwo;
uiSleep 120;
if (!alive player) exitWith { cobra_raiding = 0; cobrarebel setvariable ["raiding",false,true]; cobrarebel setvariable ["raided",false,true]; };
[[1,format["There is around 2 minutes left until the raid on rebel is complete.",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
["<t size='3.2' color='#E50000'>Around 2 minutes left until the cache is fully raided.</t>"] call life_fnc_alerttwo;
uiSleep 120;
if (!alive player) exitWith { cobra_raiding = 0; cobrarebel setvariable ["raiding",false,true]; cobrarebel setvariable ["raided",false,true]; };
cobra_raiding = 0;
_finalvalue = round (random 7000);
_randtotal = _finalvalue * _cops;
hintsilent format ["You raided the rebel weapons cache and gathered up $%1 worth of weapons and materials.",_randtotal];
uiSleep 1;
[[1,format["LAKESIDE NEWS: The rebel outpost was just raided by police for $%1 worth of weapons and materials.",_randtotal]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[1,format["LAKESIDE NEWS: The rebel outpost was just raided by police for $%1 worth of weapons and materials.",_randtotal]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
[[1,format["LAKESIDE NEWS: The rebel outpost was just raided by police for $%1 worth of weapons and materials.",_randtotal]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
[[0,format["LAKESIDE NEWS: The rebel outpost was just raided by police for $%1 worth of weapons and materials.",_randtotal]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[0,format["LAKESIDE NEWS: The rebel outpost was just raided by police for $%1 worth of weapons and materials.",_randtotal]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
[[0,format["LAKESIDE NEWS: The rebel outpost was just raided by police for $%1 worth of weapons and materials.",_randtotal]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
cobrarebel setvariable ["raiding",false,true];
cobrarebel setvariable ["raided",true,true];
[_finalvalue] remoteExecCall ["life_fnc_rewardcops",west];
memes = 2;