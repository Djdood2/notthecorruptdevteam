private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["A3LRP_TF141_BLUE",nil,150],
		["tf141_wetsuit",nil,150],
		["tf141_wetsuit_blue",nil,150]
		];
	};
	
	case 1:
	{
		[
		["A3LRP_TF141Beret_Blue",nil,50],
		["A3LRP_TF141Boonie_Blue",nil,50],
		["A3LRP_TF141Shemagh_Blue",nil,50],
		["OpsC_Cov_Full",nil,50],
		["OpsC_Uncov_Full",nil,50],
		["TRYK_R_CAP_BLK",nil,50],
		["TRYK_H_headsetcap_blk_Glasses",nil,50],
		["TRYK_H_ghillie_over",nil,50]
		];
	};
	
	case 2:
	{
		[
		["H75th_Face_Wear_Spook",nil,50],
		["Nemesis_Gasmask",nil,50],
		["G_Bandanna_aviator",nil,50],
		["G_Balaclava_TI_blk_F",nil,50],
		["KA_MCU",nil,50]
		];
	};
	
	case 3:
	{
		[
			["CGRP_Pusha_Vest",nil,4000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]		
		];
	};
};