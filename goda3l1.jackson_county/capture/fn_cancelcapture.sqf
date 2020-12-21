/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
cobra_raiding = 0;
if (player distance getMarkerPos "Hideout1" < 30) then {
hideout1 setvariable ["capturing",false,true];
"GangCaptureDrug" setMarkerText "Gang Hideout Zulu - Not Captured";
} else {
hideout2 setvariable ["capturing",false,true];
"GangCaptureDrug2" setMarkerText "Gang Hideout Echo - Not Captured";
};