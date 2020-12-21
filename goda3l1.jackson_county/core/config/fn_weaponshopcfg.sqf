#include <macro.h>

private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
        case "med_supplies":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an EMS medic!"};
                        default {
                                ["EMS Supplies Shop",
                                        [
                                            ["FirstAidKit",nil,25],
                                            ["Medikit",nil,50],
                                            ["ToolKit",nil,50]
                                        ]
                                ];
                        };
                };
        };
        case "LVMS_HighCommandItem":
        {
                switch(true) do
                {
                        case (playerSide != independent): {"You are not an LVMS medic!"};
                        case (__GETC__(life_mediclevel) < 5): {"You are not a part of High Command!"};
                        default
                        {
                                ["High Command Store",
                                        [
										["TRYK_Shemagh_MESH_NV",nil,10]
                                        ]
                                ];
                        };
                };
        };
        case "med_basic":
        {
                switch (true) do
                {
                        case (playerSide != independent): {"You are not an LVMS medic!"};
                        default {
                                ["LVMS Basic Shop",
                                        [
                                            ["A3L_Extinguisher",nil,35],
                                            ["30Rnd_test_mag","Fire Extinguisher Refill",10],
                                            ["tf_anprc152",nil,10],
                                            ["tf_rt1523g",nil,30],
                                            ["ItemGPS",nil,25],
                                            ["ItemMap",nil,15],
                                            ["Binocular",nil,125],
                                            ["ToolKit",nil,50],
                                            ["pmc_earpiece",nil,50],
                                            ["Chemlight_red",nil,20],
    					["FirstAidKit",nil,25],
                                            ["Medikit",nil,50]
                                        ]
                                ];
                        };
                };
        };
		case "cop_sheriffofc":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (__GETC__(life_coplevel) < 2): {"You are not a Officer!"};
                        default
                        {
                                ["Sheriff Officer/Senior Officer Shop",
                                        [
                                        ["arifle_Mk20_plain_F","MK20C [SHERIFF ONLY]",250],
                                        ["30Rnd_556x45_Stanag",nil,20],

                                        ["hlc_smg_mp510",nil,200],
                                        ["hlc_30Rnd_10mm_B_MP5",nil,20],

										["RH_M16A3",nil,200],
                                        ["RH_30Rnd_556x45_M855A1",nil,20],
										["RH_30Rnd_556x45_Mk262",nil,20],

                                        ["RH_g19",nil,250],
                                        ["RH_17Rnd_9x19_g17",nil,20],

                                        ["RH_fn57",nil,200],
                                        ["RH_20Rnd_57x28_FN",nil,20],

                                        ["JM_Taserb_26",nil,200],
                                        ["JM_26_Cartridge",nil,5],

										["arifle_SDAR_F","SDAR [COASTGUARD ONLY]",120],
                                        ["20Rnd_556x45_UW_mag",nil,15],

										["arifle_MX_GL_Black_F","MARTIAL LAW - MX BLACK",500],
                                        ["30Rnd_65x39_caseless_mag",nil,10],
                                         ["KA_40mm_M7A3",nil,10]
                                        ]
                       ];
                        };
                };
        };

	case "cop_sheriffcpl":
        {
               switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (__GETC__(life_coplevel) < 3): {"You are not a Corporal!"};
                        default
                        {
                                ["Sheriff Corporal Shop",
                                        [
										["RH_M4_ris",nil,250],
                                        ["RH_30Rnd_556x45_Mk262",nil,20],

										["RH_PDW",nil,200],
                                        ["RH_30Rnd_6x35_mag",nil,5],

                                        ["JM_Taserb_26",nil,200],
                                        ["JM_26_Cartridge",nil,5]
                                        ]
                                ];
                        };
                };
        };

        case "cop_sheriffsgt":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (__GETC__(life_coplevel) < 4): {"You are not a Sergeant!"};
                        default
                        {
                                ["Sheriff Sergeant Shop",
										[
                                        ["RH_usp",nil,200],
                                        ["RH_12Rnd_45cal_usp",nil,20],

                                        ["RH_M4_ris",nil,200],
										["RH_30Rnd_556x45_Mk262",nil,20],

                                        ["RH_PDW",nil,200],
                                        ["RH_30Rnd_6x35_mag",nil,5],

										["RH_M4A6",nil,200],
										["RH_30Rnd_68x43_FMJ",nil,20],

										["RH_M4_ris_m",nil,200],
										["RH_30Rnd_556x45_Mk262",nil,20],

										["RH_kimber_nw",nil,200],
										["RH_7Rnd_45cal_m1911",nil,20],

										["rr_m4",nil,200],
										["M4262_mag",nil,20],

                                                                                ["hlc_rifle_bcmjack",nil,200],
["hlc_30rnd_556x45_EPR",nil,85],

										["arifle_MX_Black_F",nil,200],
										["30Rnd_65x39_caseless_mag",nil,20],

										["JM_Taserb_26",nil,200],
                                        ["JM_26_Cartridge",nil,5],
                                        ["iansky_specterkf_t_2D",nil,5]
                                        ]
                                ];
                        };
                };
        };


        case "cop_sheriffcsgt":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (__GETC__(life_coplevel) < 4): {"You are not a Chief Sergeant!"};
                        default
                        {
                                ["Sheriff Chief Sergeant Shop",
                                        [
                                        ["RH_usp",nil,200],
                                        ["RH_12Rnd_45cal_usp",nil,20],

                                        ["RH_M4_ris",nil,200],
										["RH_30Rnd_556x45_Mk262",nil,20],

                                        ["RH_PDW",nil,200],
                                        ["RH_30Rnd_6x35_mag",nil,5],

										["RH_M4A6",nil,200],
										["RH_30Rnd_68x43_FMJ",nil,20],

										["RH_M4_ris_m",nil,200],
										["RH_30Rnd_556x45_Mk262",nil,20],

										["RH_kimber_nw",nil,200],
										["RH_7Rnd_45cal_m1911",nil,20],

										["rr_m4",nil,200],
										["M4262_mag",nil,20],

										["arifle_MX_Black_F",nil,200],
										["30Rnd_65x39_caseless_mag",nil,20],

										["JM_Taserb_26",nil,200],
                                        ["JM_26_Cartridge",nil,5]
                                        ]
                                ];
                        };
                };
        };

        case "cop_basic":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        default
                        {
                                ["Patrol Gear Shop",
                                        [
                                                ["RH_eotech553mag",nil,55],
                                                ["RH_compM2",nil,55],
                                                ["iansky_specterdr",nil,55],
												["RH_SFM952V",nil,55],
                                                                                                ["optic_ERCO_blk_F",nil,55],

												["optic_Arco",nil,88],
												["optic_Hamr",nil,88],
                                                                                                ["RH_ta31rmr_tan_2D",nil,88],

                                                ["RH_ta31rmr_2D",nil,88],
                                                ["optic_Holosight_blk_F",nil,88],
												["RH_barska_rds",nil,88],
												["RH_ta01nsn",nil,65],
												["RH_SFM952V",nil,55],
												["bipod_01_F_blk",nil,55],
												["FirstAidKit",nil,25],
                                                ["Medikit",nil,50],
                                                ["ToolKit",nil,50],
                                                ["Binocular",nil,15],
												["alrp_policegps",nil,10],
                                                ["ItemGPS",nil,10],
												["ItemMap",nil,10],
												["Itemwatch",nil,10],
												["ItemCompass",nil,10],
                                                ["NVGoggles",nil,20],
                                                ["pmc_earpiece",nil,50],
                                                ["tf_anprc152",nil,10],
                                                ["tf_rt1523g",nil,30]
                                        ]
                                ];
                        };
                };
        };

        case "cop_patrol":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (__GETC__(life_coplevel) < 2): {"You are not a Trooper!"};
                        default
                        {
                                ["Officer / Senior Shop",
                                        [
										["RH_m9",nil,150],
                                        ["RH_15Rnd_9x19_M9",nil,20],

                                        ["RH_M16A4",nil,150],
                                        ["RH_30Rnd_556x45_Mk262",nil,20],

										["JM_Taserb_26",nil,200],
                                        ["JM_26_Cartridge",nil,5],

										["arifle_MX_Black_F",nil,200],
                                        ["30Rnd_65x39_caseless_mag",nil,5],

										["RH_p226",nil,250],
                                        ["RH_15Rnd_9x19_SIG",nil,20],

										["RH_M4_ris",nil,200],
                                        ["RH_30Rnd_556x45_Mk262",nil,20],
										["hlc_rifle_Colt727",nil,200],

										["hlc_30rnd_556x45_EPR",nil,50]
                                        ]
                                ];
                        };
                };
        };
        case "recruit":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (__GETC__(life_coplevel) < 1): {"You are not a Cadet!"};
                        default
                        {
                                ["Cadet Shop",
                                        [
                                        ["hlc_smg_mp5k_PDW",nil,275],
                                        ["hlc_30Rnd_9x19_B_MP5",nil,20],

										["SMG_05_F",nil,275],
                                        ["30Rnd_9x21_Mag_SMG_02",nil,20],

                                        ["KA_RO991",nil,450],
["KA_32Rnd_9x19_FMJ_Mag",nil,73],

                                        ["RH_m9",nil,250],
                                        ["RH_15Rnd_9x19_M9",nil,20],

                                        ["JM_Taserb_26",nil,200],
                                        ["JM_26_Cartridge",nil,5]
                                        ]
                                ];
                        };
                };
        };
         case "cop_corporal":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (__GETC__(life_coplevel) < 3): {"You are not a Corporal!"};
                        default
                        {
                                ["Corporal Shop",
                                        [

                                        ["rr_m4",nil,250],
                                        ["M4262_mag",nil,20],

                                        ["RH_p226",nil,250],
                                        ["RH_15Rnd_9x19_SIG",nil,20],

										["hlc_rifle_RU556",nil,200],
                                        ["hlc_30rnd_556x45_EPR",nil,5],


                                        ["JM_Taserb_26",nil,200],
                                        ["JM_26_Cartridge",nil,5]
                                        ]
                                ];
                        };
                };
        };
        case "cop_sergeant":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (__GETC__(life_coplevel) < 4): {"You are not a Sergeant!"};
                        default
                        {
                                ["Sergeant/Chief Sergeant Shop",
                                        [
                                        ["arifle_MX_Black_F",nil,200],
                                        ["30Rnd_65x39_caseless_mag",nil,20],

                                        ["RH_M4A6",nil,200],
										["RH_30Rnd_68x43_FMJ",nil,20],

                                        ["RH_PDW",nil,200],
                                        ["RH_30Rnd_6x35_mag",nil,5],

										["FHQ_arifle_ACR_blk",nil,200],
										["FHQ_rem_30Rnd_680x43_ACR",nil,20],

										["hlc_rifle_auga3_b",nil,200],
										["hlc_30Rnd_556x45_B_AUG",nil,20],

										["rr_m4",nil,200],
										["M4262_mag",nil,20],


										["arifle_MX_Black_F",nil,200],
										["30Rnd_65x39_caseless_mag",nil,20],

										["JM_Taserb_26",nil,200],
                                        ["JM_26_Cartridge",nil,5]
                                        ]
                                ];
                        };
                };
        };
        case "cop_captain":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (__GETC__(life_coplevel) < 5): {"You are not a Command Officer!"};
                        default
                        {
                                ["Department Command Shop",
                                        [

                                        ["RH_bullb",nil,200],
										["RH_6Rnd_454_Mag",nil,20],

                                        ["arifle_ARX_blk_F",nil,200],
										["30Rnd_65x39_caseless_green",nil,20],
										["hlc_rifle_Bushmaster300",nil,200],
										["29rnd_300BLK_STANAG",nil,20],
										["hlc_rifle_SAMR",nil,200],
										["30Rnd_556x45_Stanag",nil,20],

                                        ["hlc_rifle_ak12",nil,200],
										["hlc_30Rnd_545x39_EP_ak",nil,20],

                                        ["JM_Taserb_26",nil,200],
										["JM_26_Cartridge",nil,5],

                                        ["optic_SOS",nil,5],
                                        ["optic_ams",nil,5],
                                        ["optic_Arco_blk_F",nil,5],
                                        ["RH_ta648",nil,5],
                                        ["RH_peq15b",nil,5],
                                        ["B_UavTerminal",nil,5]
                                        ]
                                ];
                        };
                };
        };
         case "cop_nca":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (__GETC__(life_coplevel) < 2): {"You are not a Trooper!"};
                        case (!license_cop_cid): {"You do not have the NCA license!"};
                        default
                        {
                                ["Swat Intelligence Shop",
                                        [
										["RH_M4sbr_b",nil,725],
                                        ["RH_30Rnd_556x45_M855A1",nil,6],

										["hlc_smg_mp510",nil,725],
                                        ["hlc_30Rnd_10mm_B_MP5",nil,6],

										["hlc_rifle_bcmjack",nil,725],
                                        ["hlc_30rnd_556x45_EPR",nil,6],

										["RH_Hk416",nil,725],
                                        ["RH_30Rnd_556x45_M855A1",nil,6],

										["iansky_specterdrkf_2D",nil,50],

                                        ["KA_SilverBaller",nil,725],
                                        ["KA_8Rnd_45ACP_Mag",nil,6],
                                        ["KA_SilverBaller_Silencer",nil,25],

                                        ["RH_kimber_nw",nil,585],
                                        ["RH_7Rnd_45cal_m1911",nil,8],

                                        ["Desert_Eagle",nil,950],
                                        ["7Rnd_50_AE",nil,15],

                                        ["hgun_ACPC2_F",nil,585],
                                        ["9Rnd_45ACP_Mag",nil,8],

                                        ["hgun_Pistol_heavy_01_F",nil,655],
                                        ["11Rnd_45ACP_Mag",nil,8],

                                        ["RH_vp70",nil,450],
                                        ["RH_18Rnd_9x19_VP",nil,8],

                                        //Micro Uzi
                                        ["RH_muzi",nil,450],
                                        ["RH_30Rnd_9x19_UZI",nil,9],

                                        //Tec9
                                        ["RH_tec9",nil,450],
                                        ["RH_32Rnd_9x19_tec",nil,9],

                                        ["RH_vz61",nil,800],
                                        ["RH_20Rnd_32cal_vz61",nil,5],

                                        //Glock 18
                                        ["RH_g18",nil,800],
                                        ["RH_19Rnd_9x19_g18",nil,5],
                                        ["RH_33Rnd_9x19_g18",nil,5],

                                        ["RHARD_M4DDR_F",nil,1500],
                                                                                ["RHARD_M4DDRP_F",nil,1500],
                                                                                ["RHARD_M4DDRPD_F",nil,1500],
                                                                                ["RHARD_M4DDRD_F",nil,1510],
                                                                                //Foregrip Variants
                                                                                ["RHARD_M4DDR_B_F",nil,1520],
                                                                                ["RHARD_M4DDRD_B_F",nil,1520],
										["30Rnd_556x45_Stanag",nil,15],
                                                                                //MP7
                                                                                ["KA_MP7_Rifle_Black_20Rnd",nil, 700],
										["KA_MP7_Rifle_Green_20Rnd",nil,700],
										["KA_20Rnd_46x30_FMJ",nil,73],
                                                                                //40RND Variants
                                                                                ["KA_MP7_Rifle_Black_40Rnd",nil, 770],
										["KA_MP7_Rifle_Green_40Rnd",nil,770],
                                                                                ["KA_40Rnd_46x30_FMJ",nil,7],
                                                                                //
										["arifle_Mk20_plain_F",nil,1300],
                                                                                ["arifle_Mk20_F",nil,1350],
                                                                                ["arifle_Mk20C_plain_F",nil,1275],
                                                                                ["arifle_Mk20C_F",nil,1275],
										["30Rnd_556x45_Stanag",nil,7],
                                                                                ["RH_eotech553",nil,35],
										["optic_ACO_grn",nil,35],
										["optic_Aco",nil,350],
										["RH_ar10",nil,2150],
										["RH_20Rnd_762x51_AR10",nil,25],
										["RH_Delft","AR10 Sight",50],
                                                                                ["FHQ_arifle_ACR_wdl",nil,1650],
                                                                                 ["FHQ_arifle_ACR_tan",nil,1650],
                                                                                 ["FHQ_rem_30Rnd_680x43_ACR",nil,5],
                                                ///
                                                                                ["RH_M16a1",nil,1950],
										["RH_30Rnd_556x45_M855A1",nil,16],
                                                                                ////
                                                                                 ["hlc_rifle_augsrcarb_b",nil,1830],
                                                                                 ["hlc_rifle_augsrcarb",nil,1830],
										["hlc_30Rnd_556x45_B_AUG",nil,16],
                                                                                 ///
                                                                                ["FHQ_arifle_Galil_black",nil,2200],
										["FHQ_25Rnd_762x51_Mag",nil,15],
										["FHQ_arifle_ACR_snw",nil,1650],
										["FHQ_rem_30Rnd_680x43_ACR",nil,16],

										["hlc_rifle_akm",nil,2500],
										["hlc_30Rnd_762x39_b_ak",nil,5],
										["hlc_rifle_ak74_dirty",nil,2350],
										["hlc_rifle_ak74_dirty2",nil,2300],
										["hlc_30Rnd_545x39_B_AK",nil,5],
										["hlc_optic_kobra",nil,5],

										["A3L_AK47s",nil,1950],
										["A3L_AK47sgold",nil,2300],
										["A3L_AK47sMag",nil,15],
										["A3L_RedDot","AK47 Red Dot Sight",15],
                                                                                //new ends
                                                                                ["RH_barska_rds",nil,15],
                                                                                ["RH_m4_des",nil,1500],
										["RH_m4_tg",nil,1500],
										["RH_m4_wdl",nil,1500],
										["RH_30Rnd_556x45_M855A1",nil,10],
									        ["optic_Hamr",nil,20],
										["optic_MRCO",nil,30],
										["RH_eotech553_tan",nil,7],
										["RH_sbr9_des",nil, 600],
										["RH_sbr9_wdl",nil,600],
										["RH_32Rnd_9mm_M822",nil,7],
										["hlc_smg_mp5k_PDW",nil,550],
										["hlc_30Rnd_9x19_B_MP5",nil,7],

                                        ["JM_Taserb_26",nil,20],
                                        ["JM_26_Cartridge",nil,5]
                                        ]
                                ];
                        };
                };
        };
