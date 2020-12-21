private ["_copamount","_time"];
if (playerside != civilian) exitWith {};
if (!([false,"blastingcharge",1] call life_fnc_alrphandleinventory)) exitWith {
["<t size='3.2' color='#E50000'>You don't have a satchel charge.</t>"] call life_fnc_alerttwo;
};
if (cgbankvault getVariable "hacking") exitwith {["<t size='3.2' color='#E50000'>Someone is already committing a major crime, you cannot place the blastingcharge when this is happening.</t>"] call life_fnc_alerttwo;
 [true, "blastingcharge", 1] call life_fnc_alrphandleinventory;};
if (cgbankvault1 getVariable "hacking") exitwith {
["<t size='3.2' color='#E50000'>Someone is already committing a major crime, you cannot place the blastingcharge when this is happening.</t>"] call life_fnc_alerttwo; [true, "blastingcharge", 1] call life_fnc_alrphandleinventory;};
_copamount = west countSide playableUnits;
if (_copamount < 7) exitwith {
["<t size='3.2' color='#E50000'>You cannot do this without a minimum of 7 police on duty.</t>"] call life_fnc_alerttwo;
 [true, "blastingcharge", 1] call life_fnc_alrphandleinventory;};
_storename = "isthisadream?";
_time = 22 + round(random 12); 
_skillcheck = [FFuVsqqZ, "Perk4_2"] call mav_ttm_fnc_hasPerk; 
if (_skillcheck) then {
_time = _time/2;   
["<t size='3.2' color='#04EE4A'>You planted the charge, this will take around 15 seconds to detonate.</t>"] call life_fnc_alerttwo;
} else {
["<t size='3.2' color='#04EE4A'>You planted the charge, this will take around 30 seconds to detonate.</t>"] call life_fnc_alerttwo;
};
[[1,format["DISPATCH: SOMEONE IS ATTEMPTING TO PERFORM A JAIL BREAK. ALL UNITS RESPOND!",_storename]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[0,format["DISPATCH: SOMEONE IS ATTEMPTING TO PERFORM A JAIL BREAK. ALL UNITS RESPOND!",_storename]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[1,format["DISPATCH: SOMEONE IS ATTEMPTING TO PERFORM A JAIL BREAK. CIVILIANS STAY OUT OF DOC!",_storename]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
[[0,format["DISPATCH: SOMEONE IS ATTEMPTING TO PERFORM A JAIL BREAK. CIVILIANS STAY OUT OF DOC!",_storename]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
uiSleep _time;
if (!alive player) exitWith {};
_cunt = "Bo_GBU12_LGB" createVehicle [getPosATL prison select 0, getPosATL prison select 1, (getPosATL prison select 2)]; 
uiSleep 1;
prison animate ['maindoor1', 1]; 
["<t size='3.2' color='#04EE4A'>Charge detonated! The DOC main door is now open.</t>"] call life_fnc_alerttwo;