_index = lbCurSel 1500;
_data = lbData [1500, _index];
switch (_data) do
{
  case "alrp_buyhouse":
	{
		[] spawn life_fnc_buyhouse;
	};
	case "alrp_sellhouse":
	{
		[] spawn life_fnc_sellhouse;
	};
case "alrp_leavejob":
	{
		[] spawn life_fnc_leavejob;
	};
	 case "alrp_pickupbag": 
  { 
    [] spawn life_fnc_pickupbag; 
  }; 
case "alrp_rob":
	{
		[] spawn life_fnc_robAction;
	};
	case "alrp_fixgenerator":
	{
		[] spawn life_fnc_DestroyGenerator;
	};
	case "alrp_lootchest":
	{
		[] spawn life_fnc_treasure;
	};
	case "alrp_lawyer":
	{
		[] execVM "core\jobs\lawyer\lawyer.sqf";
	};
case "alrp_capturedrug":
	{
		[] spawn life_fnc_capturehideout;
	};
case "alrp_cancelcapture":
	{
		[] spawn life_fnc_cancelcapture;
	};
	case "alrp_capturedrug2":
	{
		[] spawn life_fnc_capturehideout;
	};
case "alrp_cancelcapture2":
	{
		[] spawn life_fnc_cancelcapture;
	};
	case "alrp_raidhouse":
	{
		[] spawn life_fnc_copbreakdoor;
	};
	case "alrp_houseowner":
	{
		[] spawn life_fnc_cophouseowner;
	};
case "alrp_gatherevidence":
	{
		[] spawn life_fnc_gatherevidence;
	};
	case "alrp_destroyevidence":
	{
		[] spawn life_fnc_destroyevidence;
	};
case "alrp_usegarage":
	{
		[cursorTarget, "Car"] spawn life_fnc_vehicleGarage;
	};
	case "alrp_storegarage":
	{
		[cursorTarget,player] spawn life_fnc_storeVehicle;
	};
case "alrp_sellgarage":
	{
		[] spawn life_fnc_sellhouse;
	};
	case "alrp_lockhouse":
	{
		[] spawn life_fnc_lockupHouse;
	};
case "alrp_lockstorage":
	{
		[] spawn life_fnc_lockhouse;
	};
	
  case "alrp_getjob":
	{
		[] call life_fnc_jobmenu;
	};
  case "alrp_collectpaycheck":
	{
		[] call life_fnc_collectpaycheck;
	};
	 case "alrp_healself":
	{
		[] spawn life_fnc_healself;
	};
case "alrp_mine":
	{
		[] spawn life_fnc_pickaxeUse;
	};
	 case "alrp_healperson":
	{
		[] spawn life_fnc_healperson;
	};
case "alrp_medicbrain":
	{
		[cursorTarget] call life_fnc_bandagePlayer;
	};
case "alrp_medicchest":
	{
		[cursorTarget] call life_fnc_stitchPlayer;
	};
case "alrp_medicarm":
	{
		[cursorTarget] call life_fnc_splintPlayer;
	};
case "alrp_medicleg":
	{
		[cursorTarget] call life_fnc_epipenPlayer;
	};
	case "alrp_atmbank":
	{
		createDialog 'Life_atm_management'; [] spawn life_fnc_atmmenu;
	};
		case "alrp_repairvehicle":
	{
		[] spawn life_fnc_repairtruck;
	};
case "alrp_impound":
	{
		[] spawn life_fnc_impoundaction;
	};
case "alrp_impoundmed":
	{
		[] spawn life_fnc_impoundaction;
	};
	case "alrp_pullout":
	{
		[] spawn life_fnc_pulloutAction;
	};
	case "alrp_push":
	{
		[] spawn life_fnc_pushvehicle2;
	};
	case "alrp_pushdouble":
	{
		[] spawn life_fnc_pushvehicle1;
	};
	case "alrp_pushtriple":
	{
		[] spawn life_fnc_pushvehicle;
	};
	case "alrp_escortmedic":
	{
		[] call life_fnc_escortaction;
	};
case "alrp_escort":
	{
		[] call life_fnc_escortaction;
	};
	case "alrp_escortciv":
	{
		[] call life_fnc_escortaction;
	};
case "alrp_checklicenses":
	{
		_unit = cursorTarget; 
		[[player],"life_fnc_licenseCheck",_unit,false] spawn life_fnc_MP;
	};
	case "alrp_vehiclereg":
	{
		[cursorObject] spawn life_fnc_searchVehAction;
	};
case "alrp_patdowncop":
	{
		_unit = cursorTarget; 
		[[_unit],"life_fnc_stripPlayer",_unit,false] spawn life_fnc_MP;
	};
case "alrp_patdown":
	{
		_unit = cursorTarget; 
		[[_unit],"life_fnc_removeWeaponAction",_unit,false] spawn life_fnc_MP;
	};
case "alrp_coppat":
	{
		_unit = cursorTarget; 
		[[_unit],"life_fnc_removeWeaponAction",_unit,false] spawn life_fnc_MP;
	};
case "alrp_stopescort":
	{
		[] spawn life_fnc_stopescorting;
	};
	case "alrp_removegag":
	{
		[] spawn life_fnc_gagPerson;
	};
case "alrp_unblindfold":
	{
		[] spawn life_fnc_untieb;
	};
case "alrp_untie":
	{
		[] spawn life_fnc_untie;
	};
	case "alrp_throwincar":
	{
		[] spawn life_fnc_putincar;
	};
case "alrp_throwincarciv":
	{
		[] spawn life_fnc_putincar;
	};
case "alrp_throwincarmed":
	{
		[] spawn life_fnc_putincar;
	};
case "alrp_tie":
	{
		[] spawn life_fnc_tieingaction;
	};
	case "alrp_blindfold":
	{
		[] spawn life_fnc_tieingactionb;
	};
	case "alrp_blindfoldswat":
	{
		[] spawn life_fnc_tieingactionb;
	};
	case "alrp_gag":
	{
		[] spawn life_fnc_gagPerson;
	};
	case "alrp_gagswat":
	{
		[] spawn life_fnc_gagPerson;
	};
	case "alrp_blindfoldmarshals":
	{
		[] spawn life_fnc_tieingactionb;
	};
	case "alrp_gagmarshals":
	{
		[] spawn life_fnc_gagPerson;
	};
case "alrp_destroycomms":
	{
		[] spawn life_fnc_destroycomms;
	};
	case "alrp_axe":
	{
		[] spawn life_fnc_axe;
	};
	case "alrp_unflip":
	{
		if (player distance cursorObject > 4) exitWith { hint "Vehicle too far away!"; };
		_dir = getDir cursorObject;
		cursorObject setPosASL [getPosASL cursorObject select 0, getPosASL cursorObject select 1, (getPosASL cursorObject select 2)+0.6];
		cursorObject setvectorup [0,0,1];
		cursorObject setDir _dir;
	};
	case "alrp_healhospital":
	{
		[] spawn life_fnc_healhospital;
	};
case "alrp_sendtojail":
	{
		[] call fnc_arrestmenu;
	};
	case "alrp_ticket":
	{
		[] call life_fnc_ticketAction;
	};
case "alrp_unrestrain":
	{
		[] call life_fnc_unrestrain;
	};
case "alrp_removelic":
	{
		[] call life_fnc_revokeLicense;
	};
case "alrp_searchperson":
	{
		[] spawn life_fnc_SearchAction;
	};
	case "alrp_fingerprint":
	{
		[] spawn life_fnc_fingerprint;
	};
	case "alrp_putinvehicle":
	{
		[] call life_fnc_putInCar;
	};
};