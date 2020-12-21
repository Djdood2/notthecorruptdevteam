#include <macro.h>
/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (player distance getMarkerPos "Hideout1" < 30) then {
["<t size='3.2' color='#04EE4A'>Capture complete.</t>"] call life_fnc_alerttwo;
"GangCaptureDrug" setMarkerText "Gang Hideout Zulu - Captured";
if (playerside == civilian) then {
hideout1 setFlagTexture "\A3\Data_F\Flags\Flag_CSAT_CO.paa";
hideout1 setvariable ["copcaptured",false,true];
if (license_civ_tf141) exitWith {
_markerloc = getMarkerPos "Hideout1";
_marker = createMarker ["GangCaptureDrugName", _markerloc];  
"GangCaptureDrugName" setMarkerColor "ColorBlack";    
"GangCaptureDrugName" setMarkerText "Loiter Squad"; 
"GangCaptureDrugName" setMarkerType "loc_Ruin"; 
[[1,format["LAKESIDE NEWS: Loiter Squad have captured gang hideout zulu."]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[1,format["LAKESIDE NEWS: Loiter Squad have captured gang hideout zulu."]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
[[1,format["LAKESIDE NEWS: Loiter Squad have captured gang hideout zulu."]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
};
if (license_civ_corleones) exitWith {
_markerloc = getMarkerPos "Hideout1";
_marker = createMarker ["GangCaptureDrugName", _markerloc];  
"GangCaptureDrugName" setMarkerColor "ColorBlack";    
"GangCaptureDrugName" setMarkerText "The Corleones"; 
"GangCaptureDrugName" setMarkerType "loc_Ruin"; 
[[1,format["LAKESIDE NEWS: The Corleones have captured gang hideout zulu."]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[1,format["LAKESIDE NEWS: The Corleones have captured gang hideout zulu."]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
[[1,format["LAKESIDE NEWS: The Corleones have captured gang hideout zulu."]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
};
[[1,format["LAKESIDE NEWS: %1 has captured gang hideout zulu.",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[1,format["LAKESIDE NEWS: %1 has captured gang hideout zulu.",name player]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
[[1,format["LAKESIDE NEWS: %1 has captured gang hideout zulu.",name player]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;	
["<t size='3.2' color='#04EE4A'>Please title the claimed area.</t>"] call life_fnc_alerttwo;
createDialog 'GangName';
DisableUserInput true;
uiSleep 1;
DisableUserInput false;
} else {
hideout1 setFlagTexture "\A3\Data_F\Flags\Flag_us_CO.paa";
[[1,format["LAKESIDE NEWS: The LSPD have captured gang hideout zulu."]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[1,format["LAKESIDE NEWS: The LSPD have captured gang hideout zulu."]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
[[1,format["LAKESIDE NEWS: The LSPD have captured gang hideout zulu."]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
_markerloc = getMarkerPos "Hideout1";
 _marker = createMarker ["GangCaptureDrugName", _markerloc];  
"GangCaptureDrugName" setMarkerColor "ColorBlue";   
"GangCaptureDrugName" setMarkerText "LSPD Controlled Zone";
"GangCaptureDrugName" setMarkerType "mil_flag"; 
hideout1 setvariable ["copcaptured",true,true];
};
} else {
["<t size='3.2' color='#04EE4A'>Capture complete.</t>"] call life_fnc_alerttwo;
"GangCaptureDrug2" setMarkerText "Gang Hideout Echo - Captured";
if (playerside == civilian) then {
hideout2 setFlagTexture "\A3\Data_F\Flags\Flag_CSAT_CO.paa";
hideout2 setvariable ["copcaptured",false,true];
if (license_civ_tf141) exitWith {
_markerloc = getMarkerPos "Hideout2";
_marker = createMarker ["GangCaptureDrugName2", _markerloc];  
"GangCaptureDrugName2" setMarkerColor "ColorBlack";    
"GangCaptureDrugName2" setMarkerText "Loiter Squad"; 
"GangCaptureDrugName2" setMarkerType "loc_Ruin"; 
[[1,format["LAKESIDE NEWS: Loiter Squad have captured gang hideout echo."]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[1,format["LAKESIDE NEWS: Loiter Squad have captured gang hideout echo."]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
[[1,format["LAKESIDE NEWS: Loiter Squad have captured gang hideout echo."]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
};
if (license_civ_corleones) exitWith {
_markerloc = getMarkerPos "Hideout2";
_marker = createMarker ["GangCaptureDrugName2", _markerloc];  
"GangCaptureDrugName2" setMarkerColor "ColorBlack";    
"GangCaptureDrugName2" setMarkerText "The Corleones"; 
"GangCaptureDrugName2" setMarkerType "loc_Ruin"; 
[[1,format["LAKESIDE NEWS: The Corleones have captured gang hideout echo."]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[1,format["LAKESIDE NEWS: The Corleones have captured gang hideout echo."]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
[[1,format["LAKESIDE NEWS: The Corleones have captured gang hideout echo."]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
};
[[1,format["LAKESIDE NEWS: %1 has captured gang hideout echo.",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[1,format["LAKESIDE NEWS: %1 has captured gang hideout echo.",name player]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
[[1,format["LAKESIDE NEWS: %1 has captured gang hideout echo.",name player]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;	
["<t size='3.2' color='#04EE4A'>Please title the claimed area.</t>"] call life_fnc_alerttwo;
createDialog 'GangName';
DisableUserInput true;
uiSleep 1;
DisableUserInput false;
} else {
hideout2 setFlagTexture "\A3\Data_F\Flags\Flag_us_CO.paa";
[[1,format["LAKESIDE NEWS: The LSPD have captured gang hideout echo."]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[1,format["LAKESIDE NEWS: The LSPD have captured gang hideout echo."]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
[[1,format["LAKESIDE NEWS: The LSPD have captured gang hideout echo."]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
_markerloc = getMarkerPos "Hideout2";
 _marker = createMarker ["GangCaptureDrugName2", _markerloc];  
"GangCaptureDrugName2" setMarkerColor "ColorBlue";   
"GangCaptureDrugName2" setMarkerText "LSPD Controlled Zone";
"GangCaptureDrugName2" setMarkerType "mil_flag"; 
hideout2 setvariable ["copcaptured",true,true];
};
};




