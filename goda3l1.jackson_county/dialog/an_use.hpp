class an_use_dialog {
	idd = 10;
	movingEnable = 1;
	controls[]=
	{
		an_use_title,
		an_use_back,
		an_use_list,
		an_use_button
	};

	class an_use_title: IntText
	{
		idc = 1000;
		text = "Interaction Menu"; //--- ToDo: Localize;
		x = -0.2125;
		y = 0.16;
		w = 0.3625;
		h = 0.04;
		colorBackground[] = {0.18,0.553,0.937,1};
	};
	class an_use_back: IGUIBack
	{
		idc = 2200;
		type = 0;
		style = 0;
		x = -0.2125;
		y = 0.208;
		w = 0.3625;
		h = 0.68;
		colorBackground[] = {0,0,0,0.5};
		colorText[] = {1, 1, 1, 0.75};
		font = "PuristaMedium";
		SizeEx = 0.02300;
		text = "";
	};
	class an_use_list: RscListbox
	{
		idc = 1500;
		x = -0.2;
		y = 0.22;
		w = 0.3375;
		h = 0.64;
	};
	class an_use_button: RscButtonMiddle
	{
		idc = 1600;
		text = "Perform Action";
		x = -0.2125;
		y = 0.9;
		w = 0.3625;
		h = 0.06;
		colorBackground[] = {0,0,0,0.5};
		colorText[] = {1,1,1,1};
	};
};
