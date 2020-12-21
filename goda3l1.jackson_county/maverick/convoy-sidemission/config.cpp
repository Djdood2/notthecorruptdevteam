/*
	Author: Maverick Applications
	Convoy sidemission for Altis Life servers
*/

class Maverick_ConvoySidemission
{
	class Config
	{
		ConfigPool[] 							= {"GoldBarTransport","WeaponTransport","Drugs","Bandits","Diamond","Uranium"};
		ForceConfigAtIndex 						= -1;
		SleepTime								= 3600;
		MakePlayersHostileFor					= 160;
		TimeoutBetweenMarkers					= 200;
		SidesNotAttackable[]					= {};
		AIDifficulty[] = {
												{"aimingAccuracy", 0.9},
												{"aimingShake", 1},
												{"aimingSpeed", 1},
												{"endurance", 1},
												{"spotDistance", 1.2},
												{"spotTime", 1},
												{"courage", 1},
												{"reloadSpeed", 1},
												{"commanding", 1},
												{"general", 1}
		};
	};
	class ConvoyConfigurationsPool
	{
		class GoldBarTransport
		{
			class MapConfiguration
			{
				showMapMarker					= 1;
				text							= "Convoy";
			};

			class AIUnits
			{
				gear[] = {
												"H_Cap_pmc", // Headgear
												"TAC_PMC_ID_H2", // Glasses
												"U_PMC_BlackPoloShirt_BeigeCords", // Uniform
												"TAC_V_Sheriff_BA_TB", // Vest
												"AM_PoliceBelt", // Backpack
												{"hlc_smg_mp5a4", "hlc_30Rnd_9x19_B_MP5", 3}, // Primary weapon, ammo and how many magazines
												{"RH_fnp45", "RH_15Rnd_45cal_fnp", 7}, // Secondary weapon, ammo and how many magazines
				};
			};

			class Messages
			{
				// Enable messages?
				enabled							= 1;

				// Mission started announcement
				startAnnouncementHeader			= "Gold Transport";
				startAnnouncementDescription	= "The Federal Reserve's guarded transporter is currently moving large amounts of gold.";

				// Mission objective completed
				stoppedAnnouncementHeader		= "Gold Transporter disabled";
				stoppedAnnouncementDescription	= "The gold transporter has been disabled.";

				// Mission completed announcement
				endAnnouncementHeader			= "Gold Transport ended";
				endAnnouncementDescription  	= "The mission has ended.";
			};

			class Vehicles
			{
				// Vehicle configuration
				vehiclesInOrder[]				= {"LandRover_01","shounka_a3_renaultmagnum_f","FordCVUC_01","FordCVUC_01"};
				vehiclesSpawnMarkersInOrder[]	= {"mav_convoy_spawn1","mav_convoy_spawn2","mav_convoy_spawn3","mav_convoy_spawn4"};
				vehiclesInheritDirection		= 1;
				mainVehicleAtIndex				= 1;
				maxSpeed						= 58;
				removeVehiclesAfterSeconds		= 880;
				additionalUnitsAmount			= 10;
			};

			class Route
			{
				// Route configuration
				markers[] 						= {"mav_convoy_waypoint1","mav_convoy_waypoint2","mav_convoy_waypoint3","mav_convoy_waypoint4","mav_convoy_waypoint5"};
			};

			class Loot
			{
				type 							= "virtual";
				container						= "Land_CargoBox_V1_F";
				data[] = {
												{"gold", 30}
				};
			};
		};

		class Diamond
		{
			class MapConfiguration
			{
				showMapMarker					= 1;
				text							= "Convoy";
			};

			class AIUnits
			{
				gear[] = {
												"TRYK_R_CAP_BLK", // Headgear
												"G_Aviator", // Glasses
												"KAEL_SUITS_BR_F12", // Uniform
												"TAC_V_Sheriff_BA_TB", // Vest
												"cg_invisbp", // Backpack
												{"", "", 5}, // Primary weapon, ammo and how many magazines
												{"hlc_smg_mp5k", "hlc_30Rnd_9x19_B_MP5", 11}, // Secondary weapon, ammo and how many magazines
				};
			};

