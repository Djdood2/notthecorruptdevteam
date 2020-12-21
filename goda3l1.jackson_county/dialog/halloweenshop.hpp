class halloweenshop {
	idd = 5546;
	name= "halloweenshop";
	movingEnable = 0;
	enableSimulation = 1;
	onLoad = "uiNamespace setVariable [""halloweenshop"", _this select 0];";
	objects[] = { };
	
	class controls {

		class bg: Life_RscPicture
		{
			idc = 1200;
			text = "\A3L_Client2\images\halloweenmenu.paa";
			x = 0.288594 * safezoneW + safezoneX;
			y = 0.203 * safezoneH + safezoneY;
			w = 0.417656 * safezoneW;
			h = 0.561 * safezoneH;
		};
		class selection: Life_RscCombo
		{
			idc = 55125;
			x = 0.435 * safezoneW + safezoneX;
			y = 0.326667 * safezoneH + safezoneY;
			w = 0.126927 * safezoneW;
			h = 0.022 * safezoneH;
			onLBSelChanged = "[] call fnc_updatehalshop;";
		};
		class listbox: Life_RscListbox
		{
			idc = 55126;
			x = 0.435 * safezoneW + safezoneX;
			y = 0.348667 * safezoneH + safezoneY;
			w = 0.127187 * safezoneW;
			h = 0.274444 * safezoneH;
		};
		class buybutton: Life_RscButtonSilent
		{
			idc = 55127;
			x = 0.434896 * safezoneW + safezoneX;
			y = 0.632407 * safezoneH + safezoneY;
			w = 0.127708 * safezoneW;
			h = 0.0401851 * safezoneH;
			action = "[] call fnc_buyitem";
		};
	};
};