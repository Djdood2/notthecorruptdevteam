class CfgRemoteExec
{
	class Functions
	{
		mode = 1;
		jip = 1;
		#include "maverick\maverick_remoteExec_master.cpp"	
		class fnc_AdminReq { allowedTargets=2; };
		class ton_fnc_hidethis { allowedTargets=0; };
		class life_fnc_rewardcivs { allowedTargets=0; };
		class life_fnc_rewardcops { allowedTargets=0; };
		class life_fnc_housemarkers { allowedTargets=0; };
		class life_fnc_panicmarkers { allowedTargets=0; };
		class life_fnc_adminnotif { allowedTargets=0; };
		class EPOCH_server_save_vehicles { allowedTargets=2; };
		class life_fnc_wireTransfer { allowedTargets=1; };
	};
	class Commands
	{
		mode=0;
		jip=0;
	};
};