/*
	File: initServer.sqf
	
	Description:
	Starts the initialization of the server.
*/



[] call compile PreprocessFileLineNumbers "\life_server\init.sqf";
[] call compile PreprocessFileLineNumbers "\life_server\initA3L.sqf";
master_group attachTo[bank_obj,[0,0,0]];

[8,true,true,12] execFSM "core\fsm\timeModule.fsm";