			class Messages
			{
				// Enable messages?
				enabled							= 1;

				// Mission started announcement
				startAnnouncementHeader			= "Diamond Transport";
				startAnnouncementDescription	= "A private organization is currently transporting large amounts of cut diamond.";

				// Mission objective completed
				stoppedAnnouncementHeader		= "Diamond Transport disabled";
				stoppedAnnouncementDescription	= "The diamond transporter has been disabled.";

				// Mission completed announcement
				endAnnouncementHeader			= "Diamond Transport ended";
				endAnnouncementDescription  	= "The mission has ended.";
			};

			class Vehicles
			{
				// Vehicle configuration
				vehiclesInOrder[]				= {"LandRover_01","shounka_a3_spr_civ_noir","LandRover_01","LandRover_01"};
				vehiclesSpawnMarkersInOrder[]	= {"memes","memes1","memes2","memes3"};
				vehiclesInheritDirection		= 1;
				mainVehicleAtIndex				= 1;
				maxSpeed						= 55;
				removeVehiclesAfterSeconds		= 880;
				additionalUnitsAmount			= 15;
			};

			class Route
			{
				// Route configuration
				markers[] 						= {"wp1","wp2","wp3","wp4","wp5","wp6","wp12","wpmemes","wpmemes5","wpmemes6","marker_17"};
			};

			class Loot
			{
				type 							= "virtual";
				container						= "Land_CargoBox_V1_F";
				data[] = {
												{"diamondc", 300}
				};
			};
		};

		class Bandits
		{
			class MapConfiguration
			{
				showMapMarker					= 1;
				text							= "Convoy";
			};

			class AIUnits
			{
				gear[] = {
												"H_Shemag_olive", // Headgear
												"", // Glasses
												"U_BG_Guerilla2_3", // Uniform
												"V_TacVest_oli", // Vest
												"", // Backpack
												{"hlc_rifle_aek971worn", "hlc_30Rnd_545x39_B_AK", 5}, // Primary weapon, ammo and how many magazines
												{"", "", 5}, // Secondary weapon, ammo and how many magazines
				};
			};

			class Messages
			{
				// Enable messages?
				enabled							= 1;

				// Mission started announcement
				startAnnouncementHeader			= "Bandit Weapon Transport";
				startAnnouncementDescription	= "A group of bandits are currently transferring illegal weapons through Lakeside.";

				// Mission objective completed
				stoppedAnnouncementHeader		= "Bandit Transport disabled";
				stoppedAnnouncementDescription	= "The bandit weapons transport has been disabled.";

				// Mission completed announcement
				endAnnouncementHeader			= "Bandit Transport ended";
				endAnnouncementDescription  	= "The mission has ended.";
			};

			class Vehicles
			{
				// Vehicle configuration
				vehiclesInOrder[]				= {"B_G_Offroad_01_armed_F","shounka_a3_spr_civ_grise","C_Offroad_01_F","C_Offroad_01_F"};
				vehiclesSpawnMarkersInOrder[]	= {"mav_convoy_spawn1","mav_convoy_spawn2","mav_convoy_spawn3","mav_convoy_spawn4"};
				vehiclesInheritDirection		= 1;
				mainVehicleAtIndex				= 1;
				maxSpeed						= 55;
				removeVehiclesAfterSeconds		= 880;
				additionalUnitsAmount			= 10;
			};

			class Route
			{
				// Route configuration
				markers[] 						= {"mav_convoy_waypoint1","mav_convoy_waypoint2","mav_convoy_waypoint3","mav_convoy_waypoint4","mav_convoy_waypoint5"};
			};

