
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["ALRP_TF141Uniform",nil,150]
		];
	};
	
	case 1:
	{
		[
		["TCG_swathelmet",nil,10],
		["TRYK_R_CAP_BLK",nil,10]
		];
	};
	
	case 2:
	{
		[
		["Mask_M40",nil,10]
		];
	};
	
	case 3:
	{
		[
		["ALRP_TF141",nil,9000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]		
		];
	};
};