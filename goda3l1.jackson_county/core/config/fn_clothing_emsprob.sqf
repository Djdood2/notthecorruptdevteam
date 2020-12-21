#include <macro.h>
/*
	File: fn_clothing_Probie.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for LVMS clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Probie Clothing Store"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["CG_EMS2","Probationary EMT Uniform",100]
		];
	};
	
	case 1:
	{
		[
		["TRYK_H_Headset2","Low Risk Headset",10],
		["TRYK_H_Headsetcap_blk","Low Risk Headset + Hat",10],
		["TRYK_H_PASGT_BLK","High Risk Headgear",10]
		];
	};
	
	case 2:
	{
		[
		["G_Aviator",nil,0],
		["G_Spectacles_Tinted",nil,0],
		["TRYK_SpsetG_Glasses",nil,0],
		["TRYK_US_ESS_Glasses_BLK",nil,0]
		];
	};
	
	case 3:
	{
		[
		["ALRP_LVMS_Vest",nil,100]
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
		["koilmedicdarkred",nil,50]
		];
	};
};