
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Task Force Aegis Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["TRYK_U_B_MARPAT_Wood",nil,150],
		["TRYK_U_B_MARPAT_Wood",nil,150],
		["TRYK_U_B_BLKTANR_CombatUniformTshirt",nil,150]
		];
	};
	
	case 1:
	{
		[
		["TRYK_H_headsetcap_od",nil,20],
		["TRYK_H_PASGT_BLK",nil,20]
		];
	};
	
	case 2:
	{
		[
		["TRYK_Shemagh_G",nil,10],	
		["TRYK_kio_balaclava_ear",nil,10]
		];
	};
	
	case 3:
	{
		[
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]		
		];
	};
};