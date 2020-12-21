class ALRP_Hud {
	idd = 2007;
	duration = 10e10;
	fadein = 0;
	fadeout = 0;
	name = "ALRP_Hud";
	onLoad = "uiNamespace setVariable ['ALRPHUD',_this select 0];";
	objects[] = {};
	movingEnable = true;
	enableSimulation = true;

	class controlsBackground {
		class ALRP_HudMain: Life_RscPicture
		{
			idc = 1200;
			text = "\ALRPClient\textures\ALRP_HUD.paa";
			x = 0.48682 * safezoneW + safezoneX;
			y = 0.0575011 * safezoneH + safezoneY;
			w = 0.527128 * safezoneW;
			h = 0.826184 * safezoneH;
		};	
	};
	

	class controls {
		class ALRP_HudName: Life_RscStructuredText
		{
			idc = 1100;
			text = "Name"; //--- ToDo: Localize;
			x = 0.876896 * safezoneW + safezoneX;
			y = 0.586818 * safezoneH + safezoneY;
			w = 0.115662 * safezoneW;
			h = 0.0335387 * safezoneH;
		};
		class ALRP_HudSide: Life_RscStructuredText
		{
			idc = 1101;

			text = "Civilian"; //--- ToDo: Localize;
			x = 0.876897 * safezoneW + safezoneX;
			y = 0.628829 * safezoneH + safezoneY;
			w = 0.11522 * safezoneW;
			h = 0.0218278 * safezoneH;
		};
		class ALRP_HudAmmo: Life_RscStructuredText
		{
			idc = 1103;
			text = "034"; 
			x = 0.890075 * safezoneW + safezoneX;
			y = 0.71845 * safezoneH + safezoneY;
			w = 0.0409157 * safezoneW;
			h = 0.0452705 * safezoneH;
			sizeEx = 1.3 * GUI_GRID_H;
		};
		class ALRP_HudMags: Life_RscStructuredText
		{
			idc = 1104;
			text = "01"; 
			x = 0.92302 * safezoneW + safezoneX;
			y = 0.715649 * safezoneH + safezoneY;
			w = 0.0329455 * safezoneW;
			h = 0.0420094 * safezoneH;
			sizeEx = 1.8 * GUI_GRID_H;
		};
		class ALRP_Health: Life_RscStructuredText
		{
			idc = 666;
			text = "HUD ERROR"; //--- ToDo: Localize;
			x = 0.894029 * safezoneW + safezoneX;
			y = 0.656500 * safezoneH + safezoneY;
			w = 0.0328573 * safezoneW;
			h = 0.0374563 * safezoneH;
		};
		class ALRP_HUDSTAMINA: Life_RscStructuredText
		{
			idc = 6666;
			text = "HUD ERROR"; //--- ToDo: Localize;
			x = 0.895346 * safezoneW + safezoneX;
			y = 0.675500 * safezoneH + safezoneY;
			w = 0.0328573 * safezoneW;
			h = 0.0374563 * safezoneH;
		};
		class ALRP_HUDWater: Life_RscStructuredText
		{
			idc = 66666;
			text = "HUD ERROR"; //--- ToDo: Localize;
			x = 0.95333 * safezoneW + safezoneX;
			y = 0.656500 * safezoneH + safezoneY;
			w = 0.0328573 * safezoneW;
			h = 0.0374563 * safezoneH;
		};
		class ALRP_HUDFOOD: Life_RscStructuredText
		{
			idc = 666666;
			text = "HUD ERROR"; //--- ToDo: Localize;
			x = 0.95333 * safezoneW + safezoneX;
			y = 0.675500 * safezoneH + safezoneY;
			w = 0.0328573 * safezoneW;
			h = 0.0374563 * safezoneH;
		};
		class ALRP_HUDSELECT: Life_RscStructuredText
		{
			idc = 999999;
			text = "HUD ERROR"; //--- ToDo: Localize;
			x = 0.95333 * safezoneW + safezoneX;
			y = 0.738053 * safezoneH + safezoneY;
			w = 0.0578605 * safezoneW;
			h = 0.0205253 * safezoneH;
		};

		class ALRP_HUDZERO: Life_RscStructuredText
		{
			idc = 999998;
			text = "HUD ERROR"; //--- ToDo: Localize;
			x = 0.95333 * safezoneW + safezoneX;
			y = 0.715649 * safezoneH + safezoneY;
			w = 0.0578605 * safezoneW;
			h = 0.0205253 * safezoneH;
		};
	};
};