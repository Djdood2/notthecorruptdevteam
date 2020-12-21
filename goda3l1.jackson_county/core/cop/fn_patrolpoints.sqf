/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (playerside != west) exitWith { hint "Only police can go on patrol missions!"; };
if (Life_Patrolling == 1) exitWith { hint "You're already on a patrol mission."; };
Life_Patrolling = 1;
hintSilent parseText format["<t size='1.25' color='#ff0000'>You have registered for a patrol mission. Please drive to the location marked on your GPS to receive a bonus payment.</t>"];
_points = ["PatrolPos1","PatrolPos2","PatrolPos3","PatrolPos4","PatrolPos5"];
_point = _points call bis_fnc_selectrandom; 
_marker = createMarkerLocal ["PatrolPoint",getMarkerPos _point];
_marker setMarkerColorLocal "ColorBlue";
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerTextLocal ">> Patrol Mission <<";
_price = 2200 + round(random 1850);
while {Life_Patrolling == 1} do {
if (player distance (getMarkerPos _point) < 10) exitWith {
aQ3CGZRg3W9tGxzs = aQ3CGZRg3W9tGxzs + _price;
hintSilent parseText format["<t size='1.25' color='#ff0000'>You have reached the patrol point and have been rewarded for your efforts!</t>"];
Life_Patrolling = 0;
DeleteMarker "PatrolPoint";
   };
uiSleep 0.5;
};
