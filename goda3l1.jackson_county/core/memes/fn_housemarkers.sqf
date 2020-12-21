/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
params [
  ["_dicks",[],[[]]]
];
_marker = createMarkerLocal ["MarkerHouse", _dicks]; 
"MarkerHouse" setMarkerColorLocal "ColorBlue";  
"MarkerHouse" setMarkerTextLocal "***BURGLARY IN PROGRESS***";
"MarkerHouse" setMarkerTypeLocal "mil_warning";	
uiSleep 80; 
deleteMarkerLocal "MarkerHouse"; 