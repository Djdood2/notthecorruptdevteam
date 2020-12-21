
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Supreme Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["white_uni",nil,150],
		["supremeuni1",nil,150],
		["supremeuni2",nil,150],
		["TRYK_U_B_BLKBLK_R_CombatUniform",nil,150],
		["U_B_survival_uniform",nil,150],
		["offwhite_uni",nil,150],
		["TRYK_U_B_BLKTANR_CombatUniformTshirt",nil,150]
		];
	};
	
	case 1:
	{
		[
		["EF_wig_DHB",nil,20],
		["H75th_Beanie_Blk2",nil,20],
		["OpsC_Uncov_Full",nil,20],
		["TRYK_R_CAP_BLK",nil,20],
		["TRYK_H_PASGT_BLK",nil,20]
		];
	};
	
	case 2:
	{
		[
		["TRYK_kio_balaclava_BLK",nil,10],	
		["TRYK_kio_balaclava_ear",nil,10]
		];
	};
	
	case 3:
	{
		[
		["SupremeVest1",nil,4500],
		["SupremeVest2",nil,4500],
		["V_PlateCarrierL_CTRG",nil,4500],
		["V_PlateCarrierH_CTRG",nil,4500],
		["KostuchaFamily",nil,4500]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]		
		];
	};
};