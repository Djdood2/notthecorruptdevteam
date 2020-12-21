#include <macro.h>
/*
	File: fn_clothing_TRU.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for LVMS clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"LVMS TRU Clothing Store"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["ALRP_TRU_Uniform",nil,100]
		];
	};
	
	case 1:
	{
		[
		["ALRP_TRU_Helmet",nil,10],
		["TRYK_H_PASGT_BLK","High Risk Headgear",10]
		];
	};
	
	case 2:
	{
		[
		["KA_MCU",nil,0],
		["Mask_M40_OD",nil,0],
		["EWK_Shemag_GRE","TRU Command Scarf",0],
		["G_Bandanna_blk",nil,0]
		];
	};
	
	case 3:
	{
		[
		["ALRP_LVMS_TRU2",nil,100],
		["ALRP_LVMS_TRU6",nil,100],
		["ALRP_LVMS_TRU1",nil,100],
		["ALRP_LVMS_TRU4",nil,100],
		["ALRP_LVMS_TRU3",nil,100],
		["ALRP_LVMS_TRU5",nil,100]
		];
	};
	
	case 4:
	{
		[
		["cg_invisbp",nil,50],
		["B_Kitbag_bik_Medic",nil,50],
		["koilmedicwhite",nil,50],
		["koilmedicblue",nil,50],
		["koilmedicyellow2",nil,50],
		["koilmedicdarkred",nil,50],
		["EF_FBAG_BK",nil,50],
		["EF_FBAG_HB_BK",nil,50],
		["TAC_BP_Butt_B2",nil,50],
		["TRYK_B_Medbag_BK",nil,50]
		];
	};
};