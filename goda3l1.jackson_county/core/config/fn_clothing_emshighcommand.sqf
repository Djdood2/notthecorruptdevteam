#include <macro.h>
/*
	File: fn_clothing_HighCommand.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for LVMS clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"LVMS High Command Clothing Store"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["ALRP_EMS_HighCommandSweater","High Command Sweater (Red)",100],
		["HC_UNIFORM_GUCCI","High Command Gucci Uniform",100],
		["HC_UNIFORM_C","High Command Uniform",100],
		["ALRP_EMS_Sweater","High Command Sweater (Blue)",100],
		["ALRP_EMSHCUni_2","High Command Sweater (Yellow)",0],
		["fire_uni1","Firefighter Uniform",100],
		["KAEL_SUITS_BR_F13","White Suit",0],
		["KAEL_SUITS_BR_F12","Black Suit",0],
		["ALRP_LVMSHCUni_1","High Command Uniform",0],
		["ALRP_EMSHCUni_2","High Command Uniform",100]
		];
	};
	
	case 1:
	{
		[
		["TRYK_H_Headset2","Low Risk Headset",10],
		["LMVS_HC_BERET","High Command Beret",10],
		["TRYK_H_Headsetcap_blk","Low Risk Headset + Hat",10],
		["TRYK_H_PASGT_BLK","High Risk Headgear",10],
		["A3L_medic_helmet","Medic Helmet",10],
		["H75th_Beanie_Blk","[75Th] Beanie Tactical Blk",10],
		["H75th_Beanie_Blk2","[75Th] Beanie Blk",10],
		["H_CrewHelmetHeli_B","S&R Pilot Helmet",10],
		["H_PilotHelmetHeli_B","S&R CO-Pilot Helmet",10],
		["ALRP_TRU_Helmet",nil,10],
		["CG_sert_H1","White Helmet",10],
		["BL_trump_Hat","Trump's Hair",10],
		["Gorb_SantaHat","Santa Hat",10],
		["Gorb_SantaHat_Green","Elf Hat",10],
		["Gorb_Reindeer","Reindeer Mask",10],
		["ALRP_TRU_Helmet",nil,10],
		["mgsr_headbag","Bag",10],
		["OpsC_Cov_Full","75th Goggle/Shemagh",10],
		["OpsC_Uncov_Shemagh","75th Shemagh",10],
		["firehat","Firehat",10]
		];
	};
	
	case 2:
	{
		[
		["G_Aviator",nil,100],
		["G_Spectacles_Tinted",nil,100],
		["TRYK_SpsetG_Glasses",nil,100],
		["TRYK_US_ESS_Glasses_BLK",nil,100],
		["Masque_Chirurgical",nil,100],
		["G_B_Diving",nil,100],
		["EWK_Shemag_LULZ",nil,0],
		["G_Bandanna_aviator",nil,100]
		];
	};
	
	case 3:
	{
		[
		["ALRP_LVMS_HighCommand_Vest",nil,100],
		["EMS_VEST_HC_CO",nil,100],
		["EMS_VEST_HC_DC","Deputy Commissioner Vest",100],
		["EMS_VEST_HC_C","Commissioner Vest",100],
		["ALRP_EMSHC1_vest",nil,100],
		["lewis_vest",nil,100],
		["jay_lvms_vest",nil,100],
		["slim_lvms_vest",nil,100]
		];
	};
	
	case 4:
	{
		[
		["cg_invisbp",nil,100],
		["B_Kitbag_bik_Medic",nil,100],
		["koilmedicwhite",nil,100],
		["koilmedicblue",nil,100],
		["koilmedicyellow2",nil,100],
		["koilmedicdarkred",nil,100],
		["EF_FBAG_BK",nil,100],
		["EF_FBAG_HB_BK",nil,100],
		["TAC_BP_Butt_B2",nil,100],
		["TRYK_B_Medbag_BK",nil,100]
		];
	};
};