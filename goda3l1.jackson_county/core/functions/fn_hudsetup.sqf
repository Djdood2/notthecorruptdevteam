
[] execVM "ALRP_HudConfig.sqf";

("ALRP_HUD" call BIS_fnc_rscLayer) cutRsc ["ALRP_HUD","PLAIN"]; //show

[] spawn
{
	while {true} do
	{
		sleep 120;
		("ALRP_HUD" call BIS_fnc_rscLayer) cutText ["","PLAIN"]; //remove
		("ALRP_HUD" call BIS_fnc_rscLayer) cutRsc ["ALRP_HUD","PLAIN"]; //show
	};
};