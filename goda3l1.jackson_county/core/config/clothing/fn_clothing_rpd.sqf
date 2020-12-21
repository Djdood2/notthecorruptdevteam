
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["RPD_Sweater",nil,150]
		];
	};
	
	case 1:
	{
		[
			["OpsC_Uncov_Full",nil,20],
						["H_Watchcap_khk",nil,20],
									["H_Cap_usblack",nil,20],
										["H_PilotHelmetHeli_B",nil,20]
		];
	};
	
	case 2:
	{
		[
			["KA_MCU",nil,520]
		];
	};
	
	case 3:
	{
		[	
		["ALRP_RPD",nil,3500]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]		
		];
	};
};