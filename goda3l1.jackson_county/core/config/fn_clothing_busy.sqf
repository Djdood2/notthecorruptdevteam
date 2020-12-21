
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["ALRP_BusyUni_1",nil,150],
		["ALRP_BusyUni_2",nil,150]
		];
	};
	
	case 1:
	{
		[
		["ALRP_BUSYHAT_2",nil,10],
		["ALRP_BUSYHAT_1",nil,10]
		];
	};
	
	case 2:
	{
		[];
	};
	
	case 3:
	{
		[
		["ALRP_BusyVest_vest",nil,9000],
		["ALRP_BusyVestY_vest",nil,9000]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]		
		];
	};
};