case "cop_crt":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (__GETC__(life_coplevel) < 2): {"You are not a Trooper!"};
                        case (!license_cop_adminb): {"You do not have the Administrative License!"};
                        default
                        {
                                ["Adminb Shop",
                                        [
                                        ["RH_g17",nil,200],
                                        ["RH_17Rnd_9x19_g17",nil,20],

                                        ["RH_p226",nil,200],
                                        ["RH_15Rnd_9x19_SIG",nil,20],

                                        ["JM_Taserb_26",nil,200],
                                        ["JM_26_Cartridge",nil,20],

                                        ["rr_scarstandard",nil,200],
                                        ["M4m855a1_mag",nil,20],

                                        ["KA_UMP45",nil,200],
                                        ["KA_25Rnd_45ACP_FMJ_Mag",nil,20],

                                        ["RH_M4A6",nil,200],
                                        ["RH_30Rnd_68x43_Match",nil,20],

                                        ["RH_M4_moe_b",nil,200],
                                        ["RH_M27IAR",nil,20],
                                        ["RH_60Rnd_556x45_M855A1",nil,20],


                                        ["Mossberg_590",nil,200],
                                        ["8Rnd_Mossberg_590_Pellets",nil,20],

                                        ["RH_bull",nil,200],
                                        ["RH_6Rnd_454_Mag",nil,20],

                                        ["iansky_specterdrkf_2D",nil,20],
                                        ["acc_pointer_IR",nil,20],
                                        ["iansky_t1s",nil,20],
                                        ["optic_AMS",nil,20]
                                        ]
                                ];
                        };
                };
        };
        case "cop_r2":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (__GETC__(life_coplevel) < 6): {" You are not part of SWAT!"};
                        case (!license_cop_sert): {"You do not have the SWAT license!"};
                        default
                        {
                                ["SWAT Armoury",
                                        [
                                        ["JM_Taserb_26",nil,200],
										["JM_26_Cartridge",nil,5],

										["RH_SR25EC",nil,200],
                                        ["RH_20Rnd_762x51_M80A1",nil,20],

                                        ["hlc_rifle_bcmjack",nil,20],
                                        ["hlc_30rnd_556x45_EPR",nil,20],

				                        ["RH_M27IAR",nil,20],
                                        ["RH_60Rnd_556x45_Mk262",nil,20],

                                        ["RH_Hk416s",nil,20],
										["RH_30Rnd_556x45_M855A1",nil,20],

										["hlc_rifle_auga3_b",nil,20],
                                        ["hlc_30Rnd_556x45_B_AUG",nil,20],

										["CSW_LVOA_C_Black",nil,200],
                                        ["CSW_LVOA_30rnd_Mk318_SOST_mag",nil,20],

										["FHQ_smg_p90_black",nil,200],
										["FHQ_50Rnd_57x28_Red_Tracers_Mag",nil,20],

										["rr_scarstandard",nil,200],

										["M4m855a1_mag",nil,20],
										["FHQ_arifle_ACR_blk",nil,200],

										["RH_M16A6",nil,200],
										["RH_30Rnd_68x43_Match",nil,20],

										["RH_M4A6",nil,200],
										["RH_30Rnd_68x43_Match",nil,20],


										["FHQ_arifle_M4std_long_blk",nil,200],
                                        ["30Rnd_556x45_Stanag",nil,20],

										["RH_M4_moe_b",nil,200],
                                        ["RH_30Rnd_556x45_M855A1",nil,20],

                                        ["RH_60Rnd_556x45_M855A1",nil,20],
										["RH_SAMR",nil,200],

										["RH_30Rnd_556x45_M855A1",nil,20],
                                        ["RH_60Rnd_556x45_M855A1",nil,20],

										["hlc_smg_mp510",nil,500],
                                        ["hlc_30Rnd_10mm_B_MP5",nil,20],

                                        ["hlc_30Rnd_10mm_JHP_MP5",nil,20],

                                        ["RH_leu_mk4",nil,20],
                                        ["optic_LRPS",nil,20],
										["RH_LTdocter",nil,20],
										["RH_LTdocterl",nil,20],
										["RH_X300",nil,20],
										["optic_MRD",nil,20],
                                        ["iansky_specterdrkf",nil,20],
										["iansky_specterdrkf_t_2D",nil,20],
                                        ["RH_t1",nil,20],
										["iansky_deltapoint",nil,20],
										["RH_ta31rmr_2D",nil,20],
                                        ["optic_AMS",nil,20],
                                        ["optic_AMS_khk",nil,20],
										["RH_ta648",nil,20],
										["iansky_cmore",nil,20],
										["optic_ERCO_blk_F",nil,20],
                                        ["B_UavTerminal",nil,20],
										["acc_pointer_IR",nil,20],
										["RH_SFM952V",nil,20],
										["bipod_01_F_blk",nil,20],
										["Rangefinder",nil,20],
                                        ["gign_shield",nil,500],
                                        ["KA_M7A3",nil,20],
                                        ["HandGrenade_Stone",nil,20]
                                        ]
                                ];
                        };
                };
        };

        case "marshals":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (!license_cop_marshals): {"You are not part of the Marshals Service!"};
                        default
                        {
                                ["Marshals' Armoury",
                                        [
                                        ["JM_Taserb_26",nil,200],
                                        ["JM_26_Cartridge",nil,5],

                                        ["RH_SR25EC",nil,200],
                                        ["RH_20Rnd_762x51_M80A1",nil,20],

                                        ["hlc_rifle_bcmjack",nil,20],
                                        ["hlc_30rnd_556x45_EPR",nil,20],

                                        ["RH_M27IAR",nil,20],
                                        ["RH_60Rnd_556x45_Mk262",nil,20],

                                        ["RH_Hk416s",nil,20],
                                        ["RH_60Rnd_556x45_Mk262",nil,20],

                                        ["hlc_rifle_auga3_b",nil,20],
                                        ["hlc_30Rnd_556x45_B_AUG",nil,20],

                                        ["CSW_LVOA_C_Black",nil,200],
                                        ["CSW_LVOA_30rnd_Mk318_SOST_mag",nil,20],

                                        ["FHQ_smg_p90_black",nil,200],
                                        ["FHQ_50Rnd_57x28_Red_Tracers_Mag",nil,20],

                                        ["rr_scarstandard",nil,200],

                                        ["M4m855a1_mag",nil,20],

                                        ["RH_M16A6",nil,200],
                                        ["RH_30Rnd_68x43_Match",nil,20],

                                        ["RH_M4A6",nil,200],
                                        ["RH_30Rnd_68x43_Match",nil,20],


                                        ["FHQ_arifle_M4std_long_blk",nil,200],
                                        ["30Rnd_556x45_Stanag",nil,20],

                                        ["hlc_rifle_SAMR",nil,200],
                                        ["RH_30Rnd_556x45_M855A1",nil,20],

                                        ["RH_60Rnd_556x45_M855A1",nil,20],

                                        ["hlc_rifle_ak12",nil,200],
                                        ["hlc_30Rnd_545x39_EP_ak",nil,20],

                                        ["FHQ_arifle_ACR_blk",nil,200],
                                        ["FHQ_rem_30Rnd_680x43_ACR",nil,20],

                                        ["AN94_MTK83",nil,200],
                                        ["KA_30Rnd_545x39_7T3M_Tracer_Green",nil,20],

                                        ["RH_SAMR",nil,200],

                                        ["RH_30Rnd_556x45_M855A1",nil,20],
                                        ["RH_60Rnd_556x45_M855A1",nil,20],

                                        ["hlc_smg_mp510",nil,500],
                                        ["hlc_30Rnd_10mm_B_MP5",nil,20],

                                        ["hlc_30Rnd_10mm_JHP_MP5",nil,20],

                                        ["RH_leu_mk4",nil,20],
                                        ["optic_LRPS",nil,20],
                                        ["RH_LTdocter",nil,20],
                                        ["RH_LTdocterl",nil,20],
                                        ["RH_X300",nil,20],
                                        ["optic_MRD",nil,20],
                                        ["iansky_specterdrkf",nil,20],
                                        ["iansky_specterdrkf_t_2D",nil,20],
                                        ["RH_t1",nil,20],
                                        ["iansky_deltapoint",nil,20],
                                        ["RH_ta31rmr_2D",nil,20],
                                        ["optic_AMS",nil,20],
                                        ["optic_AMS_khk",nil,20],
                                        ["RH_ta648",nil,20],
                                        ["iansky_cmore",nil,20],
                                        ["optic_ERCO_blk_F",nil,20],
                                        ["B_UavTerminal",nil,20],
                                        ["acc_pointer_IR",nil,20],
                                        ["RH_SFM952V",nil,20],
                                        ["bipod_01_F_blk",nil,20],
                                        ["Rangefinder",nil,20],
                                        ["KA_M7A3",nil,20],
                                        ["HandGrenade_Stone",nil,20]
                                        ]
                                ];
                        };
                };
        };

          case "swat_command":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                         case (!license_cop_swatcommand): {"You do not have the SWAT command license!"};
                        case (__GETC__(life_coplevel) < 6): {"You are not a part of SWAT Command!"};
                        default
                        {
                                ["SWAT Command Store",
                                        [
                                        ["arifle_AK12_F",nil,200],
                                        ["30Rnd_762x39_Mag_F",nil,20],
                                        ["KA_M98B",nil,200],
                                        ["KA_M98B_10Rnd_338_Ball_Mag",nil,20],
                                        ["Laserdesignator",nil,20]
					]
                                ];
                        };
                };
        };

        case "cop_command":
        {
                switch(true) do
                {
                        case (playerSide != west): {"You are not a police officer!"};
                        case (__GETC__(life_coplevel) < 7): {"You are not a part of State Command!"};
                        default
                        {
                                ["State Command Store",
                                        [
                                        ["CSW_LVOA_C_Black",nil,283],
                                        ["CSW_LVOA_30rnd_Mk318_SOST_mag",nil,85],

                                        ["hlc_rifle_auga2_b",nil,85],
                                        ["hlc_30Rnd_556x45_SPR_AUG",nil,85],

										["RH_M16A6",nil,350],
                                        ["RH_30Rnd_68x43_Match",nil,95],

                                        ["RH_Hk416c",nil,200],
                                        ["RH_30Rnd_556x45_Mk262",nil,20],

                                        ["hlc_rifle_bcmjack",nil,200],
                                        ["hlc_30rnd_556x45_SPR",nil,20],

										["rr_scarstandard",nil,600],
                                        ["M4262_mag",nil,50],

										["arifle_CTAR_blk_F",nil,200],
                                        ["30Rnd_580x42_Mag_F",nil,20],

										["RH_M27IAR",nil,500],
                                        ["RH_60Rnd_556x45_Mk262",nil,20],

										["rr_m4",nil,500],
                                        ["M4m855a1_mag",nil,20],

                                        ["RH_Mk11",nil,500],
                                        ["RH_20Rnd_762x51_Mk316LR",nil,20],

                                        ["FHQ_arifle_M4_long_blk",nil,200],
                                        ["30Rnd_556x45_Stanag",nil,20],

										["FHQ_srifle_M2010_WDL",nil,200],
                                        ["FHQ_rem_5Rnd_300Win_M2010",nil,20],
                                        ["RH_SR25EC",nil,200],

                                        ["RH_20Rnd_762x51_LFMJSB",nil,85],
                                        ["RH_m9",nil,500],
                                        ["RH_15Rnd_9x19_M9",nil,20],
                                        ["RH_m9qd",nil,20],

                                        ["JM_Taserb_26",nil,200],
                                        ["JM_26_Cartridge",nil,100],


                                        ["RH_M6X",nil,20],
                                        ["RH_leu_mk4",nil,20],
										["optic_LRPS",nil,40],
                                        ["A3L_RedDot",nil,20],
                                        ["optic_AMS",nil,20],
                                        ["iansky_specterdrkf_t_2D",nil,20],
										["RH_X2",nil,50],
                                        ["RH_SAMR",nil,50],
                                        ["RH_30Rnd_556x45_Mk262",nil,20],
										["RH_SFM952V",nil,50],
										["acc_flashlight",nil,50],
										["TRYK_SPgear_PHC1_NV",nil,50]
										]
                                ];
                        };
                };
        };


        case "rebel_low":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rebel): {"You do not have the correct rebel license. Please purchase it and try again."};
                        default
                        {
                                ["Rebel Pistols",
                                    [

										["KA_SilverBaller",nil,7250],
                                        ["KA_8Rnd_45ACP_Mag",nil,86],
                                        ["KA_SilverBaller_Silencer",nil,250],

                                        ["RH_kimber_nw",nil,5850],
                                        ["RH_7Rnd_45cal_m1911",nil,86],

                                        ["Desert_Eagle",nil,9500],
                                        ["7Rnd_50_AE",nil,150],

                                        ["hgun_ACPC2_F",nil,5850],
                                        ["9Rnd_45ACP_Mag",nil,86],

                                        ["hgun_Pistol_heavy_01_F",nil,6550],
                                        ["11Rnd_45ACP_Mag",nil,86],

                                        ["RH_vp70",nil,4500],
                                        ["RH_18Rnd_9x19_VP",nil,86],

                                        //Micro Uzi
                                        ["RH_muzi",nil,4500],
                                        ["RH_30Rnd_9x19_UZI",nil,95],

                                        //Tec9
                                        ["RH_tec9",nil,4500],
                                        ["RH_32Rnd_9x19_tec",nil,95],

                                        ["RH_vz61",nil,8000],
                                        ["RH_20Rnd_32cal_vz61",nil,95],

                                        //Glock 18
                                        ["RH_g18",nil,8000],
                                        ["RH_19Rnd_9x19_g18",nil,95],
                                        ["RH_33Rnd_9x19_g18",nil,95]
                                    ]
                                ];
                        };
                };
        };

        case "wolfe":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_wolfe): {"You are not part of the Wolfe Cartel"};
                        default
                        {
                                ["Wolfe Shop",
                                    [

                                        ["hlc_rifle_bcmblackjack",nil,7250],
                                        ["29rnd_300BLK_STANAG_S",nil,86],

                                        ["RH_Hk416",nil,5850],
                                        ["RH_60Rnd_556x45_Mk262",nil,86],

                                        ["RH_M16A6",nil,9500],
                                        ["RH_30Rnd_68x43_Match",nil,150],

                                        ["SG553",nil,5850],
                                        ["30Rnd_56x45_GP90_Armour_Piercing",nil,86],

                                        ["AN94_MTK83",nil,17000],
                                        ["KA_30Rnd_545x39_7T3M_Tracer_Green",nil,75],

                                        ["arifle_ARX_blk_F",nil,6550],
                                        ["30Rnd_65x39_caseless_green",nil,86],

                                        ["RH_ta648",nil,95],
                                        ["RH_ta31rmr_2D",nil,95],
                                        ["iansky_rds",nil,95],
                                        ["optic_AMS",nil,95],
                                        ["optic_Arco_blk_F",nil,95],
                                        ["iansky_specterdrkf",nil,95],
                                        ["optic_LRPS",nil,95],
                                        ["optic_Hamr",nil,95],
                                        ["optic_Yorris",nil,95]
                                    ]
                                ];
                        };
                };
        };

        case "rebel_high":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rebel): {"You do not have the correct rebel license. Please purchase it and try again."};
                        default
                        {
                                ["Rebel Primaries",
                                    [
										["RHARD_M4DDR_F",nil,25000],
                                        ["RHARD_M4DDRP_F",nil,25000],
                                        ["RHARD_M4DDRPD_F",nil,25100],
                                        ["RHARD_M4DDRD_F",nil,25100],
                                        ["RHARD_M4DDR_B_F",nil,25200],
                                        ["RHARD_M4DDRD_B_F",nil,25200],
										["30Rnd_556x45_Stanag",nil,150],

                                        //Sam Additions
										["RH_M4_moe_g",nil,25200],
                                        ["RH_30Rnd_556x45_Mk262",nil,50],
                                        ["RH_m16a6_wdl",nil,25200],
                                        ["RH_30Rnd_68x43_Match",nil,50],
                                        ["RH_m4a6_wdl",nil,25200],
                                        ["RH_M4A6",nil,25200],
                                        ["RH_30Rnd_68x43_Match",nil,50],
                                        ["RH_SAMR",nil,25200],
                                        ["RH_30Rnd_556x45_Mk262",nil,50],

										//LVOA Black
                                        ["CSW_LVOA_C_Black_TOB",nil,45000],
                                        ["CSW_LVOA_30rnd_Mk318_SOST_mag",nil,50],

										//LVOA Block
                                        ["CSW_LVOA_C_Block",nil,45000],
                                        ["CSW_LVOA_30rnd_Mk318_SOST_mag",nil,50],

                                        ["KA_UMP45",nil,18200],
										["KA_25Rnd_45ACP_FMJ_Mag",nil,73],
										["hlc_smg_mp510",nil,18500],
                                        ["hlc_30Rnd_10mm_B_MP5",nil,85],
                                        ["KA_UMP9",nil,19000],
										["KA_30Rnd_9x19_FMJ_Mag",nil,73],
                                        ["KA_RO991",nil,19450],
										["KA_32Rnd_9x19_FMJ_Mag",nil,73],
                                        ["KA_PP19",nil,91050],
										["KA_64Rnd_9x18_PMM_FMJ_Mag",nil,73],
										["hlc_rifle_bcmjack",nil,25500],
										["hlc_30rnd_556x45_SPR",nil,85],

                                        //MP7
                                        ["KA_MP7_Rifle_Black_20Rnd",nil,17000],
										["KA_MP7_Rifle_Green_20Rnd",nil,17000],
										["KA_20Rnd_46x30_FMJ",nil,73],
                                        ["KA_MP7_Rifle_Black_40Rnd",nil,11700],
										["KA_MP7_Rifle_Green_40Rnd",nil,17700],
                                        ["KA_40Rnd_46x30_FMJ",nil,75],

										//
										["arifle_Mk20_plain_F",nil,21500],
                                        ["arifle_Mk20_F",nil,21500],
                                        ["arifle_Mk20C_plain_F",nil,21750],
                                        ["arifle_Mk20C_F",nil,21750],
										["30Rnd_556x45_Stanag",nil,73],
										["RH_ar10",nil,21500],
										["RH_20Rnd_762x51_AR10",nil,250],
										["RH_Delft","AR10 Sight",550],
                                        ["FHQ_arifle_ACR_wdl",nil,25500],
                                        ["FHQ_arifle_ACR_tan",nil,25500],
                                        ["FHQ_rem_30Rnd_680x43_ACR",nil,85],

										///
                                        ["RH_M16a1",nil,19500],
										["RH_30Rnd_556x45_M855A1",nil,165],

										////
                                        ["hlc_rifle_augsrcarb_b",nil,25300],
                                        ["hlc_rifle_augsrcarb",nil,25300],
										["hlc_30Rnd_556x45_B_AUG",nil,165],

										///
                                        ["arifle_CTAR_hex_F",nil,28300],
										["30Rnd_580x42_Mag_F",nil,165],
                                        ["FHQ_arifle_Galil_black",nil,29000],
										["FHQ_25Rnd_762x51_Mag",nil,165],
										["FHQ_arifle_ACR_snw",nil,28500],
										["FHQ_rem_30Rnd_680x43_ACR",nil,165],

                                        ["arifle_AKM_F",nil,28200],
										["30Rnd_762x39_Mag_F",nil,50],
										["hlc_rifle_akm",nil,25000],
										["hlc_30Rnd_762x39_b_ak",nil,50],

										["hlc_rifle_ak74_dirty",nil,23500],
										["hlc_rifle_ak74_dirty2",nil,23500],
										["hlc_30Rnd_545x39_B_AK",nil,50],
										["hlc_optic_kobra",nil,55],

										["A3L_AK47s",nil,19500],
										["A3L_AK47sgold",nil,23500],
										["A3L_AK47sMag",nil,150],
										["A3L_RedDot","AK47 Red Dot Sight",150],
                                        ["arifle_SDAR_F","SDAR",16755],
                                        ["20Rnd_556x45_UW_mag",nil,75],

										//new ends
                                        ["RH_m4_des",nil,21000],
										["RH_m4_tg",nil,21000],
										["RH_m4_wdl",nil,21000],
										["RH_30Rnd_556x45_M855A1",nil,150],
										["RH_sbr9_des",nil,9000],
										["RH_sbr9_wdl",nil,9000],
										["RH_32Rnd_9mm_M822",nil,75],
										["hlc_smg_mp5k_PDW",nil,9590],
										["hlc_30Rnd_9x19_B_MP5",nil,75],

	                                    ["optic_Arco",nil,300],
                                        ["optic_DMS_ghex_F",nil,300],
                                        ["RH_eotech553",nil,300],
										["optic_ACO_grn",nil,300],
										["optic_Aco",nil,300],
									    ["optic_Hamr",nil,300],
										["optic_MRCO",nil,300],
										["RH_eotech553_tan",nil,300],
                                        ["RH_barska_rds",nil,300],
										["RH_ta648",nil,300],
										["RH_ta31rmr_tan_2D",nil,300]
                                    ]
                             ];
                        };
                };
        };

         case "ganghideout":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        _test = hideout1 getVariable "copcaptured";
                        _test2 = hideout1 getVariable "captured";
                        case (_test): { closeDialog 0; hint "Police have captured this zone, you cannot access the gang armoury";};
                        case (!_test2): { closeDialog 0; hint "You cannot access the gang armoury, this area is not captured!";};
                        default
                        {
                                ["Gang Hideout Weapons",
                                    [
                                        ["arifle_ARX_ghex_F",nil,20000],
                                        ["arifle_ARX_hex_F",nil,20000],
                                        ["30Rnd_65x39_caseless_green",nil,125],
                                        ["arifle_MX_SW_F",nil,17000],
                                        ["arifle_MX_SW_Black_F",nil,17000],
                                        ["arifle_MX_SW_khk_F",nil,17000],
                                        ["100Rnd_65x39_caseless_mag",nil,825],
                                        ["APS",nil,5500],
                                        ["26Rnd_566x150_MPS",nil,65],
                                        ["SMG_01_F",nil,6500],
                                        ["30Rnd_45ACP_Mag_SMG_01",nil,65]
                                    ]
                             ];
                        };
                };
        };

         case "ganghideout2":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        _test = hideout2 getVariable "copcaptured";
                        _test2 = hideout2 getVariable "captured";
                        case (_test): { closeDialog 0; hint "Police have captured this zone, you cannot access the gang armoury";};
                        case (!_test2): { closeDialog 0; hint "You cannot access the gang armoury, this area is not captured!";};
                        default
                        {
                                ["Gang Hideout Weapons",
                                    [
                                        ["arifle_ARX_ghex_F",nil,20000],
                                        ["arifle_ARX_hex_F",nil,20000],
                                        ["30Rnd_65x39_caseless_green",nil,125],
                                        ["arifle_MX_SW_F",nil,17000],
                                        ["arifle_MX_SW_Black_F",nil,17000],
                                        ["arifle_MX_SW_khk_F",nil,17000],
                                        ["100Rnd_65x39_caseless_mag",nil,825],
                                        ["APS",nil,5500],
                                        ["26Rnd_566x150_MPS",nil,65],
                                        ["SMG_01_F",nil,6500],
                                        ["30Rnd_45ACP_Mag_SMG_01",nil,65]
                                    ]
                             ];
                        };
                };
        };


         case "blackmarket":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        _perk1 = [FFuVsqqZ, "Perk4_9"] call mav_ttm_fnc_hasPerk;
                        case (!_perk1): {"You do not have the Guerrilla Fighter perk so you cannot access this tier of weaponry yet."};
                        default
                        {
                                ["Tier 1 Blackmarket Weapons",
                                    [
                                        ["hlc_rifle_Bushmaster300",nil,34500],
                                        ["29rnd_300BLK_STANAG_T",nil,120],
                                        /////
                                        ["RH_hb_b",nil,34800],
                                        ["RH_30Rnd_762x35_FMJ",nil,120],
                                        ///
                                        ["hlc_rifle_vendimus",nil,37800],
                                        ["29rnd_300BLK_STANAG",nil,120],
                                        /////
                                        ["hlc_rifle_bcmblackjack",nil,32500],
				        ["29rnd_300BLK_STANAG_T",nil,120]
                                    ]
                             ];
                        };
                };
        };

        case "blackmarkettier2":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        _perk2 = [FFuVsqqZ, "Perk4_10"] call mav_ttm_fnc_hasPerk;
                        case (!_perk2): {"You do not have the Freedom Fighter perk so you cannot access this tier of weaponry yet."};
                        default
                        {
                                 ["Tier 2 Blackmarket Weapons",
                                    [
                                        ["HLC_Optic_ZFSG1",nil,420],
                                        ///
                                        ["kio_sr25",nil,39000],
				        ["20rnd_762_magazine",nil,420],
                                        ///
                                        ["arifle_SPAR_03_khk_F",nil,41000],
                                        ["arifle_SPAR_03_snd_F",nil,41000],
				        ["20Rnd_762x51_Mag",nil,420],
                                        ///
                                        ["RH_m110",nil,41000],
				        ["RH_20Rnd_762x51_M80A1",nil,420],
                                        ["optic_AMS",nil,750]

                                    ]
                             ];
                        };
                };
        };

        case "gun":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_gun): {"You don't have a Firearms license!"};
                        default
                        {
                                ["Kains Firearms",
                                        [
										["KA_SilverBaller",nil,7250],
                                        ["KA_8Rnd_45ACP_Mag",nil,86],
                                        ["KA_SilverBaller_Silencer",nil,250],

                                        ["RH_kimber_nw",nil,5850],
                                        ["RH_7Rnd_45cal_m1911",nil,86],

                                        ["hgun_ACPC2_F",nil,5850],
                                        ["9Rnd_45ACP_Mag",nil,86],

                                        ["hgun_Pistol_heavy_01_F",nil,6550],
                                        ["11Rnd_45ACP_Mag",nil,86],

                                        ["RH_vp70",nil,4500],
                                        ["RH_18Rnd_9x19_VP",nil,86]
                                        ]
                                ];
                        };
                };
        };

        case "ss":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_ss): {"You don't have the Secret Service License!"};
                        default
                        {
                                ["SS Weapon Locker",
                                        [
										["JM_Taser_26",nil,100],
                                        ["JM_Taserb_26",nil,86],

                                        ["RH_kimber_nw",nil,2200],
                                        ["RH_7Rnd_45cal_m1911",nil,86],

                                        ["hgun_ACPC2_F",nil,5850],
                                        ["9Rnd_45ACP_Mag",nil,86],

                                        ["RH_M4A6",nil,11500],
                                        ["RH_30Rnd_68x43_FMJ",nil,90],

                                        ["optic_Aco",nil,86],
                                        ["optic_DMS",nil,86],
                                        ["RH_ta01nsn",nil,86],
                                        ["optic_ACO_grn",nil,86],
                                        ["optic_LRPS",nil,86],
                                        ["RH_compM2l",nil,86]
                                        ]
                                ];
                        };
                };
        };

        case "attorney":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_attorney): {"You are not an attorney!"};
                        default
                        {
                                ["Attorney Weapon Locker",
                                        [
                                                 ["KA_Flashlight",nil,65],
                                                 ["KA_Laser",nil,65]
                                        ]
                                ];
                        };
                };
        };

        case "rpd":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_rpd): {"You are not part of this gang!"};
                        default
                        {
                                ["RPD Weapon Locker",
                                        [
                                                ["RH_M4A6",nil,18500],
												["RH_30Rnd_68x43_Match",nil,85],
												["arifle_AK12_F",nil,31500],
                                                ["30Rnd_762x39_Mag_F",nil,85],
                                                ["hlc_smg_mp5k",nil,3085],
                                                ["hlc_30Rnd_9x19_B_MP5",nil,85],
                                                ["RH_SAMR",nil,15000],
												["RH_M27IAR",nil,16500],
                                                ["RH_60Rnd_556x45_Mk262",nil,85],
												["hlc_smg_mp510",nil,8500],
                                                ["hlc_30Rnd_10mm_B_MP5",nil,85],
												["rr_scarstandard",nil,12500],
                                                ["M4262_mag",nil,85],
                                                ["alrp_bcmhyperbeast",nil,10500],
												["hlc_rifle_samr2",nil,13500],
												["hlc_30rnd_556x45_SPR",nil,85],
                                                ["RH_60Rnd_556x45_M855A1",nil,85],
												["RH_15Rnd_45cal_fnp",nil,85],
												["RH_osprey",nil,50],
												["RH_M6X",nil,85],
												["optic_MRD",nil,85],
                                                ["optic_Arco_blk_F",nil,65],
                                                ["iansky_rds",nil,65],
                                                ["RH_SFM952V",nil,60],
												///
                                                ["optic_AMS",nil,1200],
												["RH_leu_mk4",nil,1500],
												["iansky_specterdrkf_2D",nil,65],
                                                ["RH_eotech553mag",nil,65],
												["RH_accupoint",nil,62],
                                                ["RH_compM2l",nil,65],
												["RH_ta31rmr_2D",nil,85],
												["bipod_01_F_blk",nil,85],
                                                ["RH_SFM952V",nil,65]
                                        ]
                                ];
                        };
                };
        };

         case "baratheon":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        case (!license_civ_baratheon): {"You are not part of this gang!"};
                        default
                        {
                                ["House Baratheon Weapon Locker", //6 GUNS
                                        [
                                                ["FHQ_arifle_M4_long_blk",nil,18000],
                                                ["30Rnd_556x45_Stanag",nil,85],
                                                ///
                                                ["rr_scarstandard",nil,16500],
                                                ["M4262_mag",nil,85],
                                                ////////////////////////////////
                                                ["hlc_smg_mp5k",nil,8750],
                                                ["hlc_30Rnd_9x19_B_MP5",nil,85],
                                                ///////////////////
                                                ["RH_M27IAR",nil,16500],
						["RH_30Rnd_556x45_M855A1",nil,85],
                                                ////////////////
						["RH_fnp45t",nil,3000],
						["RH_15Rnd_45cal_fnp",nil,85],
						//////////
                                                //AR15 Sanitised Carbine
                                                ["hlc_rifle_RU556",nil,15300],
                                                ["hlc_30rnd_556x45_EPR",nil,85],
                                                /////////////////////
												//M16A6
                        ["RH_M16A6",nil,10500],
												["RH_30Rnd_68x43_FMJ",nil,85],
                        //Jack Carbine
                        ["hlc_rifle_bcmjack",nil,10500],
                        ["hlc_30rnd_556x45_SPR",nil,85],
                        ["hlc_50rnd_556x45_EPR",nil,85],
                        //M4A6
                        ["RH_M4A6",nil,19600],
                        ["RH_30Rnd_68x43_Match",nil,95],
                        //MK1
												["srifle_DMR_03_F",nil,24000],
												["20Rnd_762x51_Mag",nil,85],
                        //SAMR
												["RH_SAMR",nil,13500],
												["hlc_30rnd_556x45_SPR",nil,73],
                        //M27IAR
												["RH_M27IAR",nil,16500],
                        ["RH_60Rnd_556x45_Mk262",nil,85],
                        //M4 MOE
												["RH_M4_moe_b",nil,10000],
												["RH_60Rnd_556x45_Mk262",nil,85],
                        // MP5-10
                        ["hlc_smg_mp510",nil,8500],
                        ["hlc_30Rnd_10mm_B_MP5",nil,85],
                        //Type 115
                        ["arifle_ARX_blk_F",nil,20000],
					              ["30Rnd_65x39_caseless_green",nil,85],
                        //ScarH
                        ["rr_scarstandard",nil,16500],
                        ["M4262_mag",nil,85],
                        //HK416
                        ["RH_Hk416",nil,17600],
                        ["RH_30Rnd_556x45_M855A1",nil,85],
                        //UMP45
                        ["KA_UMP45_P",nil,17600],
                        ["KA_25Rnd_45ACP_High_Presure_Mag",nil,85],
                        //AK12
                        ["arifle_AK12_F",nil,15950],
                        ["30Rnd_762x39_Mag_F",nil,85],
                        //RagingBull
                        ["RH_bullb",nil,8000],
                        ["RH_6Rnd_454_Mag",nil,85],
                        //Desert Eagle
                        ["Desert_Eagle",nil,15950],
                        ["7Rnd_50_AE",nil,85],
                        //ACR
                        ["FHQ_arifle_ACR_blk",nil,15950],
                        ["FHQ_rem_30Rnd_680x43_ACR",nil,85],
                        //Car95
                        ["arifle_CTARS_blk_F",nil,15950],
                        ["100Rnd_580x42_Mag_F",nil,85],
                        //MK18
												["srifle_EBR_F",nil,24000],
                        ["20Rnd_762x51_Mag",nil,85],
                        //M110[75th]
												["rr_m110",nil,25000],
												["scarh_mag",nil,85],
                        //M4A1 RIS
                        ["RH_m4a1_ris",nil,13700],
                        ["RH_30Rnd_556x45_M855A1",nil,65],
                        //P90
                        ["FHQ_smg_p90_black",nil,12500],
                        ["FHQ_50Rnd_57x28_Mag",nil,56],

                        //Accessories
                        ["RH_m16covers_f",nil,75],
						            ["optic_Hamr",nil,400],
                        ["optic_Arco_blk_F",nil,400],
                        ["optic_DMS",nil,400],
                        ["iansky_specterdrkf_2D",nil,400],
                        ["RH_eotech553mag",nil,400],
                        ["RH_barska_rds",nil,400],
                        ["RH_ta648",nil,420],
                        ["RH_leu_mk4",nil,400],
                        ["RH_compM2l",nil,400],
                        ["optic_AMS",nil,400],
                                                ["iansky_cmore",nil,62],
                                                ["RH_peq15b",nil,62],
                                                ["RH_compM2",nil,62],
                                                ["RH_ta31rmr_tan_2d",nil,65],
                                                ["RH_accupoint",nil,62],
                                                ["RH_eotech553mag",nil,75],
                                                ["RH_docter",nil,62],
                                                ["RH_barska_rds",nil,22],
                                                ["RH_leu_mk4",nil,1500],
                                                ["RH_m3lr",nil,60]
                                        ]
                                ];
                        };
                };
        };

		 case "corleones":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
						case (!license_civ_corleones): {"You are not a part of this gang!"};
                        default
                        {
                                ["Hydra Weapon Locker", //8 GUNS
                                        [
                                                ["hlc_smg_mp510",nil,8500],
                                                ["hlc_30Rnd_10mm_B_MP5",nil,85],
                                                ["RH_M4A6",nil,19600],
                                                ["RH_30Rnd_68x43_Match",nil,95],
                                                ["RH_M16A6",nil,19700],
                                                ["RH_30Rnd_68x43_FMJ",nil,85],
                                                ["arifle_ARX_blk_F",nil,20000],
					        ["30Rnd_65x39_caseless_green",nil,85],
                                                ["rr_scarstandard",nil,16500],
                                                ["M4262_mag",nil,85],
                                                //SamR
                                                ["RH_SAMR",nil,15000],
                                                ["RH_30Rnd_556x45_Mk262",nil,60],
                                                ////
                                               ["RH_Hk416",nil,17600],
                                                ["RH_30Rnd_556x45_M855A1",nil,85],
                                               ["KA_UMP45_P",nil,17600],
                                                ["KA_25Rnd_45ACP_High_Presure_Mag",nil,85],

                                               ["KA_UMP45_P",nil,17600],
                                                ["KA_25Rnd_45ACP_High_Presure_Mag",nil,85],

                                               ["RH_M4A6",nil,17600],
                                                ["RH_30Rnd_68x43_FMJ",nil,85],

                                               ["RH_M4_moe_b",nil,17600],
                                                ["RH_60Rnd_556x45_Mk262",nil,85],
                                               ["alrp_bcmhyperbeast",nil,17600],
                                                ["hlc_50rnd_556x45_EPR",nil,85],
                                                ["hlc_30rnd_556x45_SPR",nil,85],
                                                //
                                                //////////////////////
                                                   ["arifle_AK12_F",nil,15950],
                                                ["30Rnd_762x39_Mag_F",nil,85],
                                                //////////////////////
                                                   ["RH_bullb",nil,15950],
                                                ["RH_6Rnd_454_Mag",nil,85],
                                                //////////////////////
                                                   ["hgun_Pistol_Signal_F",nil,15950],
                                                ["6Rnd_RedSignal_F",nil,85],
                                                //////////////////////
                                                   ["Desert_Eagle",nil,15950],
                                                ["7Rnd_50_AE",nil,85],
                                                //////////////////////
                                                   ["FHQ_arifle_ACR_blk",nil,15950],
                                                ["FHQ_rem_30Rnd_680x43_ACR",nil,85],
                                                //////////////////////
                                                   ["arifle_CTARS_blk_F",nil,15950],
                                                ["100Rnd_580x42_Mag_F",nil,85],

												["srifle_DMR_03_F",nil,24950],
                                                ["20Rnd_762x51_Mag",nil,85],
												["rr_m110",nil,25000],
												["scarh_mag",nil,200],
                                                //////////////////////
                                                   ["hlc_rifle_samr2",nil,15950],
                                                ["hlc_30rnd_556x45_EPR",nil,85],
                                                //////////////////////
                                                ["RH_m4a1_ris",nil,13700],
                                                ["RH_30Rnd_556x45_M855A1",nil,65],
                                                ////////////////
                                               ["FHQ_smg_p90_black",nil,12500],
                                        ["FHQ_50Rnd_57x28_Mag",nil,56],
                                                //////////////////////
                                                ["RH_M27IAR",nil,16500],
						["RH_30Rnd_556x45_M855A1",nil,85],
						////////////////
                                                ["RH_m16covers_f",nil,75],
						["optic_Hamr",nil,75],
                                                 ["optic_Arco_blk_F",nil,1500],
                                                 ["optic_DMS",nil,1500],
                                                 ["iansky_specterdrkf_2D",nil,1500],
                                                 ["RH_eotech553mag",nil,1500],
                                                 ["RH_barska_rds",nil,1500],
                                                 ["RH_ta648",nil,1500],
                                                 ["RH_leu_mk4",nil,1500],
                                                 ["RH_compM2l",nil,1500],
                                                 ["RH_ta648",nil,69],
                                                ["optic_DMS",nil,200],
                                                ["RH_barska_rds",nil,55],
                                                ["optic_LRPS",nil,55],
                                                ["optic_AMS",nil,750],
						["iansky_rds",nil,62]
                                        ]
                                ];
                        };
                };
        };

 case "pusha":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_pusha): {"You are not part of this gang!"};
                        default
                        {
                                ["Pusha Armoury",
                                [

                //GUN NAME/

                    //FNP45
                    ["hgun_Pistol_heavy_01_F",nil,3000],
                    ["11Rnd_45ACP_Mag",nil,50],

                    //JuanDeag
                    ["RH_Deagleg",nil,5000],
                    ["RH_7Rnd_50_AE",nil,50],

                    //MP510
                    ["hlc_smg_mp510",nil,6000],
                    ["hlc_30Rnd_10mm_B_MP5",nil,50],

                    //SPAR16
                    ["arifle_SPAR_01_blk_F",nil,8000],
                    ["30Rnd_556x45_Stanag",nil,50],

                    //M4A1MOETV
                    ["RH_M4_moe_b",nil,10000],
                    ["RH_60Rnd_556x45_Mk262",nil,100],

                    //M4A1 14.5
                    ["FHQ_arifle_M4std_long_blk",nil,10000],
                    ["30Rnd_556x45_Stanag",nil,50],

                    //AK12
                    ["hlc_rifle_ak12",nil,12000],
                    ["hlc_30Rnd_545x39_B_AK",nil,50],

                    //M27IAR
                    ["RH_M27IAR",nil,12000],
                    ["RH_60Rnd_556x45_Mk262",nil,100],

                    //BCM
                    ["alrp_battleofthebeasts",nil,12000],
                    ["alrp_bcm_tf141",nil,12000],
                    ["hlc_30rnd_556x45_SPR",nil,50],

                    //SAMR
                    ["RH_SAMR",nil,12000],
                    ["RH_60Rnd_556x45_Mk262",nil,100],

                    //75thScarL
                    ["rr_scarstandard",nil,12000],
                    ["M4262_mag",nil,500],

                    //Type115
                    ["arifle_ARX_blk_F",nil,14000],
                    ["30Rnd_65x39_caseless_green",nil,50],

                    //MXM
                    ["arifle_MXM_Black_F",nil,14000],
                    ["30Rnd_65x39_caseless_mag",nil,50],

                    //CMR76
                    ["srifle_DMR_07_blk_F",nil,14000],
                    ["20Rnd_650x39_Cased_Mag_F",nil,50],

					//LVOA Black
                    ["CSW_LVOA_C_Black_TOB",nil,35000],
                    ["CSW_LVOA_30rnd_Mk318_SOST_mag",nil,50],

					//LVOA Block
                    ["CSW_LVOA_C_Block",nil,35000],
                    ["CSW_LVOA_30rnd_Mk318_SOST_mag",nil,50],

                    //CAR95
                    ["arifle_CTARS_blk_F",nil,15000],
                    ["100Rnd_580x42_Mag_F ",nil,500],

                    //M4A6
                    ["RH_M4A6",nil,16000],
                    ["RH_30Rnd_68x43_Match",nil,50],

                    //ACR
                    ["alrp_acrhowl",nil,16000],
                    ["FHQ_rem_30Rnd_680x43_ACR",nil,50],

                    //M16A6
                    ["alrp_m16a6_tf141",nil,16000],
                    ["RH_30Rnd_68x43_FMJ",nil,50],

					 //M4A6
                    ["alrp_m4a6_tf141",nil,16000],
                    ["RH_30Rnd_68x43_Match",nil,50],

                    //AK12 Non Ishshitmashshit
                    ["arifle_AK12_F",nil,18000],
                    ["30Rnd_762x39_Mag_F",nil,100],

                    //MK18
                    ["alrp_mk18_tf141",nil,20000],
                    ["20Rnd_762x51_Mag",nil,100],

                    //SPAR17
                    ["arifle_SPAR_03_blk_F",nil,20000],
                    ["20Rnd_762x51_Mag",nil,100],

                    //MK1EMR
                    ["alrp_mkI_tf141",nil,20000],
                    ["20Rnd_762x51_Mag",nil,100],

                    //MK14
                    ["srifle_DMR_06_olive_F",nil,20000],
                    ["20Rnd_762x51_Mag",nil,100],

                    //75thM110
                    ["rr_m110",nil,30000],
                    ["scarhnt_mag",nil,100],

                    //Scopes And Shit
                    ["RH_ta31rmr_2D",nil,50],

                    ["acc_pointer_IR",nil,50],

                    ["bipod_01",nil,50],

                    ["RH_compM2",nil,50],

                    ["iansky_specterdrkf_2D",nil,50],

                    ["optic_ERCO_blk_F",nil,50],

                    ["RH_shortdot",nil,50],

                    ["iansky_rx01",nil,50],


                    ["optic_Arco_blk_F",nil,50],

                    ["optic_Hamr",nil,50],

                    ["optic_MRCO",nil,50],

                    ["RH_barska_rds",nil,50],

                    ["optic_DMS",nil,50],

                    ["optic_AMS",nil,50],

                    ["optic_SOS",nil,50],

                    ["optic_Arco_blk_F",nil,50],



                    ["acc_flashlight_pistol",nil,50],

                    ["optic_MRD",nil,50]
                ]
            ];
        };
    };
};

