class ALRP_SpawnMenu
{
	idd = 38500;
	movingEnabled = 0;
	enableSimulation = 1;
	class ControlsBackground {
		class PlayerBG: Life_RscText
		{
			idc = 2200;

			x = 0.0307812 * safezoneW + safezoneX;
			y = 0.907 * safezoneH + safezoneY;
			w = 0.170156 * safezoneW;
			h = 0.055 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		class PlayerBG_2: Life_RscText
		{
			idc = 2200;
			x = 0.0359375 * safezoneW + safezoneX;
			y = 0.918 * safezoneH + safezoneY;
			w = 0.159844 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {1,1,1,0.1};
		};
	};
	class Controls {
		class BG: Life_RscText
		{
			idc = 2200;
			x = 0.0307818 * safezoneW + safezoneX;
			y = 0.467 * safezoneH + safezoneY;
			w = 0.170156 * safezoneW;
			h = 0.341 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		class PlayerText: Life_RscText
		{
			idc = 1005;
			text = "Welcome"; //--- ToDo: Localize;
			x = 0.0351562 * safezoneW + safezoneX;
			y = 0.915222 * safezoneH + safezoneY;
			w = 0.159844 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class RscListbox_1500: Life_RscListNBox
		{
			idc = 38510;
			text = "";
			sizeEx = 0.041;
			coloumns[] = {0,0,0.9};
			drawSideArrows = false;
			idcLeft = -1;
			idcRight = -1;
			rowHeight = 0.050;
			colorSelect[] = {1, 1, 1, 1};
			colorText[] = {1, 1, 1, 1};
			colorBackground[] = {0.28,0.28,0.28,0.28};
			colorSelect2[] = {1, 1, 1, 1};
			colorSelectBackground[] = {0.95, 0.95, 0.95, 0.5};
			colorSelectBackground2[] = {1, 1, 1, 0.5};
			x = 0.0359375 * safezoneW + safezoneX;
			y = 0.478 * safezoneH + safezoneY;
			w = 0.159844 * safezoneW;
			h = 0.319 * safezoneH;
			onLBSelChanged = "_this call life_fnc_spawnPointSelected;";
		};
		class RscButtonMenu_2400: Life_RscButtonMenu
		{
			idc = 2400;
			text = "Spawn"; //--- ToDo: Localize;
			x = 0.0307812 * safezoneW + safezoneX;
			y = 0.819 * safezoneH + safezoneY;
			w = 0.170156 * safezoneW;
			h = 0.033 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
			onButtonClick = "[] call life_fnc_spawnConfirm";
		};
		class RscButtonMenu_2401: Life_RscButtonMenu
		{
			idc = 2401;

			text = "Return To Lobby"; //--- ToDo: Localize;
			x = 0.0307812 * safezoneW + safezoneX;
			y = 0.863 * safezoneH + safezoneY;
			w = 0.17009 * safezoneW;
			h = 0.033 * safezoneH;
			colorText[] = {1,1,1,1};
			colorBackground[] = {0,0,0,0.8};
			onButtonClick = "endmission'memes';";
		};
	};
};
