/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
case "gold": {3.5};	
case "token": {3};
case "keycard": {2};
case "bronzecoins": {3};
case "goldcoins": {3};
case "jewelry": {4};
case "tierope": {7};
case "axe": {2};
case "cleankit": {1};
case "bandage": {0.1};
case "stitches": {0.1};
case "splint": {2};
case "epipen": {1};
case "medkit": {1};
case "mobilephone": {1};
case "panicbutton": {1};
case "bec": {2};
case "methu": {3};
case "methp": {2};
case "meth2": {2};
	case "cokeu": {6};
	case "cokep": {4};
	case "heroinu": {2};
	case "heroinp": {1};
	case "marijuana": {1.5};
	case "apple": {1};
	case "water": {1};
	case "rabbit": {1};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
	case "sand": {2};
	case "glass": {1};
	case "diamond": {2};
	case "diamondc": {1};
	case "spikeStrip": {15};
	case "blastingcharge": {15};
	case "hackingtool": {15};
	case "boltcutter": {15};
	case "defusekit": {2};
	case "storagesmall": {5};
	case "storagebig": {10};
	case "wheat": {1};
	case "sunflower": {2};
	case "cotton": {1};
	case "cannabis": {2};
	case "wheat seed": {0.5};
	case "sunflower seed": {0.5};
	case "cotton seed": {0.5};
	case "cannabis seed": {0.5};
	case "opium seed": {0.5};
	case "RoadBlockConc": {6};
	case "cocaine": {2}; 
	case "cocainep": {2};
	//Uranium Stuff
	case "uranium": {2};
	case "uraniumr": {1};
	//Forestry Stuff
	case "log": {2};
	case "lumber": {1};
	//Drugfield
	case "netting": {2};
	case "generator": {2};
	case "light": {2};
	case "shovel": {2};
	case "junk": {2};
	case "metal": {3};
	default {1};
};
