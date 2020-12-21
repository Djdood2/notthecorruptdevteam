/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	case "B_Heli_Transport_03_unarmed_F": {190};
	case "O_Heli_Transport_04_covered_F": {165};
	//
	case "I_Heli_light_03_unarmed_F": {65};
	case "ADM_GMC_Vandura": {85};
	case "Jonzie_Transit": {125};
    case "O_Heli_Light_02_unarmed_F": {0};
	case "shounka_a3_renaultmagnum_f": {300};
	case "GMC_01": {250};
	case "GMC_02": {250};
	case "GMC_03": {250};
	case "GMC_04": {250};
	case "GMC_05": {250};
	case "GMC_06": {250};
	case "GMC_07": {250};
	case "GMC_08": {250};
	case "GMC_09": {250};
	case "GMC_10": {250};
	case "GMC_11": {250};
	case "GMC_12": {250};
	case "GMC_13": {250};
	// default
	case "B_G_Offroad_01_F": {65};
	case "C_Van_01_fuel_F": {100};
	case "I_G_Van_01_fuel_F": {100};
	case "C_Van_01_transport_F": {100};
	case "I_G_Van_01_transport_F": {100};
	case "C_Van_01_box_F": {120};
	case "B_Heli_Light_01_F": {50};
	case "I_Heli_Transport_02_F": {50};
	case "C_Rubberboat": {45};
	case "B_G_Boat_Transport_01_F": {45};
	case "B_Boat_Transport_01_F": {45};
	case "Land_CargoBox_V1_F": {5000};
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {700};
	case "O_Heli_Light_02_unarmed_F": {80};
	case "C_Heli_Light_01_civil_F": {60};
	case "IVORY_CRJ200_1": {60};
	case "IVORY_ERJ135_1": {60};
	case "IVORY_YAK42D_1": {60};
	case "ivory_b206": {80};
	case "ivory_b206_news": {80};
	//planes
	case "C_Plane_Civil_01_F": {65};
	case "C_Plane_Civil_01_racing_F": {65};
	case "sab_dhc3": {65};
	case "sab_dhc3_2": {65};
	case "sab_dhc3_3": {65};
	case "sab_dhc3_4": {65};
	case "sab_dhc3_5": {65};
	case "sab_do228": {65};
	case "sab_do228_2": {65};
	case "sab_do228_3": {65};
	case "sab_do228_3_1": {65};
	case "sab_do228_3_2": {65};
	case "sab_do228_4": {65};
	case "sab_do228_4_1": {65};
	case "sab_do228_5": {65};
	case "sab_do228_5_1": {65};
	case "sab_do228_6": {65};
	case "sab_dolphin": {65};
	case "sab_dolphin_2": {65};
	case "sab_falcon": {65};
	case "sab_falcon_9": {65};
	//BIS_fnc_ORBATAddGroupOverlay
	case "red_searay_14_blue": {78};
	case "red_searay_14_white": {78};
	case "red_searay_14_black": {78};
	case "red_searay_14_shoreline": {78};
	case "red_searay_14_seablue": {78};
	//New
	case "F150_01": {40};
	case "F150_02": {40};
	case "F150_03": {40};
	case "F150_04": {40};
	case "F150_05": {40};
	case "F150_06": {40};
	case "F150_07": {40};
	case "F150_08": {40};
	case "F150_09": {40};
	case "F150_10": {40};
	case "F150_11": {40};
	case "F150_12": {40};
	case "F150_13": {40};
	//ring my bell 
	case "red_f350_08_darkgreen": {45};
	case "red_f350_08_darkred": {45};
	case "red_f350_08_purple": {45};
	case "red_f350_08_white": {45};
	case "red_f350_08_orange": {45};
	case "red_f350_08_yellow": {45};
	case "red_f350_08_pink": {45};
	case "red_f350_08_red": {45};
	case "red_f350_08_blue": {45};
	case "red_f350_08_black": {45};
	case "red_f350_08_aqua": {45};
	// newcaz
	  case "red_challenger_15_black": {21};
	  case "red_challenger_15_aqua": {21};
	  case "red_challenger_15_darkblue": {21};
	  case "red_challenger_15_green": {21};
	  case "red_challenger_15_red": {21};
	  case "red_challenger_15_pink": {21};
	  case "red_challenger_15_yellow": {21};
	  case "red_challenger_15_orange": {21};
	  case "red_challenger_15_white": {21};
	  case "red_challenger_15_purple": {21};
	  case "red_challenger_15_darkgreen": {21};
	  case "red_challenger_15_blue": {21};
	  case "red_challenger_15_darkred": {21};
	  ////
	  case "red_f12_13_darkred": {21};
			case "red_f12_13_darkgreen": {21};
			case "red_f12_13_purple": {21};
			case "red_f12_13_white": {21};
			case "red_f12_13_orange": {21};
			case "red_f12_13_yellow": {21};
			case "red_f12_13_pink": {21};
			case "red_f12_13_red": {21};
			case "red_f12_13_green": {21};
			case "red_f12_13_darkblue": {21};
			case "red_f12_13_aqua": {21};
			case "red_f12_13_black": {21};

			case "red_fusion_10_black": {21};
			case "red_fusion_10_aqua": {21};
			case "red_fusion_10_darkblue": {21};
			case "red_fusion_10_blue": {21};
			case "red_fusion_10_green": {21};
			case "red_fusion_10_red": {21};
			case "red_fusion_10_pink": {21};
			case "red_fusion_10_yellow": {21};
			case "red_fusion_10_orange": {21};
			case "red_fusion_10_white": {21};
			case "red_fusion_10_purple": {21};
			case "red_fusion_10_darkgreen": {21};
			case "red_fusion_10_darkred": {21};
	//dont be a culyer 
	case "Tahoe_01": {19};
	case "Tahoe_04": {19};
	case "Tahoe_06": {19};
	case "Tahoe_07": {19};
	case "Tahoe_08": {19};
	case "Tahoe_10": {19};
	case "Tahoe_12": {19};
	case "Tahoe_11": {19};
	case "Tahoe_13": {19};
	//dickhead dobbie
	case "ALRP_Explorer_NightRangers": {21};
	case "ALRP_Explorer_Lannister": {21};
	case "ALRP_Explorer_Vanguard": {21};
	case "ALRP_Explorer_Sopranos": {21};
	case "ALRP_Explorer_Mortem": {21};
	case "ALRP_Explorer_Hood": {21};
	case "ALRP_Explorer_FACELESS": {21};
	case "ALRP_Explorer_Homeland": {21};
	case "ALRP_Explorer_Lionheart": {21};
	case "ALRP_Explorer_Supernova": {21};
	//fancy n word nick
	case "RS5_01": {21};
	case "RS5_02": {21};
	case "RS5_03": {21};
	case "RS5_04": {21};
	case "RS5_05": {21};
	case "RS5_06": {21};
	case "RS5_07": {21};
	case "RS5_08": {21};
	case "RS5_09": {21};
	case "RS5_10": {21};
	case "RS5_11": {21};
	case "RS5_12": {21};
	case "RS5_13": {21};
	//
	case "red_explorer_16_darkred": {36};
	case "red_explorer_16_purple": {36};
	case "red_explorer_16_white": {36};
	case "red_explorer_16_yellow": {36};
	case "red_explorer_16_orange": {36};
	case "red_explorer_16_pink": {36};
	case "red_explorer_16_green": {36};
	case "red_explorer_16_blue": {36};
	case "red_explorer_16_darkblue": {36};
	case "red_explorer_16_aqua": {36};
	case "red_explorer_16_black": {36};
	//end
	case "Escalade_01": {21};
	case "Escalade_02": {21};
	case "Escalade_03": {21};
	case "Escalade_04": {21};
	case "Escalade_05": {21};
	case "Escalade_07": {21};
	case "Escalade_08": {21};
	case "Escalade_09": {21};
	case "Escalade_10": {21};
	case "Escalade_11": {21};
	case "Escalade_12": {21};
	case "Escalade_13": {21};
	//
	case "LandRover_01": {21};
	case "LandRover_02": {21};
	case "LandRover_03": {21};
	case "LandRover_04": {21};
	case "LandRover_05": {21};
	case "LandRover_06": {21};
	case "LandRover_07": {21};
	case "LandRover_08": {21};
	case "LandRover_09": {21};
	case "LandRover_10": {21};
	case "LandRover_11": {21};
	case "LandRover_12": {21};
	case "LandRover_13": {21};
	//gang lrovers
	case "ALRP_LandRover_Blackwatch": {21};
	case "ALRP_LandRover_Accardo": {21};
	case "ALRP_LandRover_Hughes": {21};
	case "ALRP_LandRover_Lan1": {21};
	case "ALRP_LandRover_Lan2": {21};
	case "ALRP_LandRover_Harambe": {21};
	case "ALRP_LandRover_TNS": {21};
	case "ALRP_LandRover_Outsiders": {21};
	case "ALRP_LandRover_LRF": {21};
	case "ALRP_LandRover_SWIFT": {21};
	case "ALRP_BMWM5_mantequilla": {21};
	default {14};
};