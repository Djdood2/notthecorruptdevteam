[] spawn  {
	private["_fnc_food","_fnc_water"];
	_fnc_food =
	{
    if (life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";}
    else
    {
        life_hunger = life_hunger - 10;
        [] call life_fnc_hudUpdate;
        if (life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";};
        switch (life_hunger) do {
            case 30: {hint localize "STR_NOTF_EatMSG_1";};
            case 20: {hint localize "STR_NOTF_EatMSG_2";};
            case 10: {hint localize "STR_NOTF_EatMSG_3";player setFatigue 1;};
            };
        };
    };


	_fnc_water = {
    if (life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";}
    else
    {
        life_thirst = life_thirst - 10;
        [] call life_fnc_hudUpdate;
        if (life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";};
        switch (life_thirst) do  {
            case 30: {hint localize "STR_NOTF_DrinkMSG_1";};
            case 20: {hint localize "STR_NOTF_DrinkMSG_2";player setFatigue 1;};
            case 10: {hint localize "STR_NOTF_DrinkMSG_3";player setFatigue 1;};
        };
    };
};

	while{true} do
	{
		sleep 420;
		if (life_eattotal > 9) then {
			life_eattotal = life_eattotal - 10;
		};
		[] call _fnc_water;
		uiSleep 420;
		if (life_eattotal > 9) then {
			life_eattotal = life_eattotal - 10;
		};
		[] call _fnc_food;
		[7] call SOCK_fnc_updatePartial;
	};
};
[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 8);
		life_maxWeight = life_maxWeightT + _load;
		waitUntil {backpack player != _bp};
		if(backpack player == "") then
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};

[] spawn {
while {true} do {
	_Admins = ["76561198041914511","76561198078559595"];
	_UidChecker = getPlayerUID player in _Admins;
	_weaponwhitelist = ["A3L_Extinguisher","arifle_Mk20_plain_F","hlc_smg_mp510","RH_M16A3","RH_g19","RH_fn57","JM_Taserb_26","JM_Taser_26",
	"arifle_SDAR_F","arifle_MX_GL_Black_F","KA_SilverBaller","RH_kimber_nw","Desert_Eagle","hgun_ACPC2_F","hgun_Pistol_heavy_01_F",
	"RH_vp70","RH_muzi","RH_tec9","RH_vz61","RH_g18","RHARD_M4DDR_F","RHARD_M4DDRP_F","RHARD_M4DDRPD_F","RHARD_M4DDRD_F","RHARD_M4DDRD_F",
	"RHARD_M4DDR_B_F","RHARD_M4DDRD_B_F","RH_SAMR","RH_m4a6_wdl","RH_m16a6_wdl","RH_M4_moe_g","CSW_LVOA_C_Black_TOB","CSW_LVOA_C_Block","FHQ_arifle_ACR_snw",
	"KA_UMP45","hlc_smg_mp510","KA_UMP9","KA_RO991","KA_PP19","hlc_rifle_bcmjack","KA_MP7_Rifle_Black_20Rnd","KA_MP7_Rifle_Green_20Rnd","KA_M98B",
	"RH_ar10","FHQ_arifle_ACR_wdl","RH_M16a1","hlc_rifle_augsrcarb_b","hlc_rifle_augsrcarb","arifle_CTAR_hex_F",
	"KA_MP7_Rifle_Black_40Rnd","KA_MP7_Rifle_Green_40Rnd","arifle_Mk20_plain_F","arifle_Mk20_F","arifle_Mk20C_plain_F","arifle_Mk20C_F",
	"A3L_AK47s","A3L_AK47sgold","A3L_AK47sMag","RH_m4_des","RH_m4_wdl","RH_sbr9_des","RH_sbr9_wdl","hlc_smg_mp5k_PDW",
	"FHQ_arifle_Galil_black","arifle_AKM_F","hlc_rifle_akm","hlc_rifle_ak74_dirty","hlc_rifle_ak74_dirty2","FHQ_arifle_M4_long_blk",
	"arifle_Mk20_plain_F","hlc_smg_mp510","RH_M16A3","RH_g19","RH_fn57","arifle_SDAR_F","arifle_MX_GL_Black_F",
	"RH_M4_ris","RH_PDW","RH_usp","RH_M4A6","RH_M4_ris_m","RH_kimber_nw","rr_m4","arifle_MX_Black_F","RH_m9",
	"RH_M16A4","RH_p226","hlc_rifle_RU556","hlc_rifle_SAMR","hlc_rifle_Bushmaster300","arifle_ARX_blk_F",
	"hlc_rifle_ak12","RH_M4sbr_b","hlc_smg_mp510","hlc_rifle_bcmjack","RH_Hk416","RH_vz61","RH_m4_tg","RH_m4_wdl",
	"RH_sbr9_des","RH_sbr9_wdl","RH_SR25EC","RH_Hk416s","FHQ_smg_p90_black","rr_scarstandard","FHQ_arifle_ACR_blk",
	"FHQ_arifle_M4std_long_blk","RH_M4_moe_b","RH_SAMR","hlc_smg_mp510","KA_UMP45","RH_M4_moe_b","RH_M27IAR","FHQ_srifle_M2010_WDL",
	"RH_SR25EC","Mossberg_590","RH_bull","CSW_LVOA_C_Black","rr_scarstandard","FHQ_arifle_ACR_blk","RH_M16A6",
	"FHQ_arifle_M4std_long_blk","RH_Hk416c","arifle_CTAR_blk_F","RH_M27IAR","arifle_ARX_ghex_F","hlc_rifle_auga2_b","RH_Mk11","Rangefinder","Binocular","Laserdesignator",
	"arifle_ARX_hex_F","arifle_MX_SW_F","arifle_MX_SW_Black_F","arifle_MX_SW_khk_F","hlc_rifle_Colt727","hlc_rifle_auga3_b","RH_bullb","hgun_P07_F","hgun_P07_snds_F",
	"SMG_01_F","hlc_rifle_vendimus","RH_hb_b","kio_sr25","arifle_SPAR_03_khk_F","arifle_SPAR_03_snd_F","RH_m110","XZ_CamRecorder_2","XZ_CamRecorder_1","Xnooz_AppareilPhoto",
	"Xnooz_micro1","Xnooz_micro2","KPFS_P1","arifle_AK12_F","arifle_MX_ACO_pointer_F","arifle_MX_pointer_F","AN94_MTK83","FHQ_arifle_ACR_blk","SG553","hlc_rifle_bcmblackjack"];
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	_vestwhitelist = ["V_Press_F","V_Safety_blue_F","V_Safety_orange_F","V_Safety_yellow_F","V_RebreatherIR",
	"k_cut_1","k_cut_2","k_cut_3","k_cut_4","k_cut_5","k_cut_6","k_cut_7","A3LRP_DOC_Vest","A3LRP_DOC_LC_Vest","A3LRP_DOC_HC_Vest","A3LRP_DOC_PATROL_Vest","A3LRP_Troop_Vest","A3LRP_Troop_LC_Vest","A3LRP_Troop_HC_Vest",
	"k_cut_8","k_cut_9","k_cut_10","k_cut_11","V_RebreatherB","TCG_policevest1","TAC_PBDFG2CPP_BK_1",
	"house_b_vest","CID_Vest_Fix","A3LRP_IA_HC_Vest","A3LRP_IA_LC_Vest","A3LRP_IA_Vest","ALRP_HRVest","V_PlateCarrier1_PMC_blk","A3LRP_SC_Spec_Vest","TAC_EI_RRV211_B","SWATvest1",
	"A3LRP_HR_HC_Vest","A3LRP_HR_LC_Vest","FTO_Vest_DPTcmd","FTO_Vest_SNRTrainer","FTO_Vest_Trainer","FTO_Vest_Trial",
	"SWAT_VEST_NCA","SWAT_VEST_NCAAlt","ALRP_Alfie","ALRP_Pugs","FRITH_ruin_vestia_lite_grn","FRITH_ruin_vestia_lite_tar","FRITH_ruin_vestia_lite_ltr",
	"FRITH_ruin_vestia_lite_nja","FRITH_ruin_vestia_ghm","FRITH_ruin_vestia_grn","FRITH_ruin_vestia_ltr","FRITH_ruin_vestia_nja","TAC_PBDFG2_B_1",
	"TAC_PBDFG2_CY_1","TAC_PBDFG2_RG_1","TAC_PBDFG2CPL_BK","TAC_Punisher_Vest_BK","TAC_V_tacv1M_BK","TAC_HGB_B","TAC_HGB_Khaki","TAC_HGB_OD","V_PlateCarrierInd_PMC_blk",
	"V_TacVest_khk","V_TacVest_oli","V_TacVest_brn","V_BandollierB_cbr","V_BandollierB_rgr","V_BandollierB_khk","V_BandollierB_oli","V_HarnessO_brn","V_HarnessO_gry",
	"TCG_swatvest1","CORLEONES_VEST","EMS_VEST","EMS_VEST_C","EMS_VEST_L","SR_VEST","SR_VEST_C","SR_VEST_L","TRYK_V_Bulletproof_BL","TRYK_V_Bulletproof_BLK","TRYK_V_Bulletproof",
	"TAC_Jvest_B","TAC_PBDFG2_B_1","TAC_FS_FO_B","ALRP_LVMS_Command_Vest","EMS_VEST_OC_CO","ALRP_LVMS_HighCommand_Vest","EMS_VEST_HC_CO","EMS_VEST_HC_DC","EMS_VEST_HC_C","ALRP_EMSHC1_vest",
	"lewis_vest","jay_lvms_vest","slim_lvms_vest","ALRP_LVMS_Vest","ALRP_LVMS_TRU2","ALRP_LVMS_TRU6","ALRP_LVMS_TRU1","ALRP_LVMS_TRU4","ALRP_LVMS_TRU3","ALRP_LVMS_TRU5","V_PlateCarrierL_CTRG",
	"A3LRP_LanV_King","A3LRP_LanV_KingsHand","A3LRP_LanV_HighLord","A3LRP_LanV_Lord","A3LRP_LanV_ManAtArms","A3LRP_LanV_KingsGuard","A3LRP_LanV_Serjeant","A3LRP_LanV_Footman","A3LRP_LanV_Lev","A3LRP_LanV_Ridealong",
	"odd_future_vest","offwhite_white_vest","offwhite_black_vest","supreme_vest","gucci_vest","RUSSIA_VEST_CO","S01_Vest","Spartans_Vest","ALRP_RPD","V_PlateCarrier1_rgr_noflag_F","A3LRP_TF141_VEST_BLUE","V_PlateCarrier1_rgr","GUCCI_VEST_P","TRYK_V_PlateCarrier_JSDF","V_PlateCarrierSpec_rgr","V_PlateCarrierIA1_dgtl","CGRP_SBH_Vest","CGRP_SBH_Vest1","CGRP_Pusha_Vest","A3LRP_IA_HC_Vest","A3LRP_IA_LC_Vest","A3LRP_IA_Vest","ALRP_HRVest","A3LRP_HR_HC_Vest","A3LRP_HR_LC_Vest","FTO_Vest_DPTcmd","FTO_Vest_SNRTrainer","FTO_Vest_Trainer","FTO_Vest_Trial","Catraz_SecretService_Vest","Catraz_SecretService_Hvy_Vest","CGRP_Spartan_Vest","MS_Vest_BLK","MS_Vest_GRN","MS_Vest_Navy","TAC_V_tacv1LC_MSL","TAC_V_tacv1LC_P","SupremeVest1","SupremeVest2","WolfeCartel","KostuchaFamily","TanMarshalVest","SO_VEST","SO_Command_VEST","SERT_VEST_BLACK","CID_Vest_Fix"];
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	_uniformwhitelist = ["house_baratheon_uniform","KI_GucciChecker1","KI_GucciCheckerBT1","KI_GucciHoriPattern1","KI_GucciHoriPatternBT1","KI_GucciLogo1","KI_GucciLogoBlack1","KI_GucciStripe1","KI_LVBG1",
	"KI_LVBGPat1","KI_OvoBT1","KI_OvoWT1","KI_SupremeBlack1","KI_SupremeBlackWT1","KI_SupremeStrikeBlack1","KI_SupremeStrikeBurgundy1","KI_SupremeStrikeWhite1","KI_SupremeWhite1","KI_SupremeWhiteBT1",
	"ALRPJakeRead","ALRPCulyerPuggy","ALRPHarveyG","ALRPDusty","ALRPJeff","ALRPPopcoin","ALRPbeware","ALRP911","ALRPTrump","ALRPRules","ALRPRemember","ALRPVape","ALRPBantu","ALRPHarambe","alrppugs","alrppugsnotdrugs",
	"alrpbarney","alrpcobra","ALRPCulyer","alrpcow","alrpdrinkdriver","alrpfetus","alrpfour","alrpguilt","alrpbond","alrpleon","alrpllama","alrpmoose","alrpnandos","alrppedo","alrppostman","alrppringle","alrpputin","alrpsuit","alrpsuperman","alrpwithstupid","Arabian_dress1","Arabian_dress2","Arabian_dress4","EF_MX1","EF_MKJKT","EF_MKJKT2","EF_M_jkt2","EF_M_jkt22","EF_M_jkt1","EF_M_jkt1","EF_M_jkt2_2","EF_M_jkt2_22","EF_M_jkt1_2","EF_M_jkt2_3","EF_M_jkt2_32","EF_M_jkt1_3","EF_M_jkt32_2","EF_M_jkt2_4",
	"EF_M_jkt3","EF_M_jkt32","EF_HM_LPBPS","EF_HM_LPBP","EF_HM_LPBR","EF_HM_LPBW","EF_HM_LPB","EF_HM_LPBL","EF_HM_LPBPS2","EF_HM_LPBP2","EF_HM_LPBL2","KAEL_SUITS_BR_F12","A3L_Suit_Uniform","KAEL_SUITS_BR_F","KAEL_SUITS_BR_F3","KAEL_SUITS_BR_F4","KAEL_SUITS_BR_F5","KAEL_SUITS_BR_F6","KAEL_SUITS_BR_F8",
	"KAEL_SUITS_BR_F9","KAEL_SUITS_BR_F10","KAEL_SUITS_BR_F11","KAEL_SUITS_BR_F13","KAEL_SUITS_BR_F14","TRYK_SUITS_BLK_F","TRYK_SUITS_BR_F","EF_suit_1","EF_suit_2","EF_suit_3","EF_suit_4","EF_suit_5","EF_suit_6","EF_FEM_3_42","EF_FEM_3_3LPBPS","EF_FEM_3_3LPBP","EF_FEM_3_3LPBR","EF_FEM_3_3LPBW","EF_FEM_3_3LPB",
	"EF_FEM_3_3LPBL","EF_FEM_3_3LPBPS2","EF_FEM_3_3LPBP2","EF_FEM_3_3LPBR2","EF_FEM_3_3LPBW2","EF_FEM_3_3LPB2","EF_FEM_3_3LPBL2","EF_FEM_3_75","EF_FEM_3_75R","EF_FEM_3_76","EF_FEM_3_76R","EF_FEM_3_73","EF_FEM_3_73R","EF_FEM_3_74","EF_FEM_3_74R","EF_FEM_3_7","EF_FEM_3_7R","EF_FEM_3_72","EF_FEM_3_72R","EF_FEM_3_5B",
	"EF_FEM_3_5BP","EF_FEM_3_5VP","EF_FEM_3_5RC","EF_FEM_3_5W","EF_FEM_3_52","EF_FEM_3","EF_FEM_4A","EF_FEM_4A2","EF_FEM_4A2_2","EF_FEM_4_2LPBPS","EF_FEM_4_2LPBP","EF_FEM_4_2LPBR","EF_FEM_4_2LPBL","EF_FEM_4_2LPBPS2","EF_FEM_4_2LPBR2","EF_FEM_4_2LPBW2","EF_FEM_4_2LPB2","EF_FEM_4_2LPBL2","EF_FEM_4_75","EF_FEM_4_76","EF_FEM_4_73","EF_FEM_4_73R","EF_FEM_4_74",
	"EF_FEM_4_7","EF_FEM_4_72","EF_FEM_4_4B","EF_FEM_4_4BP","EF_FEM_4_4VP","EF_FEM_4_4RC","EF_FEM_4_4W","EF_FEM_5","EF_FEM_62","EF_FEM_6","TRYK_U_B_PCUODHs","TRYK_U_B_PCUGHs","TRYK_U_B_PCUHs","TRYK_U_B_BLOD_T","TRYK_U_B_BLKTANR_CombatUniformTshirt","TRYK_U_B_BLTAN_T","TRYK_U_B_fleece_UCP","TRYK_U_B_ODTANR_CombatUniformTshirt","TRYK_U_B_PCUGs_OD","TRYK_U_B_PCUGs_gry","TRYK_U_B_PCUGs_BLK","TRYK_U_B_C02_Tsirt","TRYK_OVERALL_SAGE_BLKboots_nk",
	"TRYK_OVERALL_nok_flesh","TRYK_U_B_wh_blk_Rollup_CombatUniform","TRYK_U_B_wh_tan_Rollup_CombatUniform","TRYK_U_pad_hood_Blk","TRYK_U_denim_hood_blk","TRYK_U_denim_jersey_blk","TRYK_U_denim_jersey_blu","TRYK_U_denim_hood_nc","TRYK_U_taki_wh","TRYK_U_taki_BLK","TRYK_U_taki_COY","TRYK_U_B_BLK_T_BK","TRYK_U_B_BLK_T_WH","TRYK_U_B_Denim_T_BK","TRYK_U_B_Denim_T_WH","A3L_Priest_Uniform","A3L_Character_Uniform","A3L_Dude_Outfit","A3L_Farmer_Outfit","A3L_Worker_Outfit","A3L_SpookyMummy","skn_u_nbc_opf_yellow","A3LRP_DOC_Cadet_Uniform","A3LRP_DOC_Officer_Uniform","A3LRP_DOC_Senior_Uniform","A3LRP_DOC_Coporal_Uniform","A3LRP_DOC_Sergeant_Uniform","A3LRP_DOC_ChiefSergeant_Uniform","A3LRP_DOC_LT_Uniform","A3LRP_DOC_CPT_Uniform","A3L_PDOFC","A3L_PDCPL","A3L_PDSGT","A3L_PDLT","A3L_PDCPT","A3L_PDASSTCHIEF","A3L_PDCHIEF","A3LRP_IA_Snr_Uniform","A3LRP_IA_Cpl_Uniform","A3LRP_IA_Sgt_Uniform","A3LRP_IA_CSgt_Uniform",
	"A3LRP_IA_Lt_Uniform","A3LRP_IA_Cpt_Uniform","ALRP_HRChiefSergeant","ALRP_HRCMDUNI_1","ALRP_HRLieutenant","ALRP_HRCaptain","ALRP_FTO_CSGT","ALRP_FTO_LT","ALRP_FTO_CPT","herpFTO1","Jamie_police5_4","KAEL_SUITS_BR_F12","ALRP_IA_Sweater","TRYK_U_denim_hood_blk","jamie_police5_5","U_FRITH_RUIN_sdr_fabdpm","U_FRITH_RUIN_coffgrn","U_FRITH_RUIN_cofftan","U_FRITH_RUIN_sdr_fabmtp","U_FRITH_RUIN_sdr_fabrus","TRYK_U_B_PCUGs_gry",
	"U_FRITH_RUIN_SDR_Tshirt_oli_bet","U_FRITH_RUIN_TSH_cry","U_FRITH_RUIN_TSH_wht_zap","U_FRITH_RUIN_TSH_wht_stk","U_FRITH_RUIN_TSH_wht_fpk","U_FRITH_RUIN_WKR_dark","U_FRITH_RUIN_SDR_snip_hawk","U_FRITH_RUIN_SDR_snip_crow","U_I_FullGhillie_lsh","U_O_OfficerUniform_ocamo","TRYK_U_B_ARO1_BLK_CombatUniform","TRYK_U_B_AOR2_BLK_R_CombatUniform","TRYK_U_B_Snowt","TRYK_U_B_AOR2_BLK_R_CombatUniform","TRYK_U_B_AOR2_GRY_CombatUniform","TRYK_U_B_AOR2_GRY_R_CombatUniform","TRYK_U_B_AOR2_OD_R_CombatUniform","TRYK_U_B_BLKTANR_CombatUniformTshirt","TRYK_U_B_fleece_UCP","TRYK_U_B_fleece","TRYK_U_B_BLK_tan_Rollup_CombatUniform","TRYK_U_B_PCUHsW3","EF_FEM_2U","EF_FEM_2BK","herpCOMMAND1","swat_uni1","A3L_SWAT_Clothes","doc_uni4","doc_uni12","doc_uni6","doc_uni11","doc_uni8","doc_uni9","doc_uni7","doc_uni10","doc_uni2","doc_uni1","doc_uni3","doc_uni5","CORLEONES_UNIFORM","U_O_T_FullGhillie_tna_F","U_B_Wetsuit","TRYK_U_B_PCUODs","EMS_UNIFORM","LVMS_FTA_UNI","SR_UNIFORM","EF_MKJKT_EMS2","EF_M_EMS_U","CG_EMS1","OC_UNIFORM","ALRP_EMS_MAJOR","ALRP_EMS_HighCommandSweater","HC_UNIFORM_GUCCI","HC_UNIFORM_C","ALRP_EMS_Sweater","ALRP_EMSHCUni_2","fire_uni1","KAEL_SUITS_BR_F13","KAEL_SUITS_BR_F12","ALRP_LVMSHCUni_1","ALRP_EMSHCUni_2","CG_EMS2","ALRP_TRU_Uniform","U_B_survival_uniform","A3LRP_Lannister_Uniform_Base_Uni","ALRP_KAPUni_1","U_C_Driver_1_black","U_C_Driver_1_blue","U_C_Driver_1_red","U_C_Driver_1_orange","U_C_Driver_1_green","U_C_Driver_1_white","U_C_Driver_1_yellow","U_C_Driver_2","U_C_Driver_1","U_C_Driver_3","U_C_Driver_4","odd_future_uni","white_uni","supreme_uni_new","offwhite_camo","offwhite_uni","skn_u_nbc_opf_red","skn_u_nbc_opf_white","skn_u_nbc_opf_blue","skn_u_nbc_opf_yellow","RUSSIA_UNI_CO","TRYK_U_B_BLKOCP_CombatUniform","TW_SD_Uniform_Full","TRYK_U_B_MARPAT_Wood_Tshirt","Spartans_Uniform","RPD_Sweater","A3LRP_TF141_BLUE","tf141_wetsuit","tf141_wetsuit_blue","RAVEN_SO1","RAVEN_SO2","RAVEN_SO3","RAVEN_SO4","RAVEN_SO5","RAVEN_SO6","RAVEN_SO7","RAVEN_SO8"];
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	_checkIfInside = currentWeapon player in _weaponwhitelist;
	if (!_checkIfInside && currentWeapon player != "" && !_UidChecker) then {
		_wep = currentWeapon player;
		hint "Weapon removed - Blacklisted.";
		player removeWeapon currentWeapon player;
		_uid = getPlayerUID player;
		_name = name player;
		_message = _name+" ("+_uid+")"+" Just tried to spawn in a weapon that was not whitelisted! The classname of this weapon was:" +_wep;
		[_message] remoteExecCall ["life_fnc_adminnotif"];
	};
	_checkVest = vest player in _vestwhitelist;
	if (!_checkVest && vest player != "" && !_UidChecker) then {
		_vest = vest player;
		hint "Vest removed - Blacklisted.";
		removeVest player;
		_uid = getPlayerUID player;
		_name = name player;
		_message = _name+" ("+_uid+")"+" Just tried to spawn in a vest that was not whitelisted! The classname of this vest was:" +_vest;
		[_message] remoteExecCall ["life_fnc_adminnotif"];
	};
	uiSleep 1;
};
};

[] spawn
{
	while {true} do
	{
		sleep 3;
		if(life_carryWeight > life_maxWeight && !isForcedWalk player) then {
			player forceWalk true;
			player setFatigue 1;
			hint localize "STR_NOTF_MaxWeight";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};

[] spawn
{
	private["_walkDis","_myLastPos","_MaxWalk","_runHunger","_runDehydrate"];
	_walkDis = 0;
	_myLastPos = (getPos player select 0) + (getPos player select 1);
	_MaxWalk = 1200;
	while{true} do
	{
		sleep 1;
		if(!alive player) then {_walkDis = 0;}
		else
		{
			_CurPos = (getPos player select 0) + (getPos player select 1);
			if((_CurPos != _myLastPos) && (vehicle player == player)) then
			{
				_walkDis = _walkDis + 1;
				if(_walkDis == _MaxWalk) then
				{
					_walkDis = 0;
					life_thirst = life_thirst - 5;
					life_hunger = life_hunger - 5;
					[] call life_fnc_hudUpdate;
				};
			};
			_myLastPos = (getPos player select 0) + (getPos player select 1);
		};
	};
};

fnc_doHealth =
	{
		if(!alive player) exitwith {};
		params [["_adjust", "", [""]], ["_amount", 0, [0]], ["_source", objNull, [objNull]]];
		if(_adjust == "Add") then {
			myHealth = myHealth - _amount;
			if(myHealth > 0.6 && (damage player) > 0) then {
				player setdamage 0;
				if(_amount > 0.1) then {
					[6] spawn life_fnc_HudElements;
				};
			};
		 };
		if(_adjust == "Remove") then {
			myHealth = myHealth + _amount;
			if(myHealth > 0.75 && (damage player) < 0.8) then {
				player setdamage 0.85;
			};
			if(_amount > 0.1) then {
			[5] spawn life_fnc_HudElements;
			};
		};

		if(_adjust == "Set") then {
			if((damage player) > 0) then {
				player setdamage 0;
			};
			[6] spawn life_fnc_HudElements;
			myHealth = _amount;
		};

		if(myHealth < 0) then { myHealth = 0; };
		if(myHealth > 0.99) then {
			if(Myhealth > 1.8) then { myHealth = 1.8; };
			_damage = myHealth - 1;
			_damage = _damage * 10;
			[player,_source,_damage] spawn life_fnc_onPlayerKilled;
		};
		if(player getVariable "playerHealth" != myHealth) then {
			player setVariable["playerHealth", myHealth, true];
		};
	};

//Uranium
[] spawn
{
    while {true} do
    {
        private["_damage"];
        uiSleep 1;
        while {((player distance (getMarkerPos "Radiated Zone") < 50) && (player getVariable["Revive",TRUE]))} do
        {
            if(uniform player == "skn_u_nbc_opf_yellow") then
            {
				hint "You're currently in a radioactive zone however, your clothes are protecting you.";
                uiSleep 15;
				hint "You still feel mild effects from the radiation, but nothing too serious.";
				uiSleep 15;


            } else {
				hint "You have entered a highly radioactive zone, get out now.";
				uiSleep 10;
				player setFatigue 1;
				enableCamShake true;
				addcamShake[random 4, 2, random 4];
				"dynamicBlur" ppEffectEnable true;
				"dynamicBlur" ppEffectAdjust [8];
				"dynamicBlur" ppEffectCommit 8;
				uiSleep 10;
				_damage = damage player;
                _damage = _damage + 0.3;
                player setDamage (_damage);
                uiSleep 45;
            };
        };
    };
};
