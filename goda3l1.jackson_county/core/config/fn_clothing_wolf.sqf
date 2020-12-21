
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"TWS Clothing Locker"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["TRYK_U_B_BLKBLK_CombatUniform","The Wolf Squad Tactical",150],
			["TRYK_U_B_Denim_T_BK","The Wolf Squad Casual",150]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["CG_sert_H3",nil,35],
			["TRYK_H_headsetcap_blk_Glasses",nil,35]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Balaclava_blk",nil,133],
			["G_Balaclava_combat",nil,133],
			["G_Balaclava_lowprofile",nil,133],
			["G_mas_wpn_bala_gog_b",nil,133],
			["G_mas_wpn_bala_b",nil,133],
			["G_Bandanna_sport",nil,133],
			["G_Bandanna_beast",nil,133],
			["G_Bandanna_aviator",nil,133],
			["G_Balaclava_combat",nil,133],
			["G_Balaclava_lowprofile",nil,133],
			["A3L_Balaclava",nil,133]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["EVOX_TWS_Vest",nil,133]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["cg_invisbp",nil,2050]
		];
	};
};