case "chaos": //20 GUNS //Lannisters
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
						case (!license_civ_chaos): {"You are not part of
                        this gang!"};
                        default
                        {
                                ["Weapon Locker",
                                        [

                                        //SAM-R
                                        ["RH_SAMR",nil,17500],
                                        ["RH_60Rnd_556x45_M855A1",nil,85],
                                        //M27IAR
                                        ["RH_M27IAR",nil,20000],
                                        ["RH_60Rnd_556x45_Mk262",nil,85],
                                        //Mk-1 EMR
                                        ["srifle_DMR_03_F",nil,30500],
                                        ["20Rnd_762x51_Mag",nil,85],
                                        //MP5/10
                                        ["hlc_smg_mp510",nil,8500],
                                        ["hlc_30Rnd_10mm_B_MP5",nil,85],
                                        ["hlc_30Rnd_10mm_JHP_MP5",nil,85],
                                        //HoneyBadger
                                        ["hlc_rifle_honeybadger",nil,20000],
                                        ["29rnd_300BLK_STANAG",nil,85],
                                        //M110
                                        ["rr_m110",nil,15500],
                                        ["scarhnt_mag",nil,85],
                                        //Type 115
                                        ["arifle_ARX_blk_F",nil,15000],
                                        ["30Rnd_65x39_caseless_green",nil,85],
                                        //MOE Black
                                        ["RH_M4_moe_b",nil,15500],
                                        ["RH_60Rnd_556x45_Mk262",nil,85],
                                        //Jack "BCM" Carbine
                                        ["alrp_bcmhyperbeast",nil,16500],
                                        ["hlc_50rnd_556x45_EPR",nil,85],
                                        ["hlc_30rnd_556x45_SPR",nil,85],
                                        //M4A6
                                        ["RH_M4A6",nil,20500],
                                        ["RH_M16A6",nil,20500],
                                        ["RH_30Rnd_68x43_Match",nil,85],
                                        //MK14
                                        ["srifle_DMR_06_olive_F",nil,16500],
                                        ["20Rnd_762x51_Mag",nil,85],
                                        //CAR-95-1
										["arifle_CTARS_blk_F",nil,22100],
										["100Rnd_580x42_Mag_F",nil,85],
                                        //Remington ACR
                                        ["FHQ_arifle_ACR_blk",nil,11800],
                                        ["FHQ_rem_30Rnd_680x43_ACR",nil,85],
                                        //AK12
                                        ["arifle_AK12_F",nil,12500],
                                        ["30Rnd_762x39_Mag_F",nil,85],

                                        //Raging Bull
										["RH_bullb",nil,17000],
										["RH_6Rnd_454_Mag",nil,85],
                                        //Attachments
										["optic_ERCO_blk_F",nil,69],
										["optic_MRCO",nil,69],
										["RH_SFM952V",nil,40],
                                        ["RH_peq15b",nil,75],
										["optic_Arco_blk_F",nil,75],
                                        ["optic_DMS",nil,75],
                                        ["iansky_specterdrkf_2D",nil,75],
										["RH_eotech553mag",nil,75],
										["RH_barska_rds",nil,75],
										["RH_ta648",nil,75],
										["optic_Hamr",nil,75],
										["iansky_rds",nil,75],
                                        ["iansky_t1kf",nil,75],
                                        ["ALE_H_GrosPD",nil,75]
                                    ]
                                ];
                        };
                };
        };


		case "jail":
        {
                switch(true) do
                {
                        case (playerSide != civilian): {"You are not a civilian!"};
                        default
                        {
                                ["Jail Blackmarket Dealer",
                                        [
											["KPFS_P1",nil,1250],
                                            ["KPFS_8Rnd_9x19_PARA",nil,10]
                                        ]
                                ];
                        };
                };
        };

        case "genstore":
        {
                ["Puggy's General Store",
                        [
                                ["ItemMap",nil,69],
                                ["tf_anprc152",nil,100],
                                ["sab_cuav_Terminal",nil,12500],
                                ["Binocular",nil,125],
                                ["tf_microdagr",nil,50],
                                ["ToolKit",nil,50],
                                ["ItemCompass",nil,500],
                                ["NVGoggles",nil,150],
                                ["pmc_earpiece",nil,500],
								//New
								 ["XZ_CamRecorder_2",nil,200],
                                ["XZ_CamRecorder_1",nil,200],
                                ["Xnooz_AppareilPhoto",nil,200],
								                                ["Xnooz_micro1",nil,200],
								                                ["Xnooz_micro2",nil,200],

								//
                                ["Chemlight_red",nil,200],
                                ["Chemlight_yellow",nil,200],
                                ["Chemlight_green",nil,200],
                                ["Chemlight_blue",nil,200]
								]
                ];
        };
};
