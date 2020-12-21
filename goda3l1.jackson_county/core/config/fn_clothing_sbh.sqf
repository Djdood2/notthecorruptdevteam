
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["house_baratheon_uniform",nil,150]
		];
	};

	case 1:
	{
		[
		["OpsC_Uncov_Shemagh",nil,10],
		["house_b_helmet",nil,10],
		["OpsC_Cov_Full",nil,50]
		];
	};

	case 2:
	{
		[
		["KA_MCU",nil,500]
		];
	};

	case 3:
	{
		[
		["CGRP_SBH_Vest",nil,4000],
		["CGRP_SBH_Vest1",nil,4000]
		];
	};

	case 4:
	{
		[
        ["cg_invisbp",nil,50]
		];
	};
};