			class Loot
			{
				type 							= "real";
				container						= "B_CargoNet_01_ammo_F";
				data[] = {
												{"A3L_AK47sgold", 5, "WEAPON"},
												//
												{"A3L_AK47s", 3, "WEAPON"},
												{"A3L_AK47sMag", 21, "MAGAZINE"},
												//
												{"KA_Glock_17_Single", 6, "WEAPON"},
												{"KA_17Rnd_9x19_Mag", 14, "MAGAZINE"},
												///
												{"RH_bull", 4, "WEAPON"},
												{"RH_6Rnd_454_Mag", 17, "MAGAZINE"},
												////
												{"RH_Deagleg", 2, "WEAPON"},
												{"RH_7Rnd_50_AE", 23, "MAGAZINE"},
												////
												{"RH_SAMR", 4, "WEAPON"},
												{"RH_30Rnd_556x45_Mk262", 19, "MAGAZINE"},
												////
												{"hgun_P07_F", 6, "WEAPON"},
												{"16Rnd_9x21_Mag", 18, "MAGAZINE"},
												///
												{"optic_LRPS", 4, "ITEM"},
												{"optic_NVS", 3, "ITEM"},
												{"optic_AMS", 2, "ITEM"},
												{"optic_SOS", 5, "ITEM"},
												{"optic_ERCO_blk_F", 6, "ITEM"},
												{"TAC_BP_Butt_B", 1, "BACKPACK"},
												{"TAC_BP_buttB_B", 1, "BACKPACK"},
												{"TAC_BP_KAR_B", 1, "BACKPACK"},
												{"TAC_BP_HSG_AB_Khaki", 4, "BACKPACK"},
												{"TAC_BP_Butt_B", 3, "BACKPACK"}
				};
			};
		};

		class Drugs
		{
			class MapConfiguration
			{
				showMapMarker					= 1;
				text							= "Convoy";
			};

			class AIUnits
			{
				gear[] = {
												"H_Cap_blk_Raven", // Headgear
												"G_Bandanna_sport", // Glasses
												"TRYK_U_B_PCUGs_BLK", // Uniform
												"V_Chestrig_oli", // Vest
												"", // Backpack
												{"arifle_AKM_F", "30Rnd_762x39_Mag_F", 5}, // Primary weapon, ammo and how many magazines
												{"RH_g19t", "RH_17Rnd_9x19_g17", 5}, // Secondary weapon, ammo and how many magazines
				};
			};

			class Messages
			{
				// Enable messages?
				enabled							= 1;

				// Mission started announcement
				startAnnouncementHeader			= "Mexican Drug Cartel";
				startAnnouncementDescription	= "The Mexican cartel is currently transferring drugs around Lakeside.";

				// Mission objective completed
				stoppedAnnouncementHeader		= "Cartel Convoy disabled";
				stoppedAnnouncementDescription	= "The cartel convoy has been disabled.";

				// Mission completed announcement
				endAnnouncementHeader			= "Drug Transport ended";
				endAnnouncementDescription  	= "The mission has ended.";
			};

			class Vehicles
			{
				// Vehicle configuration
				vehiclesInOrder[]				= {"B_MRAP_01_F","C_Van_01_transport_F","C_Van_01_transport_F","C_Van_01_transport_F"};
				vehiclesSpawnMarkersInOrder[]	= {"memes","memes1","memes2","memes3"};
				vehiclesInheritDirection		= 1;
				mainVehicleAtIndex				= 1;
				maxSpeed						= 55;
				removeVehiclesAfterSeconds		= 880;
				additionalUnitsAmount			= 20;
			};

			class Route
			{
				// Route configuration
				markers[] 						= {"wp1","wp2","wp3","wp4","wp5","wp6","wp12","wpmemes","wpmemes5","wpmemes6","marker_17"};
			};

			class Loot
			{
				type 							= "virtual";
				container						= "Land_CargoBox_V1_F";
				data[] = {
												{"marijuana", 200}
				};
			};
		};

		class Uranium
		{
			class MapConfiguration
			{
				showMapMarker					= 1;
				text							= "Convoy";
			};

			class AIUnits
			{
				gear[] = {
												"H_Capbw_pmc", // Headgear
												"H75th_Face_Wear_Blk", // Glasses
												"U_PMC_WhtPolo_BluPants", // Uniform
												"TAC_V_Sheriff_BA_TB5", // Vest
												"TAC_BP_Butt_B", // Backpack
												{"RH_M4sbr_b", "RH_30Rnd_556x45_M855A1", 5}, // Primary weapon, ammo and how many magazines
												{"RH_m9", "RH_15Rnd_9x19_M9", 11}, // Secondary weapon, ammo and how many magazines
				};
			};

