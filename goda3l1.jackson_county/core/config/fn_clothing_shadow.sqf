
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Shadow Family Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TW_SD_Uniform_Full",nil,150]
		];
	};
	
	case 1:
	{
		[
		["kio_skl_msk_pun",nil,35],
		["kio_skl_msk_black",nil,35],
		["kio_skl_msk_blood",nil,35],
		["kio_skl_msk_fire",nil,35],
		["kio_skl_msk_UK",nil,35],
		["TW_SD_Hats",nil,35],
		["TW_SD_Helmet",nil,35]
		];
	};
	
	case 2:
	{
		[
		["TRYK_kio_balaclavas",nil,10],
		["Nemesis_Gasmask",nil,10],
		["KA_MCU",nil,500]
		];
	};
	
	case 3:
	{
		[
		["ALRP_ShadowDivisionba_Vest",nil,5500]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]		
		];
	};
};