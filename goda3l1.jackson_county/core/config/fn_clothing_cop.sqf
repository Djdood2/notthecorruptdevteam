#include <macro.h>
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
ctrlSetText[3103,"ECPD Clothing Store"];

_ret = [];
switch (_filter) do
{
	case 0:
	{
		_ret set[count _ret,["RAVEN_SO1",nil,50]];
		_ret set[count _ret,["RAVEN_SO2",nil,50]];
		_ret set[count _ret,["RAVEN_SO3",nil,50]];
		_ret set[count _ret,["RAVEN_SO4",nil,50]];
		_ret set[count _ret,["RAVEN_SO5",nil,50]];
		_ret set[count _ret,["RAVEN_SO6",nil,50]];
		_ret set[count _ret,["RAVEN_SO7",nil,50]];
		_ret set[count _ret,["RAVEN_SO8",nil,50]];	
	};
	
	case 1:
	{
		_ret set[count _ret,["A3LRP_CAP_Sheriff",nil,5]];
		_ret set[count _ret,["A3LRP_CAP_Sheriff1",nil,5]];
		_ret set[count _ret,["H_PilotHelmetHeli_B",nil,20]];
		_ret set[count _ret,["H75th_Beanie_Blk2",nil,5]];
	};
	
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,5],
			["G_Shades_Blue",nil,5],
			["G_Sport_Blackred",nil,5],
			["G_Sport_Checkered",nil,5],
			["G_Sport_Blackyellow",nil,5],
			["G_Sport_BlackWhite",nil,5],
			["G_Aviator",nil,5],
			["G_Lowprofile",nil,5],
			["G_Combat",nil,5],
			["KA_MCU",nil,5],
			["EWK_Glasses_Cig4",nil,5],
			["G_Bandanna_blk",nil,5],
			["TRYK_kio_balaclava_ESS",nil,5],
			["TRYK_TAC_SET_NV_OD_2",nil,5],
			["G_Bandanna_aviator",nil,5],
			["G_Spectacles",nil,5],
			["G_B_Diving",nil,5]		 
		];
	};
	
	case 3:
	{
		_ret set[count _ret,"HG_Sheriff_White",nil,80]];
		_ret set[count _ret,["doc_vest",nil,80]];
		_ret set[count _ret,["V_RebreatherB","Rebreather",60]];
		_ret set[count _ret,["SO_VEST",nil,100]];
		_ret set[count _ret,["SO_Command_VEST",nil,100]];
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
