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
ctrlSetText[3103,"Dept Command Clothing Store"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["herpCOMMAND1","State Command Clothing",100]
		];
	};

	case 1:
	{
		[
		["H_Beret_blk","Operations Command Beret",100],
		["H_Beret_Colonel","Command Beret",100],
		["H_Beret_02","State Command Beret",100],
		["OpsC_Unseen","Command Helmet",100],
		["TRYK_UA_CAP2R","Commissioner Hat",100],
		["TRYK_R_CAP_BLK","Department Command Cap",100],
		["H_Shemag_olive","State Command Situational Headgear",100],
		["H_Watchcap_camo","State Command Operation Cap",100],
		["AM_PatrolHat","State Command Formal Hat",100],
		["Campaign_Hat_Dark","State Command Campaign Hat",100],
		["EF_wig_DHB","SC ONLY",100]
		];
	};

	case 2:
	{
		[
		["KA_MCU",nil,500],
		["G_Combat_Goggles_tna_F",nil,50],
		["EWK_Cigar2",nil,50],
		["EWK_Glasses_Shemag_tan_Cig6",nil,50]
		];
	};

	case 3:
	{
		[
		["TAC_V_tacv1LC_P",nil,100],
		["TAC_EI_RRV211_B","State Command Supervisor Vest",100],
		["V_PlateCarrier1_PMC_blk","SCO19 Vest",100],
		["A3LRP_SC_Spec_Vest",nil,25]
		];
	};

	case 4:
	{
		[
		["AM_PoliceBelt","Tactical Police Belt",25],
		["B_UAV_01_backpack_F","UAV Backpack",50]
		];
	};
};
