/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if(playerSide != west) exitWith {
}; 
if (PrisonSiren1 getVariable "prison_alarm") exitWith {
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
uiSleep 4;
PrisonSiren1 setVariable ["prison_alarm", false, true];
stop1 animate ["stop", 0];
stop2 animate ["stop", 0];
stop3 animate ["stop", 0];
bollard1 animate ["bollard", 0];
};