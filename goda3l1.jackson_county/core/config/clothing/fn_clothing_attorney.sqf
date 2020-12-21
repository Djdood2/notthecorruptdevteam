
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;

ctrlSetText[3103,"Clothing Locker"];

switch (_filter) do
{
	case 0:
	{
		[
		["KAEL_SUITS_BR_F12",nil,175],
		["A3L_Suit_Uniform","Suit",135],
		["KAEL_SUITS_BR_F",nil,135],
		["KAEL_SUITS_BR_F3",nil,135],
		["KAEL_SUITS_BR_F4",nil,135],
		["KAEL_SUITS_BR_F5",nil,135],
		["KAEL_SUITS_BR_F6",nil,135],
		["KAEL_SUITS_BR_F7",nil,135],
		["KAEL_SUITS_BR_F8",nil,135],
		["KAEL_SUITS_BR_F9",nil,135],
		["KAEL_SUITS_BR_F10",nil,135],
		["KAEL_SUITS_BR_F11",nil,135],
		["KAEL_SUITS_BR_F13",nil,135],
		["KAEL_SUITS_BR_F14",nil,135],
		["TRYK_SUITS_BLK_F","Black Suit",135],
		["TRYK_SUITS_BR_F","Brown Suit",135],
		//Female Suits
		["EF_suit_1",nil,135],
		["EF_suit_2",nil,135],
		["EF_suit_3",nil,135],
		["EF_suit_4",nil,135],
		["EF_suit_5",nil,135],
		["EF_suit_6",nil,135],
		["alrpcobra",nil,50],
		["ALRPCulyer",nil,50],
		["alrpcow",nil,50],
		["alrpdrinkdriver",nil,50],
		["alrpfetus",nil,50],
		["alrpfour",nil,50],
		["alrpguilt",nil,50],
		["alrpbond",nil,50],
		["alrpleon",nil,50],
		["alrpllama",nil,50],
		["alrpmoose",nil,50],
		["alrpnandos",nil,50],
		["alrppedo",nil,50]
		];
	};
	
	case 1:
	{
		[
			["EF_FHAT_CL",nil,20],
			["EF_Punk_wig_SSV",nil,20],
			["ALE_H_Cowboy_Black",nil,20],
			["ALE_H_Calot",nil,20],
			["EF_HAT_BW",nil,20],
			["TRYK_H_PASGT_BLK",nil,20]	
		];
	};
	
	case 2:
	{
		[
			["EF_ACC3",nil,20],
			["EF_FRG12",nil,20],
			["EF_SC_CF1",nil,20],
			["G_Aviator",nil,20],
			["EWK_Cigar1",nil,20],
			["EWK_Glasses_Cig1",nil,20],
			["EWK_Cig1",nil,20],
			["G_Lady_Blue",nil,20],
			["G_Squares_Tinted",nil,20],
			["TAC_PMC_ID_H2",nil,20],
			["TRYK_Beard_BK3",nil,20],
			["TRYK_Beard4",nil,20]
		];
	};
	
	case 3:
	{
		[
		["TRYK_V_Bulletproof_BLK",nil,550],
		["TRYK_V_Bulletproof_BL",nil,550],
		["TRYK_V_Bulletproof",nil,550],
		["EF_SH_BK",nil,550],
		["EF_SH_BW",nil,550],
		["TAC_HGB_B",nil,550],
		["A3L_deptjvest1",nil,550],
		["TAC_V_Sheriff_BA_TB",nil,550]
		];
	};
	
	case 4:
	{
		[
        ["cg_invisbp",nil,50]		
		];
	};
};