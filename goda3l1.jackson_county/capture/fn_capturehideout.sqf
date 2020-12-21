#include <macro.h>
/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if((player getVariable "restrained")) exitWith {}; 
if((player getVariable "tied")) exitWith {};
if (playerside == independent) exitWith {};
if(vehicle player != player) exitWith { hint "You need to exit your vehicle!"; };
if (cobra_raiding == 1) exitWith {["<t size='3.2' color='#E50000'>You are already capturing this hideout!</t>"] call life_fnc_alerttwo;};
//Global checks ^^
//Hideout Zulu...
if (player distance getMarkerPos "Hideout1" < 30) then {
if (playerside == west && hideout1 getVariable "copcaptured") exitwith {["<t size='3.2' color='#E50000'>The police already control this hideout!</t>"] call life_fnc_alerttwo; cobra_raiding = 0;};
if (hideout1 getVariable "capturing") exitwith {["<t size='3.2' color='#E50000'>Someone is already capturing this hideout!</t>"] call life_fnc_alerttwo; cobra_raiding = 0;};
cobra_raiding = 1;
"GangCaptureDrug" setMarkerText "Gang Hideout Zulu - Being Captured";
deleteMarker "GangCaptureDrugName";
[[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Zulu."]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Zulu."]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
[[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Zulu."]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
hideout1 setvariable ["capturing",true,true];
hideout1 setvariable ["copcaptured",false,true];
["<t size='3.2' color='#04EE4A'>You are currently capturing gang hideout zulu, it will take approximately 360 seconds to capture the area. You MUST stick close to the capture zone and stay alive.</t>"] call life_fnc_alerttwo;
_time = 360;
while {_time > 0} do {
	uiSleep 1;
	_time = _time - 1;
	if (_time == 300) then { [[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Zulu."]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;[[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Zulu."]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;[[1,format["LAKESID NEWS: Someone is contesting Gang Hideout Zulu."]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;};
	if (_time == 200) then { [[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Zulu."]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;[[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Zulu."]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;[[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Zulu."]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;};
	if (_time == 100) then {[[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Zulu."]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;[[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Zulu."]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;[[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Zulu."]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;};
	if (_time == 20) then {[[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Zulu."]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;[[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Zulu."]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;[[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Zulu."]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;};
	if((player getVariable "restrained")) exitWith {[] spawn life_fnc_cancelcapture;}; 
	if((player getVariable "tied")) exitWith {[] spawn life_fnc_cancelcapture;};
	if (!alive player) exitWith {diag_log "Gang Capture Cancelled - Player Dead.";cobra_raiding = 0; hideout1 setvariable ["capturing",false,true]; "GangCaptureDrug" setMarkerText "Gang Hideout Zulu - Not Captured";};
	if (player distance hideout1 > 100) exitWith {["<t size='3.2' color='#E50000'>You moved too far away from the capture zone!</t>"] call life_fnc_alerttwo; cobra_raiding = 0; "GangCaptureDrug" setMarkerText "Gang Hideout Zulu - Not Captured";hideout1 setvariable ["capturing",false,true];};
	if (_time == 0) exitWith {hideout1 setvariable ["capturing",false,true];cobra_raiding = 0;hideout1 setvariable ["captured",true,true]; [] spawn life_fnc_finishcapture; };
	if (cobra_raiding == 0) exitWith {};
};
//Hideout Echo
} else {
if (playerside == west && hideout2 getVariable "copcaptured") exitwith {["<t size='3.2' color='#E50000'>The police already control this hideout!</t>"] call life_fnc_alerttwo; cobra_raiding = 0;};
if (hideout2 getVariable "capturing") exitwith {["<t size='3.2' color='#E50000'>Someone is already capturing this hideout!</t>"] call life_fnc_alerttwo; cobra_raiding = 0;};
cobra_raiding = 1;
"GangCaptureDrug2" setMarkerText "Gang Hideout Echo - Being Captured";
deleteMarker "GangCaptureDrugName2";
[[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Echo."]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Echo."]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
[[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Echo."]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
hideout2 setvariable ["capturing",true,true];
["<t size='3.2' color='#04EE4A'>You are currently capturing gang hideout echo, it will take approximately 360 seconds to capture the area. You MUST stick close to the capture zone and stay alive.</t>"] call life_fnc_alerttwo;
_time = 360;
while {_time > 0} do {
	uiSleep 1;
	_time = _time - 1;
	if (_time == 300) then { [[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Echo."]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;[[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Echo."]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;[[1,format["LAKESID NEWS: Someone is contesting Gang Hideout Echo."]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;};
	if (_time == 200) then { [[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Echo."]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;[[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Echo."]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;[[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Echo."]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;};
	if (_time == 100) then {[[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Echo."]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;[[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Echo."]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;[[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Echo."]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;};
	if (_time == 20) then {[[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Echo."]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;[[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Echo."]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;[[1,format["LAKESIDE NEWS: Someone is contesting Gang Hideout Echo."]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;};
	if((player getVariable "restrained")) exitWith {cobra_raiding = 0; [] spawn life_fnc_cancelcapture;}; 
	if((player getVariable "tied")) exitWith {[] spawn life_fnc_cancelcapture;};
	if (!alive player) exitWith {diag_log "Gang Capture Cancelled - Player Dead.";cobra_raiding = 0; hideout2 setvariable ["capturing",false,true]; "GangCaptureDrug2" setMarkerText "Gang Hideout Echo - Not Captured";};
	if (player distance hideout2 > 100) exitWith {["<t size='3.2' color='#E50000'>You moved too far away from the capture zone!</t>"] call life_fnc_alerttwo; cobra_raiding = 0; hideout2 setvariable ["capturing",false,true]; "GangCaptureDrug2" setMarkerText "Gang Hideout Echo - Not Captured";};
	if (_time == 0) exitWith {hideout2 setvariable ["capturing",false,true];cobra_raiding = 0;hideout2 setvariable ["captured",true,true]; [] spawn life_fnc_finishcapture; };
	if (cobra_raiding == 0) exitWith {};
};
};






