/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
//Drug cartel shit
//This code loads when the server boots
hideout1 setvariable ["capturing",false,true];
hideout1 setvariable ["captured",false,true];
hideout1 setvariable ["copcaptured",false,true];
hideout2 setvariable ["capturing",false,true];
hideout2 setvariable ["captured",false,true];
hideout2 setvariable ["copcaptured",false,true];
_marker = createMarker ["GangCaptureDrug", hideout1]; 
_marker2 = createMarker ["GangCaptureDrug2", hideout2]; 
"GangCaptureDrug" setMarkerColor "ColorRed";   
"GangCaptureDrug" setMarkerText "Gang Hideout Zulu - Not Captured";
"GangCaptureDrug" setMarkerType "mil_flag"; 
//
"GangCaptureDrug2" setMarkerColor "ColorRed";   
"GangCaptureDrug2" setMarkerText "Gang Hideout Echo - Not Captured";
"GangCaptureDrug2" setMarkerType "mil_flag"; 