
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_U_B_BLKBLK_CombatUniform",nil,10],
		["doc_uni12",nil,10],
		["EF_HMFBI_1",nil,10],
		["EF_HMFBI_2",nil,10],
		["ALRP_FBI_Uniform",nil,10],
		["alofa_uni",nil,10],
		["dan_fbi_uni_dont_use",nil,10]
		];
	};
	
	case 1:
	{
		[
		["EWK_CigPag_Helmet2",nil,10],
		["TCG_swathelmet",nil,10],
		["CG_sert_H9",nil,10],
		["TRYK_H_ghillie_top_headless_green",nil,10]
		];
	};
	
	case 2:
	{
		[
		["a3l_balaclava",nil,10],
		["TYRK_ESS_BLKBLK_NV",nil,10],
		["NVGogglesB_blk_F",nil,10],
		["KA_MCU",nil,500]
		];
	};
	
	case 3:
	{
		[
		["FBI_BLK_VEST",nil,90],
		["FBI_TAN_VEST",nil,90],
		["ALRP_FBIVEST_2",nil,90],
		["ALRP_FBIVEST_1",nil,90],
		["ALRP_NEWFBI_DuncanVibora",nil,90],
		["ALRP_NEWFBI_KRAGE",nil,90],
		["ALRP_NEWFBI_KyleKezneck",nil,90],
		["ALRP_NEWFBI_NickGomez",nil,90],
		["ALRP_FELIX_ROGUE_VEST",nil,90],
		["ALRP_NEWFBI_Frankey",nil,90],
		["ALRP_DAN_ROGUE_VEST",nil,90],
		["ALRP_DAN_VEST",nil,90],
		["fbi_charlie_shanks",nil,500],
		["Nelson_FBI_Vest",nil,500],
		["alofa_fbi_vest",nil,500],
		
		
		["ALRP_NEWFBI_Chapo",nil,90],
		["ALRP_NEWFBI_RIDEALONG",nil,90],
		["ALRP_NEWFBI_TANK",nil,90]
		];
	};
	
	case 4:
	{
		[
        ["TRYK_B_tube_blk",nil,50],		
        ["cg_invisbp",nil,50]		
		];
	};
};