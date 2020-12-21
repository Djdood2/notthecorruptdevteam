#include <macro.h>
/*
	File: fn_clothing_copsert.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Marshals Clothing Store"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["A3L_LVMS_Colten",nil,100], 
		["A3L_LVMS_NavyY",nil,100],
		["A3L_LVMS_BO",nil,100],
		["A3L_LVMS_FB",nil,100],
		["A3L_LVMS_BB",nil,100],
		["A3L_LVMS_AL",nil,100],
		["A3L_LVMS_Peach",nil,100],
		["A3L_LVMS_TealY",nil,100],
		["A3L_LVMS_AFB",nil,100],
		["A3L_LVMS_Desert",nil,100],
		["A3L_LVMS_KW",nil,100],
		["A3L_LVMS_Li",nil,100],
		["A3L_LVMS_Navy",nil,100],
		["A3L_LVMS_NavyW",nil,100],
		["A3L_LVMS_PRPLW",nil,100],
		["A3L_LVMS_TanY",nil,100],
		["U_B_survival_uniform",nil,100],
		["EF_MKJKT",nil,100]
		];
	};
	
	case 1:
	{
		[
		["OpsC_Uncov_Full",nil,100],
		["H_Booniehat_khk_hs",nil,100],
		["EF_wig_DHB",nil,100],
		["ALRP_MSH_Helm",nil,100],
		["EWK_CigPack_Helmet",nil,100],
		["TRYK_H_ghillie_over_green",nil,100],
		["Jamie_blackhelmet",nil,100]
		];
	};
	
	case 2:
	{
		[
		["TRYK_kio_balaclava_ESS",nil,25],
		["KA_MCU",nil,25],
		["TRYK_kio_balaclavas",nil,25],
		["TRYK_TAC_SET_MEST_2",nil,25],
		["G_Balaclava_TI_G_blk_F",nil,25],
		["TRYK_headset2",nil,25],
		["TRYK_SPgear_PHC2_NV",nil,25],
		["H75th_Face_Wear_Spook",nil,25]
		];
	};
	
	case 3:
	{
		[
		["MS_Vest_BLK",nil,25],
		["MS_Vest_GRN",nil,25],
		["MS_Vest_Navy",nil,25],
		["TanMarshalVest",nil,25],
		["TAC_V_tacv1LC_MSL",nil,25]
		];
	};
	
	case 4:
	{
		[
        ["AM_PoliceBelt",nil,25],
        ["cg_invisbp",nil,25],
        ["H75th_Cutters",nil,25],
        ["TAC_BP_Butt_B2",nil,25],
        ["AM_PoliceBelt",nil,25],
		["B_UAV_01_backpack_F","UAV Backpack",25],
		["TRYK_B_Medbag_BK","MED Backpack",25]
		
		];
	};
};