/*
	File: push the vehicle brahs

*/
if (antispam == 1) exitWith { hint "Slow down!"; };
if((player getVariable "restrained")) exitWith {}; 
if((player getVariable "tied")) exitWith {};
antispam = 1;
_vehicle = cursortarget; 
_vehicle allowdamage false;
_vel = velocity _vehicle;  
_dir = direction player; 
_speed = 8;
_vehicle setVelocity [   (_vel select 0) + (sin _dir * _speed),    (_vel select 1) + (cos _dir * _speed),    (_vel select 2)  ];
uiSleep 1;
_vehicle allowdamage true;
antispam = 0;