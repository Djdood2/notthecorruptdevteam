/*
    This script was made by ALRP finest retards, Charlie and Jayden
    
    DESCRIPTION:
    Stops players from killing people in Gang zone
    
    CONFIGURATION:
    Edit the #defines below.
*/
#define SAFETY_ZONES    [["Gang_Safe_Zone", 45]] // Syntax: [["marker1", radius1], ["marker2", radius2], ...]
#define MESSAGE "This is a SafeZone, the use of weapons is prohibited here!"
     if (isDedicated) exitWith {};
     waitUntil {!isNull player};
switch (playerSide) do
{
	case west:
	{
     player addEventHandler ["Fired", {
            if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
            {
             deleteVehicle (_this select 6);
             titleText [MESSAGE, "PLAIN", 3];
             };
        }];
    };

    case independent:
	{
     player addEventHandler ["Fired", {
            if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
            {
             deleteVehicle (_this select 6);
             titleText [MESSAGE, "PLAIN", 3];
             };
        }];
    };
	
	case civilian:
	{
     player addEventHandler ["Fired", {
            if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
            {
             deleteVehicle (_this select 6);
             titleText [MESSAGE, "PLAIN", 3];
             };
        }];  
	};
};