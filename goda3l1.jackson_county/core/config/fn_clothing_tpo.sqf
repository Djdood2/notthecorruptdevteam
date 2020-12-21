
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Rebel Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_O_OfficerUniform_ocamo",nil,150],
			["TRYK_U_B_ARO1_BLK_CombatUniform",nil,150],
			["TRYK_U_B_AOR2_BLK_R_CombatUniform",nil,150],
			["TRYK_U_B_Snowt",nil,150],
			["TRYK_U_B_AOR2_BLK_R_CombatUniform",nil,150],
			["TRYK_U_B_AOR2_GRY_CombatUniform",nil,150],
			["TRYK_U_B_AOR2_GRY_R_CombatUniform",nil,150],
			["TRYK_U_B_AOR2_OD_R_CombatUniform",nil,150],
			["TRYK_U_B_BLKBLK_R_CombatUniform",nil,150],
			["TRYK_U_B_BLKTANR_CombatUniformTshirt",nil,150],
			["TRYK_U_B_fleece_UCP",nil,150],
			["TRYK_U_B_fleece",nil,150]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["TRYK_H_Booniehat_AOR2",nil,35],
			["TRYK_H_Booniehat_MARPAT_WOOD",nil,35],
			["TRYK_H_Booniehat_AOR1",nil,35],
			["TRYK_H_Booniehat_JSDF",nil,35],
			["H_Bandanna_camo",nil,65],
			["H_Shemag_olive",nil,65],
			["H_ShemagOpen_tan",nil,65],
			["H_ShemagOpen_khk",nil,65],
			["H_Shemag_olive_hs",nil,65],
			["jokermask","Joker Mask",55],
			["TRYK_Kio_Balaclava","Ghost Balaclava",15],
			["TRYK_H_Bandana_wig",nil,85],
			["TRYK_H_Bandana_wig_g",nil,85],
			["TRYK_Kio_Balaclava",nil,85],
			["kio_skl_msk","Black Skull Mask",52],
			["kio_skl_msk_grn","Green Skull Mask",52],
			["kio_skl_msk_red","Red Skull Mask",52]
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
			["EZRP_TPO_VEST",nil,2000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["cg_invisbp",nil,2050],
			["B_AssaultPack_cbr",nil,250],
			["B_FieldPack_ocamo",nil,300],
			["B_TacticalPack_oli","Olive Bergen",350],
			["B_Bergen_sgg","Sage Bergen",450],
			["B_Carryall_oli","Olive Carryall",500],
			["B_Carryall_khk","Khaki Carryall",500],
			//Camo Packs
			["B_AssaultPack_mcamo","MTP Assault Pack",400],
			["TRYK_B_AssaultPack_MARPAT_Wood","MARPAT Assault Pack",550],
			["TRYK_B_AssaultPack_Type2camo","Jungle Assault Pack",550],
			["TRYK_B_Kitbag_Base_JSDF","Jungle Kitbag",550],
			["B_Kitbag_mcamo","MTP Kitbag",550],
			["B_Bergen_dgtl_F",nil,12500],
			["TRYK_B_Belt_AOR2",nil,300],
			["TRYK_B_Belt_CYT",nil,300],
			["TRYK_B_Belt_GR",nil,300]
		];
	};
};