private "_unit";
_unit = cursorTarget;
if (!isPlayer _unit) exitWith {}; //Just incase
if(player distance _unit > 3) exitWith {};
if(isNil "_unit" OR {isNull _unit} OR {!isPlayer _unit}) exitWith {};
if(!(side _unit in [civilian,independent,west])) exitWith {};
if(vehicle player != player) exitWith {["<t size='3.2' color='#E50000'>You cannot do this while inside of a vehicle!!</t>"] call life_fnc_alerttwo;};
if (!isPlayer _unit) exitWith {}; //Just incase
_unit attachTo [player,[0.1,1.1,0]];
_unit setvariable ["transporting",false,true];
_unit setvariable ["Escorting",true,true];
life_escortTarget = _unit;
player reveal _unit;