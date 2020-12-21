class DeathScreen {
	idd = 7300;
	name = "Life_Death_Screen";
	movingEnable = 0;
	enableSimulation = 1;

	class controlsBackground { 
		class Background: Life_RscText
		{
			idc = 1200;
			x = 0.419774 * safezoneW + safezoneX;
			y = 0.851896 * safezoneH + safezoneY;
			w = 0.20025 * safezoneW;
			h = 0.112407 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class BackgroundTop: Life_RscText
		{
			idc = 1201;
			x = 0.419253 * safezoneW + safezoneX;
			y = 0.82117 * safezoneH + safezoneY;
			w = 0.200771 * safezoneW;
			h = 0.026296 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
	};

	class Controls {
		class DeathStatsText: Life_RscText
		{
			idc = 1006;
			text = "Death Stats";
			x = 0.419774 * safezoneW + safezoneX;
			y = 0.826526 * safezoneH + safezoneY;
			w = 0.19957 * safezoneW;
			h = 0.0192222 * safezoneH;
		};

		class RespawnTimeText: Life_RscText
		{
			idc = 1007;
			text = "Respawn Time:";
			x = 0.422359 * safezoneW + safezoneX;
			y = 0.8586 * safezoneH + safezoneY;
			w = 0.0761424 * safezoneW;
			h = 0.0201481 * safezoneH;
		};
		class RespawnTime: Life_RscText
		{
			idc = 7301;
			text = "";
			x = 0.499999 * safezoneW + safezoneX;
			y = 0.861378 * safezoneH + safezoneY;
			w = 0.11364 * safezoneW;
			h = 0.0173703 * safezoneH;
		};

		class KillerUIDText: Life_RscText
		{
			idc = 1000;
			text = "Killer UID:";
			x = 0.422359 * safezoneW + safezoneX;
			y = 0.884074 * safezoneH + safezoneY;
			w = 0.0542691 * safezoneW;
			h = 0.0201481 * safezoneH;
		};
		class KillerUID: Life_RscText
		{
			idc = 1001;
			text = "76561198107857134";
			x = 0.476713 * safezoneW + safezoneX;
			y = 0.885 * safezoneH + safezoneY;
			w = 0.134993 * safezoneW;
			h = 0.020148 * safezoneH;
		};
		class KillerDistanceText: Life_RscText
		{
			idc = 1002;
			text = "Killer Distance:";
			x = 0.422359 * safezoneW + safezoneX;
			y = 0.936526 * safezoneH + safezoneY;
			w = 0.0777048 * safezoneW;
			h = 0.0192222 * safezoneH;
		};
		class KillerDistance: Life_RscText
		{
			idc = 1003;
			text = "500.12411";
			x = 0.503105 * safezoneW + safezoneX;
			y = 0.938378 * safezoneH + safezoneY;
			w = 0.115202 * safezoneW;
			h = 0.0164438 * safezoneH;
		};
		class KillerWeaponText: Life_RscText
		{
			idc = 1004;
			text = "Killer Weapon:";
			x = 0.422359 * safezoneW + safezoneX;
			y = 0.9092 * safezoneH + safezoneY;
			w = 0.07458 * safezoneW;
			h = 0.0201481 * safezoneH;
		};
		class KillerWeapon: Life_RscText
		{
			idc = 1005;
			text = "Katiba 6.5";
			x = 0.496894 * safezoneW + safezoneX;
			y = 0.911052 * safezoneH + safezoneY;
			w = 0.118327 * safezoneW;
			h = 0.018296 * safezoneH;
		};

		class Respawn: Life_RscButtonMenu
		{
			idc = 7302;
			text = "Respawn";
			x = 0.419264 * safezoneW + safezoneX;
			y = 0.968399 * safezoneH + safezoneY;
			w = 0.0975974 * safezoneW;
			h = 0.0277798 * safezoneH;
			onButtonClick = "closeDialog 0; life_respawned = true; [] call life_fnc_spawnMenu;";
			class Attributes {align = "center";};
		};
		class RequestMedic: Life_RscButtonMenu
		{
			idc = 7303;
			text = "Request Medic";
			x = 0.523808 * safezoneW + safezoneX;
			y = 0.968399 * safezoneH + safezoneY;
			w = 0.0965558 * safezoneW;
			h = 0.0277798 * safezoneH;
			onButtonClick = "[] call life_fnc_requestMedic;";
			class Attributes {align = "center";};
		};
	};
};