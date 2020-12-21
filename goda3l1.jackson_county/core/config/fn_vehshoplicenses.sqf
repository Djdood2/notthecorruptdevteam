#include <macro.h>
/*
	File: fn_vehShopLicenses.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Checks what shop it is and sometimes the vehicle to determine whether or not they have the license.

	Returns:
	TRUE if they have the license or are allowed to get that specific vehicle without having that license.
	FALSE if they don't have the license or are not allowed to obtain that vehicle.
*/
private["_veh","_ret"];
_veh = _this select 0;
_ret = false;

if(_veh == "B_Quadbike_01_F") exitWith {true}; //ATV's don't need to require a license anymore.

switch (life_veh_shop select 0) do
{
	case "med_shop": {_ret = true;};
	case "civ_kart": {_ret = true;};
	case "dezzie_car": {_ret = license_civ_driver;};
	case "civ_tf141": {_ret = license_civ_tf141;};
	case "civ_baratheon": {_ret = license_civ_baratheon;};
	case "cop_adv": {_ret = license_cop_advvehicle;};
	case "cop_adminb": {_ret = license_copadminb;};
	case "civ_house": {_ret = license_civ_house;};
	case "civ_ss": {_ret = license_civ_ss;};
	case "med_air_hs": {_ret = true;};
	case "med_tru": {_ret = license_med_tru;};
	case "med_command": {_ret = license_med_command;};
	case "med_highcommand": {_ret = license_med_highcommand;};
	case "civ_car": {_ret = license_civ_driver;};
	case "ford_car": {_ret = license_civ_driver;};
	case "chev_car": {_ret = license_civ_driver;};
	case "moto_car": {_ret = license_civ_driver;};
	case "dodge_car": {_ret = license_civ_driver;};
	case "exo_car": {_ret = license_civ_driver;};
	case "civ_ship": {_ret = license_civ_boat;};
	case "civ_air": {_ret = license_civ_air;};
	case "cop_air": {_ret = license_cop_air;};
	case "cop_airhq": {_ret = license_cop_air;};
	case "civ_truck":	{_ret = license_civ_truck;};
	case "reb_car":
	{
		if(_veh == "JeepWrangler_01" OR _veh == "JeepWrangler_02" OR _veh == "JeepWrangler_03" OR _veh == "JeepWrangler_04" OR _veh == "JeepWrangler_05" OR _veh == "JeepWrangler_06" OR _veh == "JeepWrangler_07" OR _veh == "JeepWrangler_08" OR _veh == "JeepWrangler_09" OR _veh == "JeepWrangler_10" OR _veh == "JeepWrangler_11" OR _veh == "JeepWrangler_12") then
		{
			_perk1 = [FFuVsqqZ, "Perk4_11"] call mav_ttm_fnc_hasPerk;
			_ret = _perk1;
		}
			else
		{
			_ret = true;
		};
	};
	case "reb_car": {_ret = license_civ_rebel;};
	case "cop_car": {_ret = true;};
	case "cop_uc": {_ret = true;};
	case "cop_under": {_ret = license_cop_cid;};
	case "cop_fbi": {_ret = license_cop_fbi;};
	case "cop_sheriff": {_ret = true;};
	case "cop_docboat": {_ret = true;};
	case "cop_docboatarmed": {_ret = license_cop_sert;};
	case "med_f": {_ret = true;};
	case "cop_swatcar": {_ret = license_cop_sert;};
	////
	case "cop_ship":
	{
		if(_veh == "B_Boat_Armed_01_minigun_F") then
		{
			_ret = license_cop_cg;
		}
			else
		{
			_ret = true;
		};
	};
};

_ret;
