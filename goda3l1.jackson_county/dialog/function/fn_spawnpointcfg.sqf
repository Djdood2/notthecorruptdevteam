private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;
switch (_side) do
{
	case west: {
		_return = [
			["cop_spawn_1","Lakeside PD","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_morri","Morrison PD","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_marshals","Marshals / CID HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
					];
};

	case civilian:
	{
		if(playerSide == civilian) then {
		_return = [
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
		};
		if(license_civ_ss && playerSide == civilian) then {
		_return = [
					["mayors_spawn","Mayors Complex","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
									];
		};
		if(license_civ_baratheon && playerSide == civilian) then {
		_return = [
					["gangzone1","Gang Zone","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
									];
		};
		if(license_civ_russia && playerSide == civilian) then {
		_return = [
					["gangzone1","Gang Zone","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
									];
		};
		if(license_civ_firm && playerSide == civilian) then {
		_return = [
					["gangzone1","Gang Zone","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
									];
		};
		if(license_civ_mafia && playerSide == civilian) then {
		_return = [
					["gangzone1","Gang Zone","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
									];
		};
		if(license_civ_tfa && playerSide == civilian) then {
		_return = [
					["gangzone1","Gang Zone","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
									];
		};
		if(license_civ_house && playerSide == civilian) then {
		_return = [
					["gangzone1","Gang Zone","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]				];
		};
		if(license_civ_tf141 && playerSide == civilian) then {
		_return = [
					["gangzone1","Gang Zone","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]		        ];
		};
		if(license_civ_corleones && playerSide == civilian) then {
		_return = [
					["gangzone1","Gang Zone","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]				];
		};
		if(license_civ_spartan && playerSide == civilian) then {
		_return = [
					["gangzone1","Gang Zone","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]				];
		};
		if(license_civ_sierra && playerSide == civilian) then {
		_return = [
					["gangzone1","Gang Zone","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]				];
		};
		if(!license_civ_baratheon && !license_civ_firm && !license_civ_ss && !license_civ_tf141 && !license_civ_house && !license_civ_corleones && !license_civ_spartan && !license_civ_sierra && !license_civ_tfa && !license_civ_mafia && !license_civ_russia && playerside == civilian) then {
		_return = [
			["civ_spawn_1","Lakeside","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","Morrison","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","Los Diablos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
	};


		if(count life_houses > 0) then {
			{
	  _pos = call compile format ["%1",(_x select 0)];
      _house = nearestObject [_pos, "House"];
      _houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
      _return pushBack [format ["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
			} foreach life_houses;
		};
	};

	case independent: {
		_return = [
			["medic_spawn_hospital","Lakeside Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["marker_14","Aviemore Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["ems_sar_spawn","EMS Search & Rescue HQ","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};

_return;
