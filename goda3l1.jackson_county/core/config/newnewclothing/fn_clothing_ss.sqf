
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"SS Clothing"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["SS_TTie",nil,77],
			["SS_no_tie",nil,150]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["FRITH_ruin_modhat_fabdpm",nil,135],
			["H_MilCap_gry",nil,65],
			["H_MilCap_blue",nil,65],
			["H_MilCap_dgtl",nil,65],
			["TRYK_H_Booniehat_AOR2",nil,35],
			["kio_skl_msk_red",nil,52]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["A3L_Balaclava",nil,133]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["Catraz_SecretService_Vest",nil,800],
			["Catraz_SecretService_Hvy_Vest",nil,2000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["cg_invisbp",nil,2050],
			["TRYK_B_Belt_GR",nil,300]
		];
	};
};