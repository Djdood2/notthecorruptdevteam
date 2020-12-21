/*
	Author: Bryan "Tonic" Boardwine

	Description:
	Master config file for buyable houses?
*/
private["_house"];
_house = [_this,0,"",[""]] call BIS_fnc_param;
if(_house == "") exitWith {[]};

/*
	Return Format:
	[price,# of containers allowed]
*/
switch (true) do {
	case (_house in ["Land_i_House_Big_02_V1_F","Land_i_House_Big_02_V2_F","Land_i_House_Big_02_V3_F","xcam_i_House_Big_02_V1_F","xcam_i_House_Big_02_V2_F","xcam_i_House_Big_02_V3_F"]): {[65000,3]};
	case (_house in ["Land_i_House_Big_01_V1_F","Land_i_House_Big_01_V2_F","Land_i_House_Big_01_V3_F","xcam_i_House_Big_01_V1_F","xcam_i_House_Big_01_V2_F","xcam_i_House_Big_01_V3_F"]): {[75000,4]};
	case (_house in ["Land_i_Garage_V1_F","Land_i_Garage_V2_F","xcam_i_Garage_V1_F","xcam_i_Garage_V2_F"]): {[50000,0]};
	case (_house in ["Land_i_House_Small_01_V1_F","Land_i_House_Small_01_V2_F","Land_i_House_Small_01_V3_F","xcam_i_House_Small_01_V1_F","xcam_i_House_Small_01_V2_F","xcam_i_House_Small_01_V3_F"]): {[30050,2]};
	case (_house in ["Land_i_House_Small_02_V1_F","Land_i_House_Small_02_V2_F","Land_i_House_Small_02_V3_F","xcam_i_House_Small_02_V1_F","xcam_i_House_Small_02_V2_F","xcam_i_House_Small_02_V3_F"]): {[25050,2]};
	case (_house in ["Land_i_House_Small_03_V1_F","xcam_i_House_Small_03_V1_F"]): {[50000,3]};
	case (_house in ["Land_i_Stone_HouseSmall_V2_F","Land_i_Stone_HouseSmall_V1_F","Land_i_Stone_HouseSmall_V3_F"]): {[75000,1]};
	case (_house in ["Land_i_Addon_02_V1_F","xcam_i_Addon_02_V1_F"]): {[25000,1]};
	case (_house in ["Land_HouseA","Land_HouseB"]): {[70050,2]};
	case (_house in ["Land_HouseC_R","Land_Home6b_DED_Home6b_01_F","Land_Home3r_DED_Home3r_01_F","Land_Ranch_DED_Ranch_01_F","Land_Ranch_DED_Ranch_02_F"]): {[80050,2]};
	case (_house in ["Land_HouseA1_L","Land_HouseC1_L"]): {[65050,2]};
	case (_house in ["Land_Slum_House01_F","Land_Slum_House03_F","Land_Slum_House02_F","Land_cargo_house_slum_F","xcam_Slum_House01_F","xcam_Slum_House03_F","xcam_Slum_House02_F","xcam_cargo_house_slum_F"]): {[15000,1]};
	case (_house in ["Land_Hotel_02_F"]): {[3000000,4]};
	default {[]};
};
