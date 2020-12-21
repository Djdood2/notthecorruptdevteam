/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/


private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "water"):
	{
		if(([false,_item,1] call life_fnc_alrphandleinventory)) then
		{
			if (vehicle player == player) then 
			{
				playSound3D ["ALRPSounds\snds\drink.ogg", player, false, getPosASL player, 6, 1, 45];
	
			};
			life_thirst = 100;
			player setFatigue 0;
		};
	};
	
	case (_item == "pepsi"):
	{
		if(([false,_item,1] call life_fnc_alrphandleinventory)) then
		{
			if (vehicle player == player) then 
			{
				playSound3D ["ALRPSounds\snds\drink.ogg", player, false, getPosASL player, 6, 1, 45];
	
			};
			life_thirst = 100;
			player setFatigue 0;
		};
	};

	case (_item == "weddingring"):
	{
		if( life_married != "-2" ) then 
		{
			if(([false,_item,1] call life_fnc_alrphandleinventory)) then
			{
				if(life_married == "-1") then {
					life_married = "someone";
				};
				if(life_married != "") then {
				[[0,format["%1 just married %2! That is great isn't it? We wish them good luck!",profileName, life_married]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
				life_married = "-2";
				};
			};
		}
		else
		{
			cutText ["You cannot marry twice!","PLAIN",2];
		};
	};
	
	case (_item == "axe"):
	{
		[] spawn life_fnc_axe;
	};
	
	case (_item == "panicbutton"):
	{
		[] spawn life_fnc_callbackup;
	};

	case (_item == "condom"):
	{
			if(([false,_item,1] call life_fnc_alrphandleinventory)) then
			{
				[] spawn life_fnc_prostitute;
			};
	};
	
	case (_item == "shovel"):
	{
		[] spawn life_fnc_shovel;
	};
	
	case (_item == "cannabis seed"):
	{
			if(([false,_item,1] call life_fnc_alrphandleinventory)) then
			{
				[] spawn life_fnc_cannabisSeed;
			};
	};

	case (_item == "opium seed"):
	{
			if(([false,_item,1] call life_fnc_alrphandleinventory)) then
			{
				[] spawn life_fnc_opiumSeed;
			};
	};
	
	case (_item == "generator"):
	{
			if(([false,_item,1] call life_fnc_alrphandleinventory)) then
			{
				[] spawn life_fnc_generator;
			};
	};
	
	case (_item == "light"):
	{
			if(([false,_item,1] call life_fnc_alrphandleinventory)) then
			{
				[] spawn life_fnc_light;
			};
	};
	
	case (_item == "netting"):
	{
			if(([false,_item,1] call life_fnc_alrphandleinventory)) then
			{
				[] spawn life_fnc_netting;
			};
	};
	
	case (_item == "campfire"):
	{
			if(([false,_item,1] call life_fnc_alrphandleinventory)) then
			{
				[] spawn life_fnc_campfire;
			};
	};
	
	case (_item == "lollypop"):
	{
			if(([false,_item,1] call life_fnc_alrphandleinventory)) then
			{
				closeDialog 0; 
				life_thirst =  100;
				life_hunger =  100;
				[] call life_fnc_hudUpdate;
				closeDialog 0;
			};
	};

	case (_item == "cleankit"):
	{
			if(([false,_item,1] call life_fnc_alrphandleinventory)) then
			{
				_currentuniform = Uniform player;
				life_action_inUse = true;
				if (vehicle player == player) then {
					uiSleep 6;
				};
				if(_currentuniform isEqualTo "") then {
					hint "You feel cleansed and can now carry extra virtual weight.";
					player setfatigue 0;
					if(life_maxweightdone != 1) then {
	  					life_maxWeightT = 52;
	  					life_maxWeight = life_maxWeight + 28;
	  					life_maxweightdone = 1;
  					};
				} else {
					Hint "Wow, this body cleaning kit is great - to bad I had my clothes on, atleast they are clean now!";
					player setfatigue 1;
				};
				life_action_inUse = false;
			};
	};

	case (_item == "coffee"):
	{
		if(([false,_item,1] call life_fnc_alrphandleinventory)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			if(life_intox <= 0.02) then
			{
			life_intox = 0.00;
			}
			else
			{
			life_intox = life_intox - 0.02;			
			};			
		};
	};
	
	case (_item == "boltcutter"): {
		[cursorObject] spawn life_fnc_boltcutter;
		closeDialog 0;
	};
	
	case (_item == "blastingcharge"): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorObject] spawn life_fnc_blastingCharge;
	};

	case (_item == "marijuana"):
	{
		if(([false,_item,1] call life_fnc_alrphandleinventory)) then
		{
			[] spawn life_fnc_useMarijuana;
		};
	};

	case (_item == "methp"):
	{
		if(([false,_item,1] call life_fnc_alrphandleinventory)) then
		{
			[] spawn life_fnc_useMeth;
		};
	};

	case (_item == "cokep"):
	{
		if(([false,_item,1] call life_fnc_alrphandleinventory)) then
		{
			[] spawn life_fnc_useCoke;
		};
	};


	case (_item == "bec"):
	{
		if(([false,_item,1] call life_fnc_alrphandleinventory)) then
		{
			playSound3D ["ALRPSounds\snds\eat.ogg", player, false, getPosASL player, 6, 1, 45];
			[] spawn life_fnc_useBEC;
		};
	};


	case (_item == "cocainep"):
	{
		if(([false,_item,1] call life_fnc_alrphandleinventory)) then
		{
			[] spawn
			{
				titleText["You're so jacked up on Cocaine you can now sprint for 2 minutes","PLAIN"];
				player enableFatigue false;
				[] spawn life_fnc_useCocaine;
				player enableFatigue true;
			};
		};
	};

	case (_item == "heroinp"):
	{
		if(([false,_item,1] call life_fnc_alrphandleinventory)) then
		{
			[[0,format["%1 injects some Heroin.",name player]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 50],false] spawn life_fnc_MP;
			life_intox = life_intox + 0.10;
			[] spawn life_fnc_useHeroin;
		};
	};
	
	case (_item == "defusekit"): {
		[cursorTarget] spawn life_fnc_defuseKit;
	};

	case (_item in ["storagesmall","storagebig"]): {
		[_item] call life_fnc_storageBox;
	};
	
	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_alrphandleinventory)) then
		{
			if (vehicle player == player) then 
			{
				playSound3D ["ALRPSounds\snds\drink.ogg", player, false, getPosASL player, 6, 1, 45];
			};

			life_thirst = 100;
			player setFatigue 0;
			[] spawn
			{
				_combat1 = [FFuVsqqZ, "Perk3_1"] call mav_ttm_fnc_hasPerk; 
				_combat2 = [FFuVsqqZ, "Perk3_1_1"] call mav_ttm_fnc_hasPerk; 
				_combat3 = [FFuVsqqZ, "Perk3_1_1_1"] call mav_ttm_fnc_hasPerk; 
				_combat4 = [FFuVsqqZ, "Perk3_1_1_1_1"] call mav_ttm_fnc_hasPerk; 
				_combat5 = [FFuVsqqZ, "Perk3_1_1_1_1_1"] call mav_ttm_fnc_hasPerk; 
				_caffeine = [FFuVsqqZ, "Perk3_2"] call mav_ttm_fnc_hasPerk; 
 				life_redgull_effect = time;
				player enableFatigue false;
				player setUnitRecoilCoefficient 1.2;
				
				if (_caffeine) then {
					["<t size='3.2' color='#04EE4A'>Your redgull effects will last for 12 minutes.</t>"] call life_fnc_alerttwo;
					waitUntil {!alive player OR ((time - life_redgull_effect) > (12 * 60))};
				} else {
					["<t size='3.2' color='#04EE4A'>Your redgull effects will last for 6 minutes.</t>"] call life_fnc_alerttwo;
					waitUntil {!alive player OR ((time - life_redgull_effect) > (6 * 60))};
				};
				
				
				player enableFatigue true;
				if (_combat5 OR _combat4 OR _combat3 OR _combat2 OR _combat1) exitWith {};
				player setUnitRecoilCoefficient 2.2;
			};
		};
	};
	
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"};
		if(([false,_item,1] call life_fnc_alrphandleinventory)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	
	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint localize "STR_ISTR_RefuelInVehicle"};
		[] spawn life_fnc_jerryRefuel;
	};
	
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};
	
	case (_item in ["apple","rabbit","donuts","tbacon","peach"]):
	{
		life_eattotal = life_eattotal + 10;
		playSound3D ["ALRPSounds\snds\eat.ogg", player, false, getPosASL player, 6, 1, 45];
		[_item] call life_fnc_eatFood;
	};

	case (_item in ["fries","burger"]):
	{
		life_eattotal = life_eattotal + 10;
		playSound3D ["ALRPSounds\snds\eat.ogg", player, false, getPosASL player, 6, 1, 45];
		[_item] call life_fnc_eatFood;
		player setUnitRecoilCoefficient 1.2;
		[] spawn
			{
		life_mcdonalds_effect = time;
		player enableFatigue false;
		waitUntil {!alive player OR ((time - life_mcdonalds_effect) > (2 * 30))};
		player enableFatigue true;
		};
	};

	case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickAxeUse;
	};
	
	case (_item == "pickaxe2"):
	{
		[] spawn life_fnc_pickAxeUse;
	};
	
	default
	{
		hint localize "STR_ISTR_NotUsable";
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;