
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["ALRP_KAPUni_1",nil,150]
		];
	};
	
	case 1:
	{
		[];
	};
	
	case 2:
	{
		[];
	};
	
	case 3:
	{
		[
		["V_PlateCarrierInd_PMC_blk",nil,9000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]		
		];
	};
};