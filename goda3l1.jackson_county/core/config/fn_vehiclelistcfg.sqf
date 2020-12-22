#include <macro.h>
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "civ_kart":
	{
		_return = [
			["C_Kart_01_F",3650],
			["C_Kart_01_Fuel_F",3650],
			["C_Kart_01_Blu_F",3650],
			["C_Kart_01_Red_F",3650],
			["C_Kart_01_Vrana_F",3650]
		];
	};
	case "civ_ss":
	{
		_return = [
			["shounka_limo_civ",3200],
			["LandRoverUC_01",3200],
			["EscaladeUC_01",3200],
			["G65UC_01",3200],
			["FordCVUC_01",3200]
		];
	};
	case "civ_house":
	{
		_return = [
			["A3LRP_LanV_Red_BMW_M5",30000],
			["A3LRP_LanV_White_BMW_M5",30000],
			["A3LRP_LanV_Rainbow_Mustang",7856],
			["A3LRP_LanV_Kryptek_Mustang",10000],
			["A3LRP_LanV_Red_MercG65",10000],
			["A3LRP_LanV_Kryptec_MercG65",10520],
			["A3LRP_LanV_White_MercG65",10520],
			["A3LRP_LanV_Red_NissanGTR",10520],
			["A3LRP_LanV_White_NissanGTR",10520],
			["B_Heli_Transport_01_F",90000]
		];
	};
	case "civ_pusha":
	{
		_return = [
			["ivory_elise",22500],
			["ivory_gt500",13600],
			["ivory_supra",15000],
			["ivory_supra_topsecret",19500],
			["ivory_evox",15200],
			["ivory_wrx",26200],
			["ivory_c",19000],
			["ivory_rs4",21200],
			["ivory_r34",23200],
			["ivory_mp4",33000],
			["ivory_f1",35200],
			["ivory_lfa",25000],
			["ivory_veyron",115000],
			["Veyron_01",175000],
			["Veyron_04",175000],
			["Veyron_10",175000],
			["Veyron_11",175000]
		];
	};
	case "med_tru":
	{
		_return = [
			["HummerEMS",2000]
		];
	};
	case "med_command":
	{
		_return = [
			["red_stretcher_e_e",5],
			["Jonzie_Ambulance",300],
			["FPIUEMS_01",500],
			["FPIUEMS_02",500],
			["F150_EMS",2000]
		];
	};
	case "med_highcommand":
	{
		_return = [
			["red_stretcher_e_e",5],
			["Jonzie_Ambulance",300],
			["FPIUEMS_01",500],
			["FPIUEMS_02",500],
			["F150_EMS",500]
		];
	};
	case "med_shop":
	{
		_return = [
			["red_stretcher_e_e",5],
			["Jonzie_Ambulance",300]
		];
	};
	
	case "med_f":
	{
		_return = [

			["C_Rubberboat",150],
			["B_Boat_Transport_01_F",255],
			["I_C_Boat_Transport_02_F",255],
			["B_SDV_01_F",255]
		];
	};

	case "med_air_hs":
	{
		_return = [
			["EMS_Chopper1",1500],
			["EMS_Chopper2",1500],
			["ivory_b206_rescue",2000]
		];
	};
	
	case "exo_car":
	{
		_return = [
			["Wraithlu_civ_rouge",1800000],
			["Wraithlu_civ_noir",1800000],
			["Wraithlu_civ_yellow",1800000],
			["Wraithlu_civ_gris",1800000],
			["Wraithlu_civ_bleu",1800000],
			["Wraithlu_civ",1800000],
			
			["ivory_elise",22500],
			["ivory_gt500",13600],
			["ivory_supra",60000],
			["ivory_supra_topsecret",60000],
			["ivory_evox",50000],
			["ivory_wrx",50000],
			["ivory_c",19000],
			["ivory_rs4",70000],
			["ivory_r34",100000],
			["ivory_mp4",160000],
			["ivory_f1",250000],
			["ivory_lfa",110000],
			////
			["red_f12_13_darkred",290000],
			["red_f12_13_darkgreen",290000],
			["red_f12_13_purple",290000],
			["red_f12_13_white",290000],
			["red_f12_13_orange",290000],
			["red_f12_13_yellow",290000],
			["red_f12_13_pink",290000],
			["red_f12_13_red",290000],
			["red_f12_13_green",290000],
			["red_f12_13_darkblue",290000],
			["red_f12_13_aqua",290000],
			["red_f12_13_black",290000],
			////
			["Bentley_01",160000],
			["Bentley_02",160000],
			["Bentley_03",160000],
			["Bentley_04",160000],
			["Bentley_05",160000],
			["Bentley_06",160000],
			["Bentley_07",160000],
			["Bentley_08",160000],
			["Bentley_09",160000],
			["Bentley_10",160000],
			["Bentley_11",160000],
			["Bentley_12",160000],
			["Bentley_13",160000],
			////
			["EVOX_01",50000],
			["EVOX_02",50000],
			["EVOX_03",50000],
			["EVOX_04",50000],
			["EVOX_05",50000],
			["EVOX_06",50000],
			["EVOX_07",50000],
			["EVOX_08",50000],
			["EVOX_09",50000],
			["EVOX_10",50000],
			["EVOX_11",50000],
			["EVOX_12",50000],
			["EVOX_13",50000],
			["EVOX_14",50000],
			["EVOX_15",50000],
			["EVOX_16",50000],
			["EVOX_17",50000],
			//////
			["GTR_01",110000],
			["GTR_02",110000],
			["GTR_03",110000],
			["GTR_04",110000],
			["GTR_05",110000],
			["GTR_06",110000],
			["GTR_07",110000],
			["GTR_08",110000],
			["GTR_09",110000],
			["GTR_10",110000],
			["GTR_11",110000],
			["GTR_12",110000],
			["GTR_13",110000],
			//
			["red_venomgt_11_black",1500000],
			["red_venomgt_11_aqua",1500000],
			["red_venomgt_11_darkblue",1500000],
			["red_venomgt_11_green",1500000],
			["red_venomgt_11_red",1500000],
			["red_venomgt_11_pink",1500000],
			["red_venomgt_11_yellow",1500000],
			["red_venomgt_11_orange",1500000],
			["red_venomgt_11_white",1500000],
			["red_venomgt_11_purple",1500000],
			["red_venomgt_11_darkgreen",1500000],
			["red_venomgt_11_darkred",1500000],
						///
			["G65_01",800000],
			["G65_02",800000],
			["G65_03",800000],
			["G65_04",800000],
			["G65_05",800000],
			["G65_06",800000],
			["G65_07",800000],
			["G65_08",800000],
			["G65_09",800000],
			["G65_10",800000],
			["G65_11",800000],
			["G65_12",800000],
			["G65_13",800000],
			/////
			["FordMustang_01",40000],
			["FordMustang_02",40000],
			["FordMustang_03",40000],
			["FordMustang_04",40000],
			["FordMustang_05",40000],
			["FordMustang_06",40000],
			["FordMustang_07",40000],
			["FordMustang_08",40000],
			["FordMustang_09",40000],
			["FordMustang_10",40000],
			["FordMustang_11",40000],
			["FordMustang_12",40000],
			["FordMustang_13",40000],
			////
			["red_camaro_12_darkgreen",40000],
			["red_camaro_12_darkblue",40000],
			["red_camaro_12_pink",40000],
			["red_camaro_12_yellow",40000],
			["red_camaro_12_white",40000],
			["red_camaro_12_orange",40000],
			["red_camaro_12_blue",40000],
			["red_camaro_12_aqua",40000],
			["red_camaro_12_darkred",40000],
			["red_camaro_12_black",40000],
			/////
			["red_panamera_10_black",60000],
			["red_panamera_10_aqua",60000],
			["red_panamera_10_darkblue",60000],
			["red_panamera_10_green",60000],
			["red_panamera_10_red",60000],
			["red_panamera_10_pink",60000],
			["red_panamera_10_yellow",60000],
			["red_panamera_10_orange",60000],
			["red_panamera_10_white",60000],
			["red_panamera_10_purple",60000],
			["red_panamera_10_darkgreen",60000],
			["red_panamera_10_darkred",60000],
			///
			["red_vanquish_13_black",100000],
			["red_vanquish_13_aqua",100000],
			["red_vanquish_13_blue",100000],
			["red_vanquish_13_darkblue",100000],
			["red_vanquish_13_green",100000],
			["red_vanquish_13_red",100000],
			["red_vanquish_13ink",100000],
			["red_vanquish_13_yellow",100000],
			["red_vanquish_13_orange",100000],
			["red_vanquish_13_white",100000],
			["red_vanquish_13urple",100000],
			["red_vanquish_13_darkgreen",100000],
			["red_vanquish_13_darkred",100000],
			//
			["red_corvette_14_darkred",80000],
			["red_corvette_14_darkgreen",80000],
			["red_corvette_14_purple",80000],
			["red_corvette_14_white",80000],
			["red_corvette_14_orange",80000],
			["red_corvette_14_yellow",80000],
			["red_corvette_14_pink",80000],
			["red_corvette_14_red",80000],
			["red_corvette_14_green",80000],
			["red_corvette_14_darkblue",80000],
			["red_corvette_14_aqua",80000],
			["red_corvette_14_black",80000],
			
			["red_porsche_12_black",150000],
			["red_porsche_12_aqua",150000],
			["red_porsche_12_blue",150000],
			["red_porsche_12_green",150000],
			["red_porsche_12_red",150000],
			["red_porsche_12_yellow",150000],
			["red_porsche_12ink",150000],
			["red_porsche_12_yellow",150000],
			["red_porsche_12_orange",150000],
			["red_porsche_12_white",150000],
			["red_porsche_12urple",150000],
			["red_porsche_12_darkgreen",150000],
			["red_porsche_12_darkred",150000],
			
			["red_xkrs_12_black",110000],
			["red_xkrs_12_aqua",110000],
			["red_xkrs_12_darkblue",110000],
			["red_xkrs_12_red",110000],
			["red_xkrs_12_orange",110000],
			["red_xkrs_12_white",110000],
			["red_xkrs_12_purple",110000],
			["red_xkrs_12_darkgreen",110000],
			["red_xkrs_12_darkred",110000],
			
			["red_s65_12_black",70000],
			["red_s65_12_aqua",70000],
			["red_s65_12_darkblue",70000],
			["red_s65_12_green",70000],
			["red_s65_12_red",70000],
			["red_s65_12_pink",70000],
			["red_s65_12_orange",70000],
			["red_s65_12_white",70000],
			["red_s65_12_purple",70000],
			["red_s65_12_darkgreen",70000],
			["red_s65_12_darkred",70000],
			
			["red_gs350_13_black",35000],
			["red_gs350_13_blue",35000],
			["red_gs350_13_darkblue",35000],
			["red_gs350_13_red",35000],
			["red_gs350_13_brown",35000],
			["red_gs350_13_white",35000],
			["red_gs350_13_purple",35000],
			["red_gs350_13_grey",35000],
			["red_gs350_13_darkred",35000],
			//NEW
			["JM_Koenigsegg_Red",1050000],
			["JM_Koenigsegg_Pink",1050000],
			["JM_Koenigsegg_Black",1050000],
			["JM_Koenigsegg_Blue",1050000],
			["JM_Koenigsegg_LightBlue",1050000],
			["JM_Koenigsegg_Green",1050000],
			["JM_Koenigsegg_Lime",1050000],
			["JM_Koenigsegg_Yellow",1050000],
			["JM_Koenigsegg_White",1050000],
			["JM_Koenigsegg_Orange",1050000],
			["JM_Koenigsegg_Purple",1050000],
			["JM_Koenigsegg_Grey",1050000],
			//
			["JM_Reventon_Red",250000],
			["JM_Reventon_Pink",250000],
			["JM_Reventon_Black",250000],
			["JM_Reventon_Blue",250000],
			["JM_Reventon_LightBlue",250000],
			["JM_Reventon_Green",250000],
			["JM_Reventon_Lime",250000],
			["JM_Reventon_Purple",250000],
			["JM_Reventon_Grey",250000],
			["JM_Reventon_Orange",250000],
			["JM_Reventon_White",250000],
			["JM_Reventon_Yellow",250000],
			///
			["MrShounka_veneno_c_noir",1000000],
			["MrShounka_veneno_c_bleu",1000000],
			["MrShounka_veneno_c",1000000],
			["MrShounka_veneno_c_jaune",1000000],
			///
			["Ferrari_01", 200000],
			["Ferrari_02", 200000],
			["Ferrari_03", 200000],
			["Ferrari_04", 200000],
			["Ferrari_05", 200000],
			["Ferrari_06", 200000],
			["Ferrari_07", 200000],
			["Ferrari_08", 200000],
			["Ferrari_09", 200000],
			["Ferrari_10", 200000],
			["Ferrari_11", 200000],
			["Ferrari_12", 200000],
			["Ferrari_13", 200000],

			["X5_01", 60000],
			["X5_02", 60000],
			["X5_03", 60000],
			["X5_04", 60000],
			["X5_05", 60000],
			["X5_06", 60000],
			["X5_07", 60000],
			["X5_08", 60000],
			["X5_09", 60000],
			["X5_10", 60000],
			["X5_11", 60000],
			["X5_12", 60000],
			["X5_13", 60000],

			["Subaru_01", 30000],
			["Subaru_02", 30000],
			["Subaru_03", 30000],
			["Subaru_04", 30000],
			["Subaru_05", 30000],
			["Subaru_06", 30000],
			["Subaru_07", 30000],
			["Subaru_08", 30000],
			["Subaru_09", 30000],
			["Subaru_10", 30000],
			["Subaru_11", 30000],
			["Subaru_12", 30000],
			["Subaru_13", 30000],

			["Maserati_01", 120000],
			["Maserati_02", 120000],
			["Maserati_03", 120000],
			["Maserati_04", 120000],
			["Maserati_05", 120000],
			["Maserati_06", 120000],
			["Maserati_07", 120000],
			["Maserati_08", 120000],
			["Maserati_09", 120000],
			["Maserati_10", 120000],
			["Maserati_11", 120000],
			["Maserati_12", 120000],
			["Maserati_13", 120000],

			["BMWM4_01", 80000],
			["BMWM4_02", 80000],
			["BMWM4_03", 80000],
			["BMWM4_04", 80000],
			["BMWM4_05", 80000],
			["BMWM4_06", 80000],
			["BMWM4_07", 80000],
			["BMWM4_08", 80000],
			["BMWM4_09", 80000],
			["BMWM4_10", 80000],
			["BMWM4_11", 80000],
			["BMWM4_12", 80000],
			["BMWM4_13", 80000],

			["Veyron_01", 1000000],
			["Veyron_02", 1000000],
			["Veyron_03", 1000000],
			["Veyron_04", 1000000],
			["Veyron_05", 1000000],
			["Veyron_06", 1000000],
			["Veyron_07", 1000000],
			["Veyron_08", 1000000],
			["Veyron_09", 1000000],
			["Veyron_10", 1000000],
			["Veyron_11", 1000000],
			["Veyron_12", 1000000],
			["Veyron_13", 1000000],

			["Lambo_01", 300000],
			["Lambo_02", 300000],
			["Lambo_03", 300000],
			["Lambo_04", 300000],
			["Lambo_05", 300000],
			["Lambo_06", 300000],
			["Lambo_07", 300000],
			["Lambo_08", 300000],
			["Lambo_09", 300000],
			["Lambo_10", 300000],
			["Lambo_11", 300000],
			["Lambo_12", 300000],
			["Lambo_13", 300000],
		];
	};
	case "dodge_car":
	{
		_return =
		[
			["red_ram_06_black",27000],
			["red_charger_12_aqua",70000],
			["red_charger_12_darkblue",70000],
			["red_charger_12_green",70000],
			["red_charger_12_red",70000],
			["red_charger_12_pink",70000],
			["red_charger_12_yellow",70000],
			["red_charger_12_orange",70000],
			["red_charger_12_white",70000],
			["red_charger_12_purple",70000],
			["red_charger_12_darkgreen",70000],
			["red_charger_12_darkred",70000],
			//NEW
			["red_charger_15_aqua",45000],
			["red_charger_15_darkblue",45000],
			["red_charger_15_green",45000],
			["red_charger_15_red",45000],
			["red_charger_15_pink",45000],
			["red_charger_15_yellow",45000],
			["red_charger_15_orange",45000],
			["red_charger_15_white",45000],
			["red_charger_15_purple",45000],
			["red_charger_15_darkgreen",45000],
			["red_charger_15_darkred",45000],
			///
			["red_challenger_15_black",40000],
			["red_challenger_15_aqua",40000],
			["red_challenger_15_darkblue",40000],
			["red_challenger_15_green",40000],
			["red_challenger_15_red",40000],
			["red_challenger_15_pink",40000],
			["red_challenger_15_yellow",40000],
			["red_challenger_15_orange",40000],
			["red_challenger_15_white",40000],
			["red_challenger_15_purple",40000],
			["red_challenger_15_darkgreen",40000],
			["red_challenger_15_blue",40000],
			["red_challenger_15_darkred",40000],
		];
	};
	case "civ_car":
	{
		_return =
		[
			["red_fusion_10_black",3000],
			["red_fusion_10_aqua",3000],
			["red_fusion_10_darkblue",3000],
			["red_fusion_10_blue",3000],
			["red_fusion_10_green",3000],
			["red_fusion_10_red",3000],
			["red_fusion_10_pink",3000],
			["red_fusion_10_yellow",3000],
			["red_fusion_10_orange",3000],
			["red_fusion_10_white",3000],
			["red_fusion_10_purple",3000],
			["red_fusion_10_darkgreen",3000],
			["red_fusion_10_darkred",3000],
			//
			["red_beetle_66_black",2000],
			["red_beetle_66_fontanagrey",2000],
			["red_beetle_66_pearlwhite",2000],
			["red_beetle_66_rubyred",2000],
			["red_beetle_66_seablue",2000],
			["red_beetle_66_vwblue",2000],
			["red_beetle_66_yukonyellow",2000],
			["red_beetle_66_seasand",2000],
			["red_beetle_66_bahamablue",2000],
			["red_beetle_66_javagreen",2000],
			//
			["red_taurus_10_blue",15000],
			["red_taurus_10_green",15000],
			["red_taurus_10_red",15000],
			["red_taurus_10_pink",15000],
			["red_taurus_10_yellow",15000],
			["red_taurus_10_orange",15000],
			["red_taurus_10_white",15000],
			["red_taurus_10_purple",15000],
			["red_taurus_10_darkgreen",15000],
			["red_taurus_10_darkred",15000],
			//NEW
			["red_cvpi_06_darkgreen",8000],
			["red_cvpi_06_darkred",8000],
			["red_cvpi_06_purple",8000],
			["red_cvpi_06_white",8000],
			["red_cvpi_06_orange",8000],
			["red_cvpi_06_yellow",8000],
			["red_cvpi_06_pink",8000],
			["red_cvpi_06_red",8000],
			["red_cvpi_06_blue",8000],
			["red_cvpi_06_black",8000],
			["red_cvpi_06_aqua",8000],
			///////////////////////
			["red_explorer_16_darkred",18000],
			["red_explorer_16_purple",18000],
			["red_explorer_16_white",18000],
			["red_explorer_16_yellow",18000],
			["red_explorer_16_orange",18000],
			["red_explorer_16_pink",18000],
			["red_explorer_16_green",18000],
			["red_explorer_16_blue",18000],
			["red_explorer_16_darkblue",18000],
			["red_explorer_16_aqua",18000],
			["red_explorer_16_black",18000],
			///////////////////////
			["Tahoe_01",10000],
			["Tahoe_04",10000],
			["Tahoe_06",10000],
			["Tahoe_07",10000],
			["Tahoe_08",10000],
			["Tahoe_10",10000],
			["Tahoe_12",10000],
			["Tahoe_11",10000],
			["Tahoe_13",10000]
			//
			["F150_01",30000],
			["F150_02",30000],
			["F150_03",30000],
			["F150_04",30000],
			["F150_05",30000],
			["F150_06",30000],
			["F150_07",30000],
			["F150_08",30000],
			["F150_09",30000],
			["F150_10",30000],
			["F150_11",30000],
			["F150_12",30000],
			["F150_13",30000],
			//
			["red_f350_08_darkgreen",14000],
			["red_f350_08_darkred",14000],
			["red_f350_08_purple",14000],
			["red_f350_08_white",14000],
			["red_f350_08_orange",14000],
			["red_f350_08_yellow",14000],
			["red_f350_08_pink",14000],
			["red_f350_08_red",14000],
			["red_f350_08_blue",14000],
			["red_f350_08_black",14000],
			["red_f350_08_aqua",14000],
			/////
			["M5_01",40000],
			["M5_02",40000],
			["M5_03",40000],
			["M5_04",40000],
			["M5_05",40000],
			["M5_06",40000],
			["M5_07",40000],
			["M5_08",40000],
			["M5_09",40000],
			["M5_10",40000],
			["M5_11",40000],
			["M5_12",40000],
			["M5_13",40000],
			//////
			["RS5_01",40000],
			["RS5_02",40000],
			["RS5_03",40000],
			["RS5_04",40000],
			["RS5_05",40000],
			["RS5_06",40000],
			["RS5_07",40000],
			["RS5_08",40000],
			["RS5_09",40000],
			["RS5_10",40000],
			["RS5_11",40000],
			["RS5_12",40000],
			["Tahoe_01",6000],
			["Tahoe_04",6000],
			["Tahoe_06",6000],
			["Tahoe_07",6000],
			["Tahoe_08",6000],
			["Tahoe_10",6000],
			["Tahoe_12",6000],
			["Tahoe_11",6000],
			["Tahoe_13",6000],
			////
			["2013Tahoe_01",20000],
			["2013Tahoe_02",20000],
			["2013Tahoe_03",20000],
			["2013Tahoe_04",20000],
			["2013Tahoe_05",20000],
			["2013Tahoe_06",20000],
			["2013Tahoe_07",20000],
			["2013Tahoe_08",20000],
			["2013Tahoe_09",20000],
			["2013Tahoe_10",20000],
			["2013Tahoe_11",20000],
			["2013Tahoe_12",20000],
			["2013Tahoe_13",20000],
			////
			["Mustang_01",40000],
			["Mustang_02",40000],
			["Mustang_03",40000],
			["Mustang_04",40000],
			["Mustang_05",40000],
			["Mustang_06",40000],
			["Mustang_07",40000],
			["Mustang_08",40000],
			["Mustang_09",40000],
			["Mustang_10",40000],
			["Mustang_08",40000],
			//////
			["Escalade_01",50000],
			["Escalade_02",50000],
			["Escalade_03",50000],
			["Escalade_04",50000],
			["Escalade_05",50000],
			["Escalade_06",50000],
			["Escalade_07",50000],
			["Escalade_08",50000],
			["Escalade_09",50000],
			["Escalade_10",50000],
			["Escalade_11",50000],
			["Escalade_12",50000],
			["Escalade_13",50000],
			////
			["LandRover_01",50000],
			["LandRover_02",50000],
			["LandRover_04",50000],
			["LandRover_03",50000],
			["LandRover_05",50000],
			["LandRover_06",50000],
			["LandRover_07",50000],
			["LandRover_08",50000],
			["LandRover_09",50000],
			["LandRover_10",50000],
			["LandRover_11",50000],
			["LandRover_12",50000],
			["LandRover_13",50000],
			["red_suburban_15_darkred",40000],
			["red_suburban_15_purple",40000],
			["red_suburban_15_white",40000],
			["red_suburban_15_yellow",40000],
			["red_suburban_15_orange",40000],
			["red_suburban_15_pink",40000],
			["red_suburban_15_green",40000],
			["red_suburban_15_blue",40000],
			["red_suburban_15_darkblue",40000],
			["red_suburban_15_aqua",40000],
			["red_suburban_15_black",40000]
		];
	};

	case "civ_truck":
	{
		_return =
		[
			["GMC_01",4000],
			["GMC_02",4000],
			["GMC_03",4000],
			["GMC_04",4000],
			["GMC_05",4000],
			["GMC_06",4000],
			["GMC_07",4000],
			["GMC_08",4000],
			["GMC_09",4000],
			["GMC_10",4000],
			["GMC_11",4000],
			["GMC_12",4000],
			["GMC_13",4000],
			["C_Van_01_fuel_F",10000],
			["C_Van_01_box_F",15000],
			["C_Van_01_transport_F",11000],
			["C_Van_01_box_F",10000],
			["C_Van_01_transport_F",8500],
			["I_Truck_02_transport_F",20000]
			["C_Truck_02_covered_F",22000]
			["A3L_SchoolBus",20000],
			["A3L_Bus",20000],
			["shounka_a3_renaultmagnum_f",100000]

		];
	};
	case "reb_car":
	{
		_return =
		[
			["B_Heli_Light_01_F",250000],
			["B_MRAP_01_F",600000]
			["B_G_Offroad_01_armed_F",900000]
			["I_G_Offroad_01_armed_F",900000]
		];
	};
	case "cop_uc":
	{
		_return =
		[
			["M5UC_01",250],
			["M5UC_02",250],
			["M5UC_03",250],
			["M5UC_04",250],
			["M5UC_05",250],
			["M5UC_06",250],
			["M5UC_07",250],
			["M5UC_08",250],
			["M5UC_09",250],
			["M5UC_10",250],
			["M5UC_11",250],
			["M5UC_12",250],
			["M5UC_13",250],
			["2013TahoeUC_01",250],
			["2013TahoeUC_02",250],
			["2013TahoeUC_03",250],
			["2013TahoeUC_04",250],
			["2013TahoeUC_05",250],
			["2013TahoeUC_06",250],
			["2013TahoeUC_07",250],
			["2013TahoeUC_08",250],
			["2013TahoeUC_09",250],
			["2013TahoeUC_10",250],
			["2013TahoeUC_11",250],
			["2013TahoeUC_12",250],
			["MustangUC_01",250],
			["MustangUC_02",250],
			["MustangUC_03",250],
			["MustangUC_04",250],
			["MustangUC_05",250],
			["MustangUC_06",250],
			["MustangUC_07",250],
			["MustangUC_08",250],
			["MustangUC_09",250],
			["MustangUC_10",250],
			["MustangUC_11",250],
			["MustangUC_12",250],
			["MustangUC_13",250],
			["RS5UC_01",250],
			["RS5UC_02",250],
			["RS5UC_03",250],
			["RS5UC_04",250],
			["RS5UC_05",250],
			["RS5UC_06",250],
			["RS5UC_07",250],
			["RS5UC_09",250],
			["RS5UC_10",250],
			["RS5UC_11",250],
			["RS5UC_12",250],
			["RS5UC_13",250],
			["GMCUC_01",250],
			["GMCUC_02",250],
			["GMCUC_03",250],
			["GMCUC_04",250],
			["GMCUC_05",250],
			["GMCUC_06",250],
			["GMCUC_07",250],
			["GMCUC_08",250],
			["GMCUC_09",250],
			["GMCUC_10",250],
			["GMCUC_11",250],
			["GMCUC_12",250],
			["GMCUC_13",250],
			["BentleyUC_01",250],
			["BentleyUC_01",250],
			["BentleyUC_02",250],
			["BentleyUC_03",250],
			["BentleyUC_04",250],
			["BentleyUC_05",250],
			["BentleyUC_06",250],
			["BentleyUC_07",250],
			["BentleyUC_08",250],
			["BentleyUC_09",250],
			["BentleyUC_10",250],
			["BentleyUC_11",250],
			["BentleyUC_12",250],
			["BentleyUC_13",250],
			["EscaladeUC_01",250],
			["EscaladeUC_02",250],
			["EscaladeUC_03",250],
			["EscaladeUC_04",250],
			["EscaladeUC_05",250],
			["EscaladeUC_06",250],
			["EscaladeUC_07",250],
			["EscaladeUC_08",250],
			["EscaladeUC_09",250],
			["EscaladeUC_10",250],
			["EscaladeUC_11",250],
			["EscaladeUC_12",250],
			["EscaladeUC_13",250],
			///niggers
			["F150UC_01",250],
			["F150UC_02",250],
			["F150UC_03",250],
			["F150UC_04",250],
			["F150UC_05",250],
			["F150UC_06",250],
			["F150UC_07",250],
			["F150UC_08",250],
			["F150UC_09",250],
			["F150UC_10",250],
			["F150UC_11",250],
			["F150UC_12",250],
			["F150UC_13",250],
			//////
			////
			["G65UC_01",450],
			["G65UC_02",450],
			["G65UC_03",450],
			["G65UC_04",450],
			["G65UC_05",450],
			["G65UC_06",450],
			["G65UC_07",450],
			["G65UC_08",450],
			["G65UC_09",450],
			["G65UC_10",450],
			["G65UC_11",450],
			["G65UC_12",450],
			["G65UC_13",450],
			////
			["FPIUUC_01",450],
			["FPIUUC_02",450],
			["FPIUUC_03",450],
			["FPIUUC_04",450],
			["FPIUUC_05",450],
			["FPIUUC_06",450],
			["FPIUUC_07",450],
			["FPIUUC_08",450],
			["FPIUUC_09",450],
			["FPIUUC_10",450],
			["FPIUUC_11",450],
			["FPIUUC_12",450],
			["FPIUUC_13",450],
            /////////////////////
		    ["FordCVUC_01",450],
			["FordCVUC_02",450],
			["FordCVUC_03",450],
			["FordCVUC_04",450],
			["FordCVUC_05",450],
			["FordCVUC_06",450],
			["FordCVUC_07",450],
			["FordCVUC_08",450],
			["FordCVUC_09",450],
			["FordCVUC_10",450],
			["FordCVUC_11",450],
			["FordCVUC_12",450],
			["FordCVUC_13",450],
			////////
			["EVOXUC_01",450],
			["EVOXUC_02",450],
			["EVOXUC_03",450],
			["EVOXUC_04",450],
			["EVOXUC_05",450],
			["EVOXUC_06",450],
			["EVOXUC_07",450],
			["EVOXUC_08",450],
			["EVOXUC_09",450],
			["EVOXUC_10",450],
			["EVOXUC_11",450],
			["EVOXUC_12",450],
			["EVOXUC_13",450],
			//memes
			["red_panamera_10_p_u_aqua",500],
			["red_panamera_10_p_u_black",500],
			["red_panamera_10_p_u_darkblue",500],
			["red_panamera_10_p_u_green",500],
			["red_panamera_10_p_u_red",500],
			["red_panamera_10_p_u_pink",500],
			["red_panamera_10_p_u_yellow",500],
			["red_panamera_10_p_u_orange",500],
			["red_panamera_10_p_u_white",500],
			["red_panamera_10_p_u_purple",500],
			["red_panamera_10_p_u_darkgreen",500],
			["red_panamera_10_p_u_blue",500],
			////////
			["red_porsche_12_p_u_purple",500],
			["red_porsche_12_p_u_darkgreen",500],
			["red_porsche_12_p_u_orange",500],
			["red_porsche_12_p_u_darkred",500],
			["red_porsche_12_p_u_darkblue",500],
			["red_porsche_12_p_u_pink",500],
			["red_porsche_12_p_u_white",500],
			["red_porsche_12_p_u_yellow",500],
			["red_porsche_12_p_u_black",500],
			["red_porsche_12_p_u_aqua",500],
			////////
			///////
			["red_camaro_12_p_u_green",500],
			["red_camaro_12_p_u_blue",500],
			["red_camaro_12_p_u_darkgreen",500],
			["red_camaro_12_p_u_orange",500],
			["red_camaro_12_p_u_darkred",500],
			["red_camaro_12_p_u_darkblue",500],
			["red_camaro_12_p_u_pink",500],
			["red_camaro_12_p_u_purple",500],
			["red_camaro_12_p_u_white",500],
			["red_camaro_12_p_u_yellow",500],
			["red_camaro_12_p_u_black",500],
			["red_camaro_12_p_u_aqua",500],
			//////////////////////
			["red_taurus_10_p_u_green",500],
			["red_taurus_10_p_u_blue",500],
			["red_taurus_10_p_u_darkgreen",500],
			["red_taurus_10_p_u_orange",500],
			["red_taurus_10_p_u_darkred",500],
			["red_taurus_10_p_u_darkblue",500],
			["red_taurus_10_p_u_pink",500],
			["red_taurus_10_p_u_purple",500],
			["red_taurus_10_p_u_white",500],
			["red_taurus_10_p_u_yellow",500],
			["red_taurus_10_p_u_black",500],
			["red_taurus_10_p_u_aqua",500],
			/////////////////////
			["red_charger_15_p_u_green",500],
			["red_charger_15_p_u_darkgreen",500],
			["red_charger_15_p_u_orange",500],
			["red_charger_15_p_u_darkred",500],
			["red_charger_15_p_u_darkblue",500],
			["red_charger_15_p_u_pink",500],
			["red_charger_15_p_u_purple",500],
			["red_charger_15_p_u_white",500],
			["red_charger_15_p_u_yellow",500],
			["red_charger_15_p_u_black",500],
			["red_charger_15_p_u_aqua",500],
			/////
			["red_charger_12_p_u_green",500],
			["red_charger_12_p_u_darkgreen",500],
			["red_charger_12_p_u_orange",500],
			["red_charger_12_p_u_darkred",500],
			["red_charger_12_p_u_darkblue",500],
			["red_charger_12_p_u_pink",500],
			["red_charger_12_p_u_purple",500],
			["red_charger_12_p_u_white",500],
			["red_charger_12_p_u_yellow",500],
			["red_charger_12_p_u_black",500],
			["red_charger_12_p_u_aqua",500],
			///////////////////////
			["red_suburban_15_p_u_green",500],
			["red_suburban_15_p_u_blue",500],
			["red_suburban_15_p_u_darkgreen",500],
			["red_suburban_15_p_u_orange",500],
			["red_suburban_15_p_u_darkred",500],
			["red_suburban_15_p_u_darkblue",500],
			["red_suburban_15_p_u_pink",500],
			["red_suburban_15_p_u_purple",500],
			["red_suburban_15_p_u_white",500],
			["red_suburban_15_p_u_yellow",500],
			["red_suburban_15_p_u_black",500],
			["red_suburban_15_p_u_aqua",500],
			/////////////////////////
			["MustangPDUC_01",505],
			["MustangPDUC_02",505],
			["MustangPDUC_03",505],
			["MustangPDUC_04",505],
			["MustangPDUC_05",505],
			["MustangPDUC_06",505],
			["MustangPDUC_07",505],
			["MustangPDUC_08",505],
			["MustangPDUC_09",505],
			["MustangPDUC_10",505],
			["MustangPDUC_11",505],
			["MustangPDUC_12",505],
			["MustangPDUC_13",505],
			["MustangPDUC_14",505],
			["LandRoverUC_01",500],
			["LandRoverUC_02",500],
			["LandRoverUC_03",500],
			["LandRoverUC_04",500],
			["LandRoverUC_05",500],
			["LandRoverUC_06",500],
			["LandRoverUC_07",500],
			["LandRoverUC_08",500],
			["LandRoverUC_09",500],
			["LandRoverUC_10",500],
			["LandRoverUC_11",500],
			["LandRoverUC_12",500],
			["LandRoverUC_13",500],
			["TahoePDUC_01",525],
			["TahoePDUC_05",525],
			["TahoePDUC_07",525],
			["TahoePDUC_08",525],
			["TahoePDUC_09",525],
			["TahoePDUC_10",525],
			["TahoePDUC_11",525],
			["TahoePDUC_12",525],
			["TahoePDUC_13",525],
			["TahoePDUC_13",525],
			["ivory_rs4_unmarked",550],
			["ivory_suburban_unmarked",550],
			["ivory_m3_unmarked",550],
			["ivory_isf_unmarked",550],
			["ivory_evox_unmarked",550],
			["ivory_wrx_unmarked",550]
		];
	};
	case "cop_under":
	{
		_return =
		[
			["red_taurus_10_blue",75],
			["red_taurus_10_green",75],
			["red_taurus_10_red",75],
			["red_taurus_10_pink",75],
			["red_taurus_10_yellow",75],
			["red_taurus_10_orange",75],
			["red_taurus_10_white",75],
			["red_taurus_10_purple",75],
			["red_taurus_10_darkgreen",75],
			["red_taurus_10_darkred",75],
			["F150_01",250],
			["F150_02",250],
			["F150_03",250],
			["F150_04",250],
			["F150_05",250],
			["F150_06",250],
			["F150_07",250],
			["F150_08",250],
			["F150_09",250],
			["F150_10",250],
			["F150_11",250],
			["F150_12",250],
			["F150_13",250],
			//NEW
			["red_cvpi_06_darkgreen",135],
			["red_cvpi_06_darkred",135],
			["red_cvpi_06_purple",135],
			["red_cvpi_06_white",135],
			["red_cvpi_06_orange",135],
			["red_cvpi_06_yellow",135],
			["red_cvpi_06_pink",135],
			["red_cvpi_06_red",135],
			["red_cvpi_06_blue",135],
			["red_cvpi_06_black",135],
			["red_cvpi_06_aqua",135],
			///////////////////////
			["red_explorer_16_darkred",35],
			["red_explorer_16_purple",35],
			["red_explorer_16_white",35],
			["red_explorer_16_yellow",35],
			["red_explorer_16_orange",35],
			["red_explorer_16_pink",35],
			["red_explorer_16_green",35],
			["red_explorer_16_blue",35],
			["red_explorer_16_darkblue",35],
			["red_explorer_16_aqua",35],
			["red_explorer_16_black",35],
			///////////////////////
			["Tahoe_01",85],
			["Tahoe_04",85],
			["Tahoe_06",85],
			["Tahoe_07",85],
			["Tahoe_08",85],
			["Tahoe_10",85],
			["Tahoe_12",85],
			["Tahoe_11",85],
			["Tahoe_13",85],
			/////
			["FordMustang_01",100],
			["FordMustang_02",100],
			["FordMustang_03",100],
			["FordMustang_04",100],
			["FordMustang_05",100],
			["FordMustang_06",100],
			["FordMustang_07",100],
			["FordMustang_08",100],
			["FordMustang_09",100],
			["FordMustang_10",100],
			["FordMustang_11",100],
			["FordMustang_12",100],
			["FordMustang_13",100]
		];
	};
	
	case "cop_adv":
	{
		_return =
		[
			["M_Tahoe_UC_Black",800],
			["M_Charger12_UC_Black",800]
			["M_CVPI_UC_Black",800],
			["M_CVPI_UC_White",800],
			["M_CVPI_UC_Grey",800],
			["M_FPIS_UC_White",800],
			["M_FPIS_UC_Grey",800]

		];
	};
	
	case "cop_adminb":
	{
		_return =
		[
			["X5UC_01",10000],
			["BMWM4UC_01",10000],
			["SubaruUC_01",10000],
			["RS5UC_01",10000],
			["red_porsche_12_p_u_black",10000],
			["BentleyUC_01",10000]
			
		];
	};
	
	case "cop_car":
	{

		_return =
		[
			["M_CVPI",300],
			["M_CVPI_Slick",300],
			["M_Tahoe",500],
			["FPIU_05",400],
			["M_FPIS_New",350],
			["M_FPIS_slick",350],
			["M_Charger12_slick",700],
			["M_Charger12_NEW",700],
			["FPIU_04",400],
			["TahoePD_02",500],
			["F150_DOC",2000],
			["MustangPD_04",2000],
			["A3L_jailBus",200]
		];
	};
	
	case "cop_swatcar":
	{
		_return =
		[
			["f150UC_01",2000],
			["HummerSERT_02",3000]
		];
	};

	case "cop_air":
	{
		_return =
		[
			["EC635_Unarmed",1200],
			["B_Heli_Light_01_F",1000],
			["C_Heli_Light_01_civil_F",1000]
			["ivory_b206_police",1000],
			["civ_black_po30",1200]
		];
	};
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",1500],
			["I_C_Boat_Transport_02_F",5050],
			["C_Boat_Civil_01_F",1750],
			["red_searay_14_blue",5000],
			["red_searay_14_white",5000],
			["red_searay_14_black",5000],
			["red_searay_14_shoreline",5000],
			["red_searay_14_seablue",5000],
			["B_SDV_01_F",3200],
			["B_CBS_WaterShadow730_F",2555]
		];
	};
	case "cop_docboat":
	{
		_return =
		[
			["I_C_Boat_Transport_02_F",150],
			["C_Boat_Civil_01_police_F",255],
			["B_Lifeboat",255],
			["B_SDV_01_F",255],
			["B_CBS_WaterShadow730_F",255]
		];
	};

	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",210000],
			["I_Heli_light_03_unarmed_F",245000],
			["O_Heli_Light_02_unarmed_F",665000],
			//new
			["B_Heli_Transport_03_unarmed_F",865000],
			["O_Heli_Transport_04_covered_F",799900],
			///
			["C_Plane_Civil_01_F",150000],
			["C_Plane_Civil_01_racing_F",170000],
			["sab_dhc3",132000],
			["sab_dhc3_2",132000],
			["sab_dhc3_3",132000],
			["sab_dhc3_4",132000],
			["sab_dhc3_5",132000],
			////////
			["sab_do228",185000],
			["sab_do228_2",185000],
			["sab_do228_3",185000],
			["sab_do228_3_1",185000],
			["sab_do228_3_2",185000],
			["sab_do228_4",185000],
			["sab_do228_4_1",185000],
			["sab_do228_5",185000],
			["sab_do228_5_1",185000],
			["sab_do228_6",180500],
			///
			["sab_dolphin",150000],
			["sab_dolphin_2",150000],
			/////
			["sab_falcon",225000],
			["sab_falcon_9",225000]
		];
	};
	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",300],
			["B_SDV_01_F",500],
			["C_Boat_Civil_01_police_F",800]
		];
	};
};

_return;
