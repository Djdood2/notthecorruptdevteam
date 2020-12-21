#include <macro.h>
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
ctrlSetText[3103,"Adminb Clothing Store"];

_ret = [];
switch (_filter) do
{
	case 0:
	{
		_ret set[count _ret,["A3LRP_IA_Snr_Uniform",nil,100]];
		_ret set[count _ret,["A3LRP_IA_Cpl_Uniform",nil,100]];
		_ret set[count _ret,["A3LRP_IA_Sgt_Uniform",nil,100]];
		_ret set[count _ret,["A3LRP_IA_Lt_Uniorm",nil,100]];
		_ret set[count _ret,["A3LRP_IA_Cpt_Uniform",nil,100]];
	};

	case 1:
	{
		_ret set[count _ret,["OpsC_Med",nil,25]];
		_ret set[count _ret,["OpsC_Uncov_Goggles",nil,25]];
		_ret set[count _ret,["TRYK_H_Helmet_MARPAT_Wood",nil,25]];
		_ret set[count _ret,["H_PilotHelmetHeli_B",nil,25]];
		_ret set[count _ret,["Jamie_pcapblue",nil,25]];
	};

	case 2:
	{
		_ret =
		[
			["TRYK_kio_balaclava_ESS",nil,25],
			["G_Balaclava_TI_blk_F",nil,20],
			["TRYK_Shemagh_shade_G_N",nil,20],
			["G_Balaclava_TI_G_tna_F",nil,20],
			["G_B_Diving",nil,75]
		];
	};

	case 3:
	{
		_ret set[count _ret,["A3LRP_DOC_Vest",nil,25]];
		_ret set[count _ret,["A3LRP_DOC_PATROL_Vest",nil,25]];
		_ret set[count _ret,["A3LRP_DOC_LC_Vest",nil,25]];
		_ret set[count _ret,["A3LRP_DOC_HC_Vest",nil,25]];
	};

	case 4:
	{
		_ret =
		[
			["AM_PoliceBelt",nil,25],
			["B_UAV_01_backpack_F",nil,50]
		];
	};
};

_ret;
