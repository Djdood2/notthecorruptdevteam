#include <macro.h>
/*
	File: fn_clothing_LVMSCommand.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for LVMS clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"LVMS Command Clothing Store"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["CG_EMS1","LT / Cpt Uniform",100],
		["OC_UNIFORM","Operations Command Uniform",100],
		["ALRP_EMS_MAJOR","Major Uniform",100]
		];
	};
	
	case 1:
	{
		[
		["TRYK_H_Headset2","Low Risk Headset",10],
		["TRYK_H_Headsetcap_blk","Low Risk Headset + Hat",10],
		["TRYK_H_PASGT_BLK","High Risk Headgear",10],
		["A3L_medic_helmet","Medic Helmet",10],
		["H75th_Beanie_Blk","[75Th] Beanie Tactical Blk",10],
		["H75th_Beanie_Blk2","[75Th] Beanie Blk",10],
		["H_CrewHelmetHeli_B","S&R Pilot Helmet",10],
		["H_PilotHelmetHeli_B","S&R CO-Pilot Helmet",10]
		];
	};
	
	case 2:
	{
		[
		["G_Aviator",nil,0],
		["G_Spectacles_Tinted",nil,0],
		["TRYK_SpsetG_Glasses",nil,0],
		["TRYK_US_ESS_Glasses_BLK",nil,0],
		["Masque_Chirurgical",nil,0],
		["G_B_Diving",nil,0],
		["G_Bandanna_aviator",nil,0]
		];
	};
	
	case 3:
	{
		[
		["ALRP_LVMS_Command_Vest",nil,100],
		["EMS_VEST_OC_CO","Operations Command Vest",100]
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