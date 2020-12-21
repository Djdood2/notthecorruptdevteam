
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["Spartans_Uniform",nil,150],
		["U_B_survival_uniform",nil,150],
		["TRYK_U_B_MARPAT_Wood_Tshirt",nil,150],
		["TRYK_U_B_BLKOCP_CombatUniform",nil,150],
		["U_O_Wetsuit",nil,150]
		];
	};
	
	case 1:
	{
		[
		["jamie_blackhelmet",nil,35],
		["H_PilotHelmetFighter_O",nil,35],
		["TRYK_H_Booniehat_MARPAT_WOOD",nil,35]
		];
	};
	
	case 2:
	{
		[
		["KA_MCU",nil,500],
		["Mask_M40",nil,500],
		["TRYK_kio_balaclavas",nil,10],
		["TRYK_kio_balaclava_ESS",nil,10],
		["EWK_Glasses_Cig6",nil,10]
		];
	};
	
	case 3:
	{
		[
		["CGRP_Spartan_Vest",nil,4500]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]	
		];
	};
};