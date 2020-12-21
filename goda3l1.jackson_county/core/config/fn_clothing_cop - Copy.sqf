#include <macro.h>
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
ctrlSetText[3103,"LSPD Clothing Store"];

_ret = [];
switch (_filter) do
{
	case 0:
	{
		_ret set[count _ret,["A3LRP_DOC_Cadet_Uniform",nil,100]];
		_ret set[count _ret,["A3LRP_DOC_Officer_Uniform",nil,100]];
		_ret set[count _ret,["A3LRP_DOC_Senior_Uniform",nil,100]];
		_ret set[count _ret,["A3LRP_DOC_Coporal_Uniform",nil,100]];
		_ret set[count _ret,["A3LRP_DOC_Sergeant_Uniform",nil,100]];
		_ret set[count _ret,["A3LRP_DOC_ChiefSergeant_Uniform",nil,100]];
		_ret set[count _ret,["A3LRP_DOC_LT_Uniform",nil,100]];
		_ret set[count _ret,["A3LRP_DOC_CPT_Uniform",nil,100]];
		_ret set[count _ret,["A3L_PDOFC",nil,100]];
		_ret set[count _ret,["A3L_PDOFC",nil,100]];
		_ret set[count _ret,["A3L_PDCPL",nil,100]];
		_ret set[count _ret,["A3L_PDSGT",nil,100]];
		_ret set[count _ret,["A3L_PDLT",nil,100]];
		_ret set[count _ret,["A3L_PDCPT",nil,100]];
		_ret set[count _ret,["ALRP_HRChiefSergeant","HR Chief Sergeant",100]];
		_ret set[count _ret,["ALRP_HRCMDUNI_1","HR Chief Sergeant",100]];
		_ret set[count _ret,["ALRP_HRLieutenant","HR Lieutenant",100]];
		_ret set[count _ret,["ALRP_HRCaptain","HR Captain",100]];
		_ret set[count _ret,["ALRP_FTO_CSGT","FTO Chief Sargeant",100]];
		_ret set[count _ret,["ALRP_FTO_LT","FTO Lieutenant",100]];
		_ret set[count _ret,["ALRP_FTO_CPT","FTO Captain",100]];
		_ret set[count _ret,["herpFTO1","FTO Uniform",100]];
		_ret set[count _ret,["Jamie_police5_4","IA Captain Clothing",100]];
		_ret set[count _ret,["KAEL_SUITS_BR_F12",nil,100]];
		_ret set[count _ret,["ALRP_IA_Sweater",nil,100]];
		_ret set[count _ret,["TRYK_U_denim_hood_blk",nil,100]];
		_ret set[count _ret,["A3L_PDASSTCHIEF",nil,100]];
		_ret set[count _ret,["A3L_PDCHIEF",nil,100]];
	
	};
	
	case 1:
	{
		_ret set[count _ret,["A3LRP_CAP_Cadet",nil,25]];
		_ret set[count _ret,["A3LRP_CAP_Police","LSPD Cap",25]];
		_ret set[count _ret,["TRYK_H_PASGT_BLK","LSPD Code Red Helmet",25]];
		_ret set[count _ret,["H_RacingHelmet_1_white_F","Biker Helmet",25]];
		_ret set[count _ret,["H_Watchcap_blk","NCA Patrol Headgear",25]];
		_ret set[count _ret,["TRYK_ESS_CAP_OD",nil,25]];
		_ret set[count _ret,["A3LRP_CAP_Sheriff",nil,25]];
		_ret set[count _ret,["A3LRP_CAP_Sheriff1",nil,25]];
		_ret set[count _ret,["A3L_sargehat","FTO Hat",25]];
		_ret set[count _ret,["H_HelmetSpecB_paint2","Martial Law Helmet",25]];
		_ret set[count _ret,["H_PilotHelmetHeli_B",nil,25]];
		_ret set[count _ret,["H75th_Beanie_Blk2",nil,25]];
		_ret set[count _ret,["TRYK_H_headsetcap_blk_Glasses",nil,25]];
	};
	
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["KA_MCU",nil,55],
			["EWK_Glasses_Cig4",nil,55],
			["G_Bandanna_blk",nil,55],
			["TRYK_kio_balaclava_ESS",nil,55],
			["G_Balaclava_TI_G_tna_F",nil,55],
			["TRYK_TAC_SET_NV_OD_2",nil,55],
			["G_Balaclava_oli",nil,55],
			["G_Bandanna_aviator",nil,75],
			["G_Spectacles",nil,75],
			["G_B_Diving",nil,75]		 
		];
	};
	
	case 3:
	{
		_ret set[count _ret,["V_RebreatherB","Rebreather",25]];
		_ret set[count _ret,["TCG_policevest1","Patrol Vest",25]];
		_ret set[count _ret,["TAC_PBDFG2CPP_BK_1","Code Red Vest",25]];
		_ret set[count _ret,["A3LRP_DOC_Vest",nil,25]];
		_ret set[count _ret,["A3LRP_DOC_LC_Vest",nil,25]];
		_ret set[count _ret,["A3LRP_DOC_HC_Vest",nil,25]];
		_ret set[count _ret,["A3LRP_DOC_PATROL_Vest",nil,25]];
		_ret set[count _ret,["A3LRP_Troop_Vest",nil,25]];
		_ret set[count _ret,["A3LRP_Troop_LC_Vest",nil,25]];
		_ret set[count _ret,["A3LRP_Troop_HC_Vest",nil,25]];
		_ret set[count _ret,["CID_Vest_Fix",nil,25]];
		_ret set[count _ret,["A3LRP_IA_HC_Vest",nil,25]];
		_ret set[count _ret,["A3LRP_IA_LC_Vest",nil,25]];
		_ret set[count _ret,["A3LRP_IA_Vest",nil,25]];
		_ret set[count _ret,["ALRP_HRVest",nil,25]];
		_ret set[count _ret,["A3LRP_HR_HC_Vest",nil,25]];
		_ret set[count _ret,["A3LRP_HR_LC_Vest",nil,25]];
		_ret set[count _ret,["FTO_Vest_DPTcmd","FTO Command VEST",25]];
		_ret set[count _ret,["FTO_Vest_SNRTrainer","FTO Senior Trainer VEST",25]];
		_ret set[count _ret,["FTO_Vest_Trainer","FTO Trainer VEST",25]];
		_ret set[count _ret,["FTO_Vest_Trial","FTO Trial Trainer VEST",25]];
	};
	
	case 4:
	{
		_ret =
		[
			["AM_PoliceBelt","Tactical Police Belt",25],
			["cg_invisbp",nil,50]	
		];
	};
};

_ret;
