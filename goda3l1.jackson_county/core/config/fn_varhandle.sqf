/*
	File: fn_varHandle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handler for getting a variables name, short name, etc.
*/
private["_var","_mode"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_var == "" OR _mode == -1) exitWith {""};

switch (_mode) do
{
	case 0:
	{
		switch (_var) do
		{
			case "gold": {"life_inv_gold"};
			case "cleankit": {"life_inv_cleankit"};
			case "keycard": {"life_inv_keycard"};
			case "token": {"life_inv_token"};
			case "bronzecoins": {"life_inv_bronzecoins"};
			case "goldcoins": {"life_inv_goldcoins"};
			case "jewelry": {"life_inv_jewelry"};
			case "panicbutton": {"life_inv_panicbutton"};
			case "mobilephone": {"life_inv_mobilephone"};
			case "bec": {"life_inv_bec"};
			case "axe": {"life_inv_axe"};
			case "medkit": {"life_inv_medkit"};
			case "methu": {"life_inv_methu"};
			case "methp": {"life_inv_methp"};  
			case "cokeu": {"life_inv_cokeu"};
			case "cokep": {"life_inv_cokep"};
			case "weddingring": {"life_inv_weddingring"};
			case "condom": {"life_inv_condom"};
			case "bandage": {"life_inv_bandage"};
			case "stitches": {"life_inv_stitches"};
			case "splint": {"life_inv_splint"};
			case "epipen": {"life_inv_epipen"};
			case "tierope": {"life_inv_tierope"};
			case "heroinu": {"life_inv_heroinu"};
			case "heroinp": {"life_inv_heroinp"};
			case "marijuana": {"life_inv_marijuana"};
			case "apple": {"life_inv_apple"};
			case "water": {"life_inv_water"};
			case "rabbit": {"life_inv_rabbit"};
			case "coffee": {"life_inv_coffee"};
			case "donuts": {"life_inv_donuts"};
			case "fuelE": {"life_inv_fuelE"};
			case "fuelF": {"life_inv_fuelF"};
			case "money": {"aQ3CGZRg3W9tGxzs"};
			case "pickaxe": {"life_inv_pickaxe"};
			case "sand": {"life_inv_sand"};
			case "glass": {"life_inv_glass"};
			case "diamond": {"life_inv_diamond"};
			case "diamondc": {"life_inv_diamondr"};
			case "tbacon": {"life_inv_tbacon"};
			case "lockpick": {"life_inv_lockpick"};
			case "redgull": {"life_inv_redgull"};
			case "peach": {"life_inv_peach"};
			case "blastingcharge": {"life_inv_blastingcharge"};
			case "hackingtool": {"life_inv_hackingtool"};
			case "boltcutter": {"life_inv_boltcutter"};
			case "defusekit": {"life_inv_defusekit"};
			case "storagesmall": {"life_inv_storagesmall"};
			case "storagebig": {"life_inv_storagebig"};
			case "wheat": {"life_inv_wheat"};
			case "sunflower": {"life_inv_sunflower"};
			case "cotton": {"life_inv_cotton"};
			case "cannabis": {"life_inv_cannabis"};
			case "wheat seed": {"life_inv_wheatseeds"};
			case "sunflower seed": {"life_inv_sunflowerseeds"};
			case "cotton seed": {"life_inv_cottonseeds"};
			case "cannabis seed": {"life_inv_cannabisseeds"};
			case "opium seed": {"life_inv_opiumseeds"};
			case "spikeStrip": {"life_inv_spikeStrip"};
			case "RoadBlockConc": {"life_inv_RoadBlockConc"};
			case "meth2": {"life_inv_meth2"};
			case "uranium": {"life_inv_uranium"};
			case "uraniumr": {"life_inv_uraniumr"};
			case "log": {"life_inv_log"};
			case "lumber": {"life_inv_lumber"};
			case "chainsaw": {"life_inv_chainsaw"};
			case "painkiller": {"life_inv_painkiller"};
			case "lollypop": {"life_inv_lollypop"};
			/////////////////////Jail//////////////////
			case "junk": {"life_inv_junk"};
			case "metal": {"life_inv_metal"};
			/////////////////////Drugfield/////////////
			case "netting": {"life_inv_netting"};
			case "generator": {"life_inv_generator"};
			case "light": {"life_inv_light"};
			case "shovel": {"life_inv_shovel"};
			case "campfire": {"life_inv_campfire"};
			case "package": {"life_inv_package"};
			//McDonalds
			case "burger": {"life_inv_burger"};
			case "fries": {"life_inv_fries"};
			case "pepsi": {"life_inv_pepsi"};
			
		};
	};
	
	case 1:
	{
		switch (_var) do
		{
		case "life_inv_gold": {"gold"};	
		case "life_inv_hackingtool": {"hackingtool"};	
		case "life_inv_keycard": {"keycard"};		
		case "life_inv_token": {"token"};
		case "life_inv_bronzecoins": {"bronzecoins"};
		case "life_inv_goldcoins": {"goldcoins"};
		case "life_inv_jewelry": {"jewelry"};		
		case "life_inv_medkit": {"medkit"};		
		case "life_inv_axe": {"axe"};
		case "life_inv_condom": {"condom"};
			case "life_inv_panicbutton": {"panicbutton"};
			case "life_inv_cleankit": {"cleankit"};
			case "life_inv_mobilephone": {"mobilephone"};
			case "life_inv_weddingring": {"weddingring"};
			case "life_inv_tierope": {"tierope"};
			case "life_inv_bandage": {"bandage"};
			case "life_inv_stitches": {"stitches"}; 
			case "life_inv_splint": {"splint"};
			case "life_inv_epipen": {"epipen"};
			case "life_inv_bec": {"bec"};
			case "life_inv_methu": {"methu"};
			case "life_inv_methp": {"methp"}; 
			case "life_inv_cokeu": {"cokeu"};
			case "life_inv_cokep": {"cokep"}; 
			case "life_inv_heroinu": {"heroinu"};
			case "life_inv_heroinp": {"heroinp"};
			case "life_inv_cannabis": {"cannabis"};
			case "life_inv_marijuana": {"marijuana"};
			case "life_inv_apple": {"apple"};
			case "life_inv_water": {"water"};
			case "life_inv_coffee": {"coffee"};
			case "life_inv_donuts": {"donuts"};
			case "life_inv_fuelE": {"fuelE"};
			case "life_inv_fuelF": {"fuelF"};
			case "aQ3CGZRg3W9tGxzs": {"money"};
			case "life_inv_pickaxe": {"pickaxe"};
			case "life_inv_sand": {"sand"};
			case "life_inv_glass": {"glass"};
			case "life_inv_redgull": {"redgull"};
			case "life_inv_lockpick": {"lockpick"};
			case "life_inv_tbacon": {"tbacon"};
			case "life_inv_peach": {"peach"};
			case "life_inv_diamond": {"diamond"};
			case "life_inv_diamondr": {"diamondc"};
			case "life_inv_coke": {"cocaine"};
			case "life_inv_cokep": {"cocainep"};
			case "life_inv_spikeStrip": {"spikeStrip"};
			case "life_inv_blastingcharge": {"blastingcharge"};
			case "life_inv_boltcutter": {"boltcutter"};
			case "life_inv_defusekit": {"defusekit"};
			case "life_inv_storagesmall": {"storagesmall"};
			case "life_inv_storagebig": {"storagebig"};
			case "life_inv_wheat": {"wheat"};
			case "life_inv_sunflower": {"sunflower"};
			case "life_inv_cotton": {"cotton"};
			case "life_inv_cannabis": {"cannabis"};
			case "life_inv_wheatseeds": {"wheat seed"};
			case "life_inv_sunflowerseeds": {"sunflower seed"};
			case "life_inv_cottonseeds": {"cotton seed"};
			case "life_inv_cannabisseeds": {"cannabis seed"};
			case "life_inv_opiumseeds": {"opium seed"};
			case "life_inv_RoadBlockConc": {"RoadBlockConc"};
			case "life_inv_meth2": {"meth2"};
			case "life_inv_uranium": {"uranium"};
			case "life_inv_uraniumr": {"uraniumr"};
			case "life_inv_log": {"log"};
			case "life_inv_lumber": {"lumber"};
			case "life_inv_chainsaw": {"chainsaw"};
			case "life_inv_painkiller": {"painkiller"};
			case "life_inv_lollypop": {"lollypop"};
			/////////////////Jail////////////////
			case "life_inv_junk": {"junk"};
			case "life_inv_metal": {"metal"};
			/////////////////Drugfield////////////////
			case "life_inv_netting": {"netting"};
			case "life_inv_generator": {"generator"};
			case "life_inv_light": {"light"};
			case "life_inv_shovel": {"shovel"};
			case "life_inv_campfire": {"campfire"};
			case "life_inv_package": {"package"};
			//McDonalds
            case "life_inv_burger": {"burger"};
			case "life_inv_fries": {"fries"};
			case "life_inv_pepsi": {"pepsi"};			
		};
	};
};
