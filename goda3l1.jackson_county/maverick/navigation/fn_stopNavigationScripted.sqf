/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

[false] call mav_gps_fnc_initGPS;

terminate (missionNamespace getVariable ["mav_gps_uiThread", scriptNull]);

mav_gps_v_running = false;