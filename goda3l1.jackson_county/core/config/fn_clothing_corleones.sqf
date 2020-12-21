private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
 
ctrlSetText[3103,"Clothing Locker"];
 
switch (_filter) do
{
    case 0:
    {
        [
        ["CORLEONES_UNIFORM",nil,20],
        ["U_O_T_FullGhillie_tna_F",nil,20],
        ["U_B_Wetsuit",nil,20],
        ["TRYK_U_B_PCUODs",nil,20]
 
        ];
    };
 
    case 1:
    {
        [
            ["OpsC_Uncov_Full",nil,20],
            ["TRYK_ESS_CAP_OD",nil,20],
            ["TRYK_ESS_CAP",nil,20],
            ["TRYK_H_PASGT_BLK",nil,20],
            ["Payday_GeneralO",nil,20],
            ["H_CrewHelmetHeli_B",nil,20],
            ["EF_HAT_BK",nil,20],
            ["JM_wig1",nil,20],
            ["JM_Doggo1",nil,20],
            ["H_HelmetB_TI_tna_F",nil,20],
            ["H_Watchcap_blk",nil,20],
            ["Campaign_Hat_NSA",nil,20]
 
        ];
    };
 
    case 2:
    {
        [
        ["TRYK_kio_balaclava_ESS",nil,20],
        ["G_Balaclava_TI_G_tna_F",nil,20],
        ["G_Balaclava_TI_G_blk_F",nil,20],
        ["Mask_M40",nil,20],
        ["EWK_Glasses_Cig2",nil,20],
        ["G_Bandanna_beast",nil,20],
        ["G_Bandanna_aviator",nil,20],
        ["Masque_Chirurgical",nil,20],
        ["SFG_Tac_BeardD",nil,20],
        ["EWK_Shemag_LULZ",nil,20],
        ["H75th_Face_Wear_Spook",nil,20],
        ["H75th_Face_Wear_Supreme",nil,20],
        ["TRYK_Shemagh_shade_G_N",nil,20],
        ["TRYK_Shemagh_EAR_WH_NV",nil,20],
        ["TRYK_balaclava_BLACK_NV",nil,20]
 
 
        ];
    };
 
    case 3:
    {
        [
        ["CORLEONES_VEST",nil,2500],    
        ["V_RebreatherB",nil,2500]
        ];
    };
 
    case 4:
    {
        [
        ["cg_invisbp",nil,50]
        ];
    };
};