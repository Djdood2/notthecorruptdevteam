/*
	File: fn_insertPlayerInfo.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Read the file name... Explains it.
*/
if(life_session_completed) exitWith {}; //Why did this get executed when the client already initialized? Fucking arma...

[0,format["Sending request to server for player information UID: %1",getPlayerUID player]] call mav_introcam_fnc_updateCinematicStatus;

// cutText[localize "STR_Session_QueryFail","BLACK FADED"];
// 0 cutFadeOut 9999999;

[[getPlayerUID player,profileName,aQ3CGZRg3W9tGxzs,b2UuDWVw9NeDh45d,player],"DB_fnc_insertRequest",false,false] spawn life_fnc_MP;