			class Messages
			{
				// Enable messages?
				enabled							= 1;

				// Mission started announcement
				startAnnouncementHeader			= "Uranium Transportation";
				startAnnouncementDescription	= "PG Services are currently transporting large amounts of highly enriched uranium.";

				// Mission objective completed
				stoppedAnnouncementHeader		= "Uranium Transport disabled";
				stoppedAnnouncementDescription	= "The uranium transportation convoy has been disabled.";

				// Mission completed announcement
				endAnnouncementHeader			= "Uranium Transport ended";
				endAnnouncementDescription  	= "The mission has ended.";
			};

			class Vehicles
			{
				// Vehicle configuration
				vehiclesInOrder[]				= {"O_Truck_03_covered_F","O_Truck_03_ammo_F","O_Truck_03_ammo_F","O_Truck_03_ammo_F","O_Truck_03_covered_F"};
				vehiclesSpawnMarkersInOrder[]	= {"newconvoy","newconvoy1","newconvoy2","newconvo3","newconvoy4","newconvoy5"};
				vehiclesInheritDirection		= 1;
				mainVehicleAtIndex				= 1;
				maxSpeed						= 55;
				removeVehiclesAfterSeconds		= 880;
				additionalUnitsAmount			= 25;
			};

			class Route
			{
				// Route configuration
				markers[] 						= {"convoy1","convoy2","convoy3","convoy4","convoy5","convoy6","convoy7","convoy8","convoy9"};
			};

			class Loot
			{
				type 							= "virtual";
				container						= "Land_CargoBox_V1_F";
				data[] = {
												{"uraniumr", 288}
				};
			};
		};

		class Mason
		{
			class MapConfiguration
			{
				showMapMarker					= 1;
				text							= "Convoy";
			};

			class AIUnits
			{
				gear[] = {
												"H75th_Beanie_Blk2", // Headgear
												"G_Balaclava_blk", // Glasses
												"KAEL_SUITS_BR_F12", // Uniform
												"EF_CTV1", // Vest
												"TAC_BP_Butt_B", // Backpack
												{"hlc_rifle_ak74_dirty2", "hlc_30Rnd_545x39_B_AK", 7}, // Primary weapon, ammo and how many magazines
												{"", "", 11}, // Secondary weapon, ammo and how many magazines
				};
			};

			class Messages
			{
				// Enable messages?
				enabled							= 1;

				// Mission started announcement
				startAnnouncementHeader			= "Mason Crime Family";
				startAnnouncementDescription	= "The Mason Crime Family have been spotted transporting huge amounts of illegal drugs.";

				// Mission objective completed
				stoppedAnnouncementHeader		= "Drug Transport disabled";
				stoppedAnnouncementDescription	= "The drug transportation convoy has been disabled.";

				// Mission completed announcement
				endAnnouncementHeader			= "Mason Crime Family Drug Transport ended";
				endAnnouncementDescription  	= "The mission has ended.";
			};

			class Vehicles
			{
				// Vehicle configuration
				vehiclesInOrder[]				= {"ADM_GMC_Vandura","ADM_GMC_Vandura","shounka_limo_civ_noir","ivory_190e","ivory_190e","ivory_gt500","ivory_190e"};
				vehiclesSpawnMarkersInOrder[]	= {"newconvoy","newconvoy1","newconvoy2","newconvo3","newconvoy4","newconvoy5","newconvoy6","newconvoy7"};
				vehiclesInheritDirection		= 1;
				mainVehicleAtIndex				= 1;
				maxSpeed						= 55;
				removeVehiclesAfterSeconds		= 880;
				additionalUnitsAmount			= 15;
			};

			class Route
			{
				// Route configuration
				markers[] 						= {"convoy1","convoy2","convoy3","convoy4","convoy5","convoy6","convoy7","convoy8","convoy9"};
			};

