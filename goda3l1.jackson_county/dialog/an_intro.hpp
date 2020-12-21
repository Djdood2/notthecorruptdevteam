class an_intro {
	idd = 420;
	movingEnable = 1;
	controls[]=
	{
		an_intro_topbar,
		an_intro_name,
		an_intro_button1,
		an_intro_maintitle,
		an_intro_info_black,
		an_intro_details_text,
		an_intro_button2,
		an_intro_button3,
		an_intro_button4,
		an_intro_button5,
		an_intro_button6,
		an_intro_details_header
	};

	class an_intro_topbar: IGUIBack
	{
		idc = 2200;
		type = 0;
		style = 0;
		x = -0.7125;
		y = -0.42;
		w = 2.425;
		h = 0.34;
		colorBackground[] = {1,1,1,0.7};
		colorText[] = {1, 1, 1, 0.75};
		font = "RobotoCondensed";
		SizeEx = 0.02300;
		text = "";
	};
	class an_intro_name: RscStructuredTextTest
	{
		idc = 2202;
		x = 1.2;
		y = -0.32;
		w = 0.5375;
		h = 0.14;
		colorBackground[] = {0,0,0,0.5};
		colorText[] = {1, 1, 1, 0.75};
		font = "RobotoCondensed";
		SizeEx = 0.2;
		text = "";
	};
	class an_intro_button1: RscButtonClean
	{
		idc = 1600;
		text = "Enter Lakeside"; //--- ToDo: Localize;
		x = -0.5475;
		y = -0.14;
		w = 0.2;
		h = 0.06;
		font = "RobotoCondensed";
		colorBackground[] = {0,0,0,0.5};
	};
	class an_intro_maintitle: RscTextTest
	{
		idc = 1000;
		text = "ALRP Arma 3 Life"; //--- ToDo: Localize;
		x = -0.55;
		y = -0.34;
		w = 1.0875;
		h = 0.16;
		colorText[] = {-1,-1,-1,1};
		font = "RobotoCondensed";
		sizeEx = 0.1;
	};
	class an_intro_info_black: IGUIBack
	{
		idc = 2201;
		type = 0;
		style = 0;
		x = 1.1375;
		y = 0.06;
		w = 0.55;
		h = 1.16;
		colorBackground[] = {1,1,1,0.7};
		colorText[] = {1, 1, 1, 0.75};
		font = "RobotoCondensed";
		SizeEx = 0.02300;
		text = "";
	};
	class an_intro_details_text: RscStructuredTextTest
	{
		idc = 1101;
		text = "Test"; //--- ToDo: Localize;
		x = 1.15;
		y = 0.08;
		w = 0.525;
		h = 1.12;
		colorText[] = {0,0,0,1};
		colorBackground[] = {-1,-1,-1,0};
		font = "RobotoCondensed";
	};
	class an_intro_button2: RscButtonClean
	{
		idc = 1601;
		text = "Changelog"; //--- ToDo: Localize;
		x = -0.3475;
		y = -0.14;
		w = 0.2;
		h = 0.06;
		font = "RobotoCondensed";
		colorBackground[] = {0,0,0,0.5};
	};
	class an_intro_button3: RscButtonClean
	{
		idc = 1602;
		text = "About Lakeside"; //--- ToDo: Localize;
		x = -0.145;
		y = -0.14;
		w = 0.2;
		h = 0.06;
		font = "RobotoCondensed";
		colorBackground[] = {0,0,0,0.5};
	};
	class an_intro_button4: RscButtonClean
	{
		idc = 1603;
		text = "Staff"; //--- ToDo: Localize;
		x = 0.055;
		y = -0.14;
		w = 0.2;
		h = 0.06;
		font = "RobotoCondensed";
		colorBackground[] = {0,0,0,0.5};
	};
	class an_intro_button6: RscButtonClean
	{
		idc = 1605;
		text = "Supporters"; //--- ToDo: Localize;
		x = 0.055;
		y = -0.14;
		w = 0.2;
		h = 0.06;
		font = "RobotoCondensed";
		colorBackground[] = {0,0,0,0.5};
	};
	class an_intro_button5: RscButtonClean
	{
		idc = 1604;
		text = "Credits"; //--- ToDo: Localize;
		x = 0.2560;
		y = -0.14;
		w = 0.2;
		h = 0.06;
		font = "RobotoCondensed";
		colorBackground[] = {0,0,0,0.5};
	};
	class an_intro_details_header: RscTextTest
	{
		idc = 1001;
		text = "Information"; //--- ToDo: Localize;
		x = 1.1375;
		y = -0.008;
		w = 0.55;
		h = 0.06;
		colorBackground[] = {-1,-1,-1,0.7};
		colorText[] = {1,1,1,1};
		sizeEx = 0.04;
		font = "RobotoCondensed";
	};
};
