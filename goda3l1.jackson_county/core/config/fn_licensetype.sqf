/*
	File: fn_licenseType.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Returns the short-var of the license name to a long var and display name.
*/
private["_type","_ret","_var","_mode"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_type == "" OR _mode == -1) exitWith {[]};

switch (_mode) do
{
	case 0:
	{
		switch (_type) do
		{

			//
			case "ss": {_var = "license_civ_ss"};
			case "insurance": {_var = "license_civ_insurance"};
			  // in the upper field
			case "meth": {_var = "license_civ_meth"};  // in the upper field
			case "driver": {_var = "license_civ_driver"}; //Drivers License cost
			case "boat": {_var = "license_civ_boat"}; //Boating license cost
			case "pilot": {_var = "license_civ_air"}; //Pilot/air license cost
			case "gun": {_var = "license_civ_gun"}; //Firearm/gun license cost
			case "dive": {_var = "license_civ_dive"}; //Diving license cost
			case "cair": {_var = "license_cop_air"}; //Cop Pilot License cost
			case "heroin": {_var = "license_civ_heroin"}; //Heroin processing license cost
			case "marijuana": {_var = "license_civ_marijuana"}; //Marijuana processing license cost
			case "medmarijuana": {_var = "license_civ_medmarijuana"}; //Medical Marijuana processing license cost
			case "gang": {_var = "license_civ_gang"}; //Gang license cost
			case "rebel": {_var = "license_civ_rebel"}; //Rebel License
			case "truck":{_var = "license_civ_truck"}; //Truck License
			case "diamond": {_var = "license_civ_diamond"};
			case "coke": {_var = "license_civ_coke"};
			case "sand": {_var = "license_civ_sand"};

			case "mair": {_var = "license_med_air"};
			case "tru": {_var = "license_med_tru"};
			case "command": {_var = "license_med_command"};
			case "highcommand": {_var = "license_med_highcommand"};


			case "home": {_var = "license_civ_home"};
			case "rifle": {_var = "license_civ_rifle"};
			case "uranium": {_var = "license_civ_uranium"};
			case "forestry": {_var = "license_civ_forestry"};
			//COP
			case "cid": {_var = "license_cop_cid"};
			case "deptcommand": {_var = "license_cop_deptcommand"};
			case "advvehicle": {_var = "license_cop_advvehicle"};
			case "copfbi": {_var = "license_cop_fbi"};
			case "sert": {_var = "license_cop_sert"};
			case "marshals": {_var = "license_cop_marshals"};
			case "adminb": {_var = "license_cop_adminb"};
			case "swatcommand": {_var = "license_cop_swatcommand"};
			//GANG
			case "chaos": {_var = "license_civ_chaos"};
			case "baratheon": {_var = "license_civ_baratheon"};
			case "spartan": {_var = "license_civ_spartan"};
			case "sierra": {_var = "license_civ_sierra"};
			case "mafia": {_var = "license_civ_mafia"};
			case "TFA": {_var = "license_civ_tfa"};
			case "CCS": {_var = "license_civ_ccs"};
			case "rpd": {_var = "license_civ_rpd"};
			case "wolfe": {_var = "license_civ_wolfe"};
			case "pusha": {_var = "license_civ_pusha"};
			case "supreme": {_var = "license_civ_supreme"};
			case "corleones": {_var = "license_civ_corleones"};
			case "russia": {_var = "license_civ_russia"};
			default {_var = ""};
		};
	};

	case 1:
	{
		switch (_type) do
		{
			//misc
			case "license_civ_insurance": {_var = "insurance"};
			case "license_civ_ss": {_var = "ss"};
			case "license_civ_meth": {_var = "meth"};  // in the lower field
			case "license_civ_driver": {_var = "driver"}; //Drivers License cost
			case "license_civ_boat": {_var = "boat"}; //Boating license cost
			case "license_civ_air": {_var = "pilot"}; //Pilot/air license cost
			case "license_civ_gun": {_var = "gun"}; //Firearm/gun license cost
			case "license_civ_dive": {_var = "dive"}; //Diving license cost
			case "license_cop_air": {_var = "cair"}; //Cop Pilot License cost
			case "license_cop_swat": {_var = "swat"}; //Swat License cost
			case "license_cop_cg": {_var = "cg"}; //Coast guard license cost
			case "license_civ_heroin": {_var = "heroin"}; //Heroin processing license cost
			case "license_civ_marijuana": {_var = "marijuana"}; //Marijuana processing license cost
			case "license_civ_medmarijuana": {_var = "medmarijuana"}; //Medical Marijuana processing license cost
			case "license_civ_gang": {_var = "gang"}; //Gang license cost
			case "license_civ_rebel": {_var = "rebel"}; //Rebel License
			case "license_civ_truck":{_var = "truck"}; //Truck License
			case "license_civ_diamond": {_var = "diamond"};
			case "license_civ_coke": {_var = "cocaine"};
			case "license_civ_sand": {_var = "sand"};

			case "license_med_air": {_var = "mair"};
			case "license_med_tru": {_var = "tru"};
			case "license_med_command": {_var = "command"};
			case "license_med_highcommand": {_var = "highcommand"};

			case "license_civ_home": {_var = "home"};
			case "license_civ_uranium": {_var = "uranium"};
			case "license_civ_rifle": {_var = "rifle"};
			//Whitelisted Gangs
			case "license_cop_cid": {_var = "cid"};
			case "license_cop_deptcommand": {_var = "deptcommand"};
			case "license_cop_sert": {_var = "sert"};
			case "license_cop_marshals": {_var = "marshals"};
			case "license_cop_swatcommand": {_var = "swatcommand"};
			case "license_cop_advvehicle": {_var = "advvehicle"};
			case "license_cop_fbi": {_var = "copfbi"};
			//gang
			case "license_civ_house": {_var = "house"};
			case "license_civ_sbh": {_var = "sbh"};
			case "license_civ_ccs": {_var = "ccs"};
			case "license_civ_spartan": {_var = "spartan"};
			case "license_civ_sierra": {_var = "sierra"};
			case "license_civ_tfa": {_var = "TFA"};
			case "license_civ_mafia": {_var = "mafia"};
			case "license_civ_rpd": {_var = "rpd"};
			case "license_civ_tf141": {_var = "tf141"};
			case "license_civ_corleones": {_var = "corleones"};
			case "license_civ_tws": {_var = "tws"};
			case "license_civ_russia": {_var = "russia"};
			default {_var = ""};
		};
	};
};

_ret = [_var,(if(_var != "") then {([_var] call life_fnc_varToStr)})];
_ret;
