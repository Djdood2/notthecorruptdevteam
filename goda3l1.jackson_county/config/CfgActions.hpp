class CfgActions {
	// Use menu 
	class useMenu {
		// Remember to put item in the below array!
		items[] = {"alrp_rob","alrp_pickupbag","alrp_gagmarshals","alrp_blindfoldmarshals","alrp_medicleg","alrp_lootchest","alrp_lawyer","alrp_fixgenerator","alrp_medicarm","alrp_vehiclereg","alrp_gagswat","alrp_medicbrain","alrp_medicchest","alrp_capturedrug","alrp_coppat","alrp_cancelcapture","alrp_capturedrug2","alrp_cancelcapture2","alrp_leavejob","alrp_escortmedic","alrp_lockstorage","alrp_checklicenses","alrp_fingerprint","alrp_removelic","alrp_searchperson","alrp_unrestrain","alrp_sendtojail","alrp_ticket","alrp_unblindfold","alrp_lockhouse","alrp_sellhouse","alrp_raidhouse","alrp_storegarage","alrp_usegarage","alrp_sellgarage","alrp_buyhouse","alrp_destroycomms","alrp_escortciv","alrp_stopescort","alrp_escort","alrp_throwincar","alrp_throwincarciv","alrp_throwincarmed","alrp_blindfold","alrp_blindfoldswat","alrp_gag","alrp_untie","alrp_tie","alrp_destroyevidence","alrp_gatherevidence","alrp_axe","alrp_mine","alrp_healhospital","alrp_patdown","alrp_patdowncop","alrp_panicbutton","alrp_healperson","alrp_houseowner","alrp_healself","alrp_devicemine","alrp_givecash","alrp_getjob","alrp_collectpaycheck","alrp_atmbank","alrp_repairvehicle","alrp_impound","alrp_impoundmed","alrp_pullout","alrp_push","alrp_pushdouble","alrp_pushtriple","alrp_unflip"};
		// Remember to put item in the above array!
			class alrp_leavejob {
			requirement = "(playerside == civilian && Life_Working == 1)";
			displayName = "Quit Job";
			lbdata = "alrp_leavejob"; 
		};

		class alrp_capturedrug {
			requirement = "(playerside != independent && cobra_raiding == 0 && player distance getPos hideout1 < 30)";
			displayName = "Capture Gang Hideout Zulu";
			lbdata = "alrp_capturedrug"; 
		};

	 class alrp_pickupbag { 
      requirement = "(playerside != independent && cursorobject isKindOf 'Land_Sleeping_bag_blue_folded_F' && player distance cursorObject < 3)"; 
      displayName = "Pickup Bag"; 
      lbdata = "alrp_pickupbag";  
    }; 
		class alrp_capturedrug2 {
			requirement = "(playerside != independent && cobra_raiding == 0 && player distance getPos hideout2 < 30)";
			displayName = "Capture Gang Hideout Echo";
			lbdata = "alrp_capturedrug2"; 
		};

		class alrp_cancelcapture {
			requirement = "(playerside != independent && cobra_raiding == 1 && player distance getPos hideout1 < 30)";
			displayName = "Cancel Capture";
			lbdata = "alrp_cancelcapture"; 
		};
		class alrp_cancelcapture2 {
			requirement = "(playerside != independent && cobra_raiding == 1 && player distance getPos hideout2 < 30)";
			displayName = "Cancel Capture";
			lbdata = "alrp_cancelcapture2"; 
		};
		class alrp_gatherevidence {
			requirement = "(playerside == west && typeOf cursorTarget == 'Land_Suitcase_F' && player distance cursorObject < 4)";
			displayName = "Gather Evidence";
			lbdata = "alrp_gatherevidence"; 
		};
		class alrp_fixgenerator {
			requirement = "(playerside == west && typeOf cursorTarget == 'Land_PowerGenerator_F' && player distance cursorObject < 4 && PrisonSiren1 getVariable 'disabled')";
			displayName = "Repair Generator";
			lbdata = "alrp_fixgenerator"; 
		};
		class alrp_lawyer {
			requirement = "(playerside == civilian && license_civ_attorney && typeOf cursorTarget == 'Land_em_building_03' && player distance cursorObject < 15)";
			displayName = "Sign on as Lawyer";
			lbdata = "alrp_lawyer";  //change to lawyer building classname
		};
		class alrp_lootchest {
			requirement = "(playerside == civilian && typeOf cursorTarget == 'chest' && player distance cursorObject < 12)";
			displayName = "Loot Treasure Chest";
			lbdata = "alrp_lootchest"; 
		};
		class alrp_destroyevidence {
			requirement = "(playerside == civilian && typeOf cursorTarget == 'Land_Suitcase_F' && player distance cursorObject < 4)";
			displayName = "Destroy Evidence";
			lbdata = "alrp_destroyevidence"; 
		};
		class alrp_mine {
			requirement = "(playerside == civilian && Life_Miner == 1 && life_inv_pickaxe > 0 && player distance getMarkerPos 'sandmine' < 50 OR player distance getMarkerPos 'uranium_1' < 100 OR player distance getMarkerPos 'diamond_1' < 100)";
			displayName = "Use Pickaxe";
			lbdata = "alrp_mine"; 
		};
		class alrp_axe {
			requirement = "(playerside == civilian && Life_WoodLogger == 1 && life_inv_axe > 0 && player distance getMarkerPos 'forestry' < 50)";
			displayName = "Use Axe";
			lbdata = "alrp_axe"; 
		};
		class alrp_atmbank {
			requirement = "(player distance cursorObject < 12 && cursorobject isKindOf 'Land_CommonwealthBank'OR cursorObject isKindOf 'Land_Bank_DED_House_01_F' OR cursorobject isKindOf 'cg_banktower_sky7_floor1_middle1' OR cursorobject isKindOf 'Land_hotel1_bottom1' OR cursorObject isKindOf 'cg_banktower')";
			displayName = "Use ATM";
			lbdata = "alrp_atm"; 
		};
		class alrp_getjob {
			requirement = "(playerside == civilian && cursorobject isKindOf 'Land_CentreLink' && player distance cursorObject < 12)";
			displayName = "Job Listings";
			lbdata = "alrp_getjob"; 
		};
		class alrp_collectpaycheck {
			requirement = "(playerside == civilian && cursorobject isKindOf 'Land_CommonwealthBank' OR cursorObject isKindOf 'Land_Bank_DED_House_01_F' OR cursorobject isKindOf 'cg_banktower_sky7_floor1_middle1' OR cursorobject isKindOf 'Land_hotel1_bottom1' OR cursorObject isKindOf 'cg_banktower')";
			displayName = "Collect Paycheck";
			lbdata = "alrp_collectpaycheck"; 
		};
		class alrp_healself {
			requirement = "(damage player > 0.1 && life_inv_bandage > 0)";
			displayName = "Use Bandage";
			lbdata = "alrp_healself"; 
		};
		class alrp_healperson {
			requirement = "(isPlayer cursorTarget && damage cursorTarget > 0.1 && life_inv_bandage > 0 && player distance cursorObject < 4)";
			displayName = "Heal Person";
			lbdata = "alrp_healperson"; 
		};
		class alrp_healhospital {
			requirement = "(player distance cursorObject < 16 && cursorobject isKindOf 'Land_Hospital_main_F' OR cursorobject isKindOf 'Land_Hospital_side2_F' OR cursorobject isKindOf 'Land_Hospital_side1_F' OR cursorObject isKindOf 'Land_em_medical_center_01' OR cursorObject isKindOf 'SLB2k11_firestation' OR cursorObject isKindOf 'A3L_EMTMain' OR cursorObject isKindOf 'A3L_EMTMain_Bottom_nohelipad')";
			displayName = "Medical Assistance";
			lbdata = "alrp_healhospital"; 
		};
		//Rebel Shit
		class alrp_patdown {
			requirement = "(playerside == civilian && player distance cursorTarget < 4 && cursorTarget getVariable 'tied')";
			displayName = "Patdown Person";
			lbdata = "alrp_patdown"; 
		};
		class alrp_tie {
			requirement = "(playerside == civilian && player distance cursorTarget < 4 && animationState cursorTarget == 'Incapacitated' OR animationState cursorTarget == 'AmovPercMstpSsurWnonDnon' OR cursorTarget getVariable 'UserFucked')";
			displayName = "Tie Person";
			lbdata = "alrp_tie"; 
		};
		class alrp_untie {
			requirement = "(player distance cursorTarget < 4 && cursorTarget getVariable 'tied')";
			displayName = "Untie Person";
			lbdata = "alrp_untie"; 
		};
		class alrp_escort {
			requirement = "(playerside == west && player distance cursorTarget < 3 && isPlayer cursorTarget && cursorTarget isKindOf 'Man')";
			displayName = "Escort Person";
			lbdata = "alrp_escort"; 
		};
		class alrp_escortciv {
			requirement = "(playerside == civilian && cursorTarget getVariable 'tied' && isPlayer cursorTarget && player distance cursorTarget < 3 && cursorTarget isKindOf 'Man')";
			displayName = "Escort Person";
			lbdata = "alrp_escortciv"; 
		};
			class alrp_escortmedic {
			requirement = "(playerside == independent && isPlayer cursorTarget && player distance cursorTarget < 3 && cursorTarget isKindOf 'Man')";
			displayName = "Escort Person";
			lbdata = "alrp_escortmedic"; 
		};
		class alrp_stopescort {
			requirement = "(player distance cursorTarget < 3 && cursorTarget getVariable 'escorting')";
			displayName = "Stop Escorting";
			lbdata = "alrp_stopescort"; 
		};
        class alrp_throwincar {
			requirement = "(playerside == west && player distance cursorTarget < 3 && isPlayer cursorTarget && cursorTarget isKindOf 'Man')";
			displayName = "Throw in Vehicle";
			lbdata = "alrp_throwincar"; 
		};
		class alrp_throwincarciv {
			requirement = "(playerside == civilian && player distance cursorTarget < 3 && cursorTarget getVariable 'tied' && cursorTarget isKindOf 'Man')";
			displayName = "Throw in Vehicle";
			lbdata = "alrp_throwincarciv"; 
		};
class alrp_throwincarmed {
			requirement = "(playerside == independent && isPlayer cursorTarget && player distance cursorTarget < 3 && cursorTarget isKindOf 'Man')";
			displayName = "Throw in Vehicle";
			lbdata = "alrp_throwincarmed"; 
		};
		class alrp_unblindfold {
			requirement = "(player distance cursorTarget < 4 && cursorTarget getVariable 'blindfolded')";
			displayName = "Remove Blindfold";
			lbdata = "alrp_unblindfold"; 
		};
		class alrp_removegag {
			requirement = "(player distance cursorTarget < 4 && cursorTarget getVariable 'gagged')";
			displayName = "Remove Gag";
			lbdata = "alrp_removegag"; 
		};
		class alrp_blindfold {
			requirement = "(playerside == civilian && player distance cursorTarget < 4 && cursorTarget getVariable 'tied')";
			displayName = "Blindfold Person";
			lbdata = "alrp_blindfold"; 
		};
		class alrp_rob {
			requirement = "(playerside == civilian && player distance cursorTarget < 4 && cursorTarget getVariable 'tied')";
			displayName = "Rob Person";
			lbdata = "alrp_rob"; 
		};
class alrp_blindfoldmarshals {
			requirement = "(playerside == west && license_cop_marshals && player distance cursorTarget < 4 && cursorTarget getVariable 'restrained')";
			displayName = "Blindfold Person";
			lbdata = "alrp_blindfoldmarshals"; 
		};
		class alrp_blindfoldswat {
			requirement = "(playerside == west && license_cop_sert && player distance cursorTarget < 4 && cursorTarget getVariable 'restrained')";
			displayName = "Blindfold Person";
			lbdata = "alrp_blindfoldswat"; 
		};
		class alrp_gagswat {
			requirement = "(playerside == west && license_cop_sert && player distance cursorTarget < 4 && cursorTarget getVariable 'restrained')";
			displayName = "Gag/UnGag Person";
			lbdata = "alrp_gagswat"; 
		};
		class alrp_gagmarshals {
			requirement = "(playerside == west && license_cop_marshals && player distance cursorTarget < 4 && cursorTarget getVariable 'restrained')";
			displayName = "Gag/UnGag Person";
			lbdata = "alrp_gagmarshals"; 
		};
		class alrp_gag {
			requirement = "(playerside == civilian && player distance cursorTarget < 4 && cursorTarget getVariable 'tied')";
			displayName = "Gag Person";
			lbdata = "alrp_gag"; 
		};
		class alrp_destroycomms {
			requirement = "(playerside == civilian && player distance cursorTarget < 4 && cursorTarget getVariable 'tied' OR animationState cursorTarget == 'Incapacitated' OR animationState cursorTarget == 'AmovPercMstpSsurWnonDnon' OR animationState cursorTarget == 'amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon')";
			displayName = "Destroy Comms";
			lbdata = "alrp_destroycomms"; 
		};
		//Vehicle Shit
		class alrp_repairvehicle {
			requirement = "(player distance cursorObject < 3 && cursorobject isKindOf 'LandVehicle' OR cursorObject isKindOf 'Air')";
			displayName = "Repair Vehicle";
			lbdata = "alrp_repairvehicle"; 
		};
		class alrp_impound {
			requirement = "(playerside == west && player distance cursorObject < 3 && cursorobject isKindOf 'LandVehicle' OR cursorObject isKindOf 'Air')";
			displayName = "Impound Vehicle";
			lbdata = "alrp_impound"; 
		};
		class alrp_impoundmed {
			requirement = "( playerside == independent && player distance cursorObject < 3 && cursorobject isKindOf 'LandVehicle' OR cursorObject isKindOf 'Air')";
			displayName = "Impound Vehicle";
			lbdata = "alrp_impoundmed"; 
		};
		class alrp_searchvehicle {
			requirement = "(playerside == west && cursorobject isKindOf 'LandVehicle' OR cursorObject isKindOf 'Air' && player distance cursorObject < 3)";
			displayName = "Search Vehicle";
			lbdata = "alrp_searchvehicle"; 
		};
		class alrp_vehiclereg {
			requirement = "(playerside == west && player distance cursorObject < 3 && cursorobject isKindOf 'LandVehicle' OR cursorObject isKindOf 'Air')";
			displayName = "Check Vehicle Registration";
			lbdata = "alrp_vehiclereg"; 
		};
		class alrp_pullout {
			requirement = "(cursorobject isKindOf 'LandVehicle' OR cursorObject isKindOf 'Air' && player distance cursorObject < 3)";
			displayName = "Pullout Occupants";
			lbdata = "alrp_pullout"; 
		};
		class alrp_push {
			requirement = "(player distance cursorObject < 3 && cursorobject isKindOf 'LandVehicle' OR cursorObject isKindOf 'Air' && player distance cursorObject < 3)";
			displayName = "Push Vehicle";
			lbdata = "alrp_push"; 
		};
		class alrp_pushdouble {
			requirement = "(player distance cursorObject < 3 && cursorobject isKindOf 'LandVehicle' OR cursorObject isKindOf 'Air' && player distance cursorObject < 3)";
			displayName = "Double Push Vehicle";
			lbdata = "alrp_pushdouble"; 
		};
		class alrp_pushtriple {
			requirement = "(player distance cursorObject < 3 && cursorobject isKindOf 'LandVehicle' OR cursorObject isKindOf 'Air' && player distance cursorObject < 3)";
			displayName = "Triple Push Vehicle";
			lbdata = "alrp_pushtriple"; 
		};
		class alrp_unflip {
			requirement = "(player distance cursorObject < 3 && cursorobject isKindOf 'LandVehicle' OR cursorObject isKindOf 'Air')";
			displayName = "Unflip Vehicle";
			lbdata = "alrp_unflip"; 
		};
		class alrp_devicemine {
			requirement = "(typeOf cursorObject == 'O_Truck_03_device_F' && player distance cursorObject < 6)";
			displayName = "Mine from Device";
			lbdata = "alrp_devicemine"; 
		};
		//Police Shit
		class alrp_sendtojail {
			requirement = "(playerside == west && cursorTarget getVariable 'restrained' && isPlayer cursorTarget && player distance cursorTarget < 4)";
			displayName = "Arrest";
			lbdata = "alrp_sendtojail"; 
		};
		class alrp_checklicenses {
			requirement = "(playerside == west && isPlayer cursorTarget && player distance cursorTarget < 4)";
			displayName = "Check Licenses";
			lbdata = "alrp_checklicenses"; 
		};
		class alrp_ticket {
			requirement = "(playerside == west && cursorTarget getVariable 'restrained' && isPlayer cursorTarget && player distance cursorTarget < 4)";
			displayName = "Ticket";
			lbdata = "alrp_ticket"; 
		};
		class alrp_unrestrain {
			requirement = "(playerside == west && isPlayer cursorTarget && player distance cursorTarget < 4 && cursorTarget getVariable 'restrained')";
			displayName = "Unrestrain";
			lbdata = "alrp_unrestrain"; 
		};
		class alrp_removelic {
			requirement = "(playerside == west && isPlayer cursorTarget && player distance cursorTarget < 4 && cursorTarget getVariable 'restrained')";
			displayName = "Remove Licenses";
			lbdata = "alrp_removelic"; 
		};
		class alrp_searchperson {
			requirement = "(playerside == west && isPlayer cursorTarget && player distance cursorTarget < 4 && cursorTarget getVariable 'restrained')";
			displayName = "Search Person";
			lbdata = "alrp_searchperson"; 
		};
		class alrp_putinvehicle {
			requirement = "(playerside != independent && isPlayer cursorTarget && player distance cursorTarget < 4 && cursorTarget getVariable 'restrained' OR cursorTarget getVariable 'tied')";
			displayName = "Put in Vehicle";
			lbdata = "alrp_putinvehicle"; 
		};
		class alrp_fingerprint {
			requirement = "(playerside == west && isPlayer cursorTarget && player distance cursorTarget < 4 && cursorTarget getVariable 'restrained')";
			displayName = "Scan Fingerprint";
			lbdata = "alrp_fingerprint"; 
		};
		class alrp_patdowncop {
			requirement = "(playerside == west && player distance cursorTarget < 4 && cursorTarget getVariable 'restrained')";
			displayName = "Strip Search Person";
			lbdata = "alrp_patdowncop"; 
		};
		class alrp_coppat {
			requirement = "(playerside == west && player distance cursorTarget < 4 && cursorTarget getVariable 'restrained')";
			displayName = "Patdown Person";
			lbdata = "alrp_coppat"; 
		};
		//Medic Shit
		class alrp_medicleg {
			requirement = "(playerside == independent && player distance cursorTarget < 4 && cursorTarget getVariable 'unconciouson')";
			displayName = "Heal Leg Wounds";
			lbdata = "alrp_medicleg"; 
		};
		class alrp_medicarm {
			requirement = "(playerside == independent && player distance cursorTarget < 4 && cursorTarget getVariable 'fractureon')";
			displayName = "Heal Arm Wounds";
			lbdata = "alrp_medicarm"; 
		};
		class alrp_medicbrain {
			requirement = "(playerside == independent && player distance cursorTarget < 4 && cursorTarget getVariable 'bleedingon')";
			displayName = "Heal Head Wounds";
			lbdata = "alrp_medicbrain"; 
		};
		class alrp_medicchest {
			requirement = "(playerside == independent && player distance cursorTarget < 4 && cursorTarget getVariable 'woundedon')";
			displayName = "Heal Chest Wounds";
			lbdata = "alrp_medicchest"; 
		};
		//House Shit
		class alrp_buyhouse {
			requirement = "_housecfg = [(typeOf cursorObject)] call life_fnc_houseConfig; (!(_houseCfg isEqualTo []) && playerside == civilian && player distance cursorObject < 12 && isNil {cursorObject getVariable 'house_owner'})";
			displayName = "Purchase";
			lbdata = "alrp_buyhouse"; 
		};
		class alrp_sellhouse {
			requirement = "(playerside == civilian && cursorObject isKindOf 'House_F' && player distance cursorObject < 12 && cursorObject in life_vehicles && typeOf cursorObject != 'Land_i_Garage_V1_F' && typeOf cursorObject !='Land_i_Garage_V2_F')";
			displayName = "Sell House";
			lbdata = "alrp_sellhouse"; 
		};
		class alrp_lockstorage {
			requirement = "(playerside == civilian && cursorObject isKindOf 'House_F' && player distance cursorObject < 12 && cursorObject in life_vehicles && typeOf cursorObject != 'Land_i_Garage_V1_F' && typeOf cursorObject !='Land_i_Garage_V2_F')";
			displayName = "Lock/Unlock Storage";
			lbdata = "alrp_lockstorage"; 
		};
		class alrp_lockhouse {
			requirement = "_housecfg = [(typeOf cursorObject)] call life_fnc_houseConfig; (!(_houseCfg isEqualTo []) && playerside == west && player distance cursorObject < 12 && !isNil {cursorObject getVariable 'house_owner'})";
			displayName = "Lockup House";
			lbdata = "alrp_lockhouse"; 
		};
		class alrp_sellgarage {
			requirement = "(playerside == civilian && player distance cursorObject < 12 && cursorObject in life_vehicles && typeOf cursorObject == 'Land_i_Garage_V1_F' OR typeOf cursorObject =='Land_i_Garage_V2_F')";
			displayName = "Sell Garage";
			lbdata = "alrp_sellgarage"; 
		};
		class alrp_usegarage {
			requirement = "(playerside == civilian && player distance cursorObject < 12 && cursorObject in life_vehicles && typeOf cursorObject == 'Land_i_Garage_V1_F' OR typeOf cursorObject =='Land_i_Garage_V2_F')";
			displayName = "Access Garage";
			lbdata = "alrp_usegarage"; 
		};
		class alrp_storegarage {
			requirement = "(playerside == civilian && player distance cursorObject < 12 && cursorObject in life_vehicles && typeOf cursorObject == 'Land_i_Garage_V1_F' OR typeOf cursorObject =='Land_i_Garage_V2_F')";
			displayName = "Store Vehicle";
			lbdata = "alrp_storegarage"; 
		};
		class alrp_houseowner {
			requirement = "_housecfg = [(typeOf cursorObject)] call life_fnc_houseConfig; (!(_houseCfg isEqualTo []) && playerside == west && player distance cursorObject < 12 && !isNil {cursorObject getVariable 'house_owner'})";
			displayName = "House Owner";
			lbdata = "alrp_houseowner"; 
		};
		class alrp_raidhouse {
			requirement = "_housecfg = [(typeOf cursorObject)] call life_fnc_houseConfig; (!(_houseCfg isEqualTo []) && playerside == west && player distance cursorObject < 12 && !isNil {cursorObject getVariable 'house_owner'})";
			displayName = "Break Down Door";
			lbdata = "alrp_raidhouse"; 
		};
	};
};