			class Loot
			{
				type 							= "virtual";
				container						= "Land_CargoBox_V1_F";
				data[] = {
												{"marijuana", 321}
				};
			};
		};



		/*********************** EXAMPLE TRANSPORT FOR REAL ITEMS ***********************/
		class WeaponTransport
		{
			class MapConfiguration
			{
				showMapMarker					= 1;
				text							= "Convoy";
			};

			class AIUnits
			{
				gear[] = {
												"OpsC_Uncov_Full", // Headgear
												"", // Glasses
												"CRYEG3_V1", // Uniform
												"HV2_Ciras_Olive", // Vest
												"H75th_Camelbak_Mule_Drab", // Backpack
												{"RHARD_M4DDR_F", "30Rnd_556x45_Stanag", 5}, // Primary weapon, ammo and how many magazines
												{"RH_cz75", "RH_16Rnd_9x19_CZ", 5}, // Secondary weapon, ammo and how many magazines
				};
			};

			class Messages
			{
				// Enable messages?
				enabled							= 1;

				// Mission started announcement
				startAnnouncementHeader			= "Weapon Transport";
				startAnnouncementDescription	= "The local army is currently transporting large amounts of weapons through Jackson County with ground vehicles.";

				// Mission objective completed
				stoppedAnnouncementHeader		= "Weapon Transporter disabled";
				stoppedAnnouncementDescription	= "The Weapon transporter has been disabled.";

				// Mission completed announcement
				endAnnouncementHeader			= "Weapon Transport ended";
				endAnnouncementDescription  	= "The mission has ended.";
			};

			class Vehicles
			{
				// Vehicle configuration
				vehiclesInOrder[]				= {"B_MRAP_01_F","B_MRAP_01_F","O_T_Truck_03_ammo_ghex_F","B_MRAP_01_F"};
				vehiclesSpawnMarkersInOrder[]	= {"mav_convoy_spawn1","mav_convoy_spawn2","mav_convoy_spawn3","mav_convoy_spawn4"};
				vehiclesInheritDirection		= 1;
				mainVehicleAtIndex				= 2;
				maxSpeed						= 55;
				removeVehiclesAfterSeconds		= 880;
				additionalUnitsAmount			= 10;
			};

			class Route
			{
				// Route configuration
				markers[] 						= {"mav_convoy_waypoint1","mav_convoy_waypoint2","mav_convoy_waypoint3","mav_convoy_waypoint4","mav_convoy_waypoint5"};
			};

			class Loot
			{
				type 							= "real";
				container						= "B_CargoNet_01_ammo_F";
				data[] = {
												{"arifle_MX_Black_F", 3, "WEAPON"},
												//
												{"arifle_MXM_F", 1, "WEAPON"},
												{"30Rnd_65x39_caseless_mag", 26, "MAGAZINE"},
												//
												{"FHQ_arifle_ACR_blk", 6, "WEAPON"},
												{"FHQ_rem_30Rnd_680x43_ACR", 14, "MAGAZINE"},
												///
												{"RH_bullb", 2, "WEAPON"},
												{"RH_6Rnd_454_Mag", 17, "MAGAZINE"},
												////
												{"hgun_P07_F", 6, "WEAPON"},
												{"16Rnd_9x21_Mag", 18, "MAGAZINE"},
												///
												{"optic_LRPS", 4, "ITEM"},
												{"optic_NVS", 3, "ITEM"},
												{"optic_AMS", 2, "ITEM"},
												{"optic_SOS", 5, "ITEM"},
												{"optic_ERCO_blk_F", 6, "ITEM"},
												{"TAC_BP_Butt_B", 1, "BACKPACK"},
												{"TAC_BP_buttB_B", 1, "BACKPACK"},
												{"TAC_BP_KAR_B", 1, "BACKPACK"},
												{"B_Bergen_tna_F", 1, "BACKPACK"},
												{"TAC_BP_Butt_B", 3, "BACKPACK"}
				};
			};
		};
	};
};