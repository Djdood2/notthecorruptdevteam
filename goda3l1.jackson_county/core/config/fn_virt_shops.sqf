/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "gold": {["Gold Bar Dealer",["gold"]]};
	case "treasure": {["Treasure Trader",["token","bronzecoins","goldcoins"]]};
	case "raretreasure": {["Rare Treasure Trader",["jewelry"]]};
	case "mcdonalds": {["McDonalds",["burger","fries","pepsi","redgull"]]};
	case "hardwarestore": {["Juan's Store",["netting","generator","light","shovel","campfire"]]};
	case "phones": {["Phone R US",["mobilephone"]]};
	case "market": {["Market",["weddingring","medkit","condom","cleankit","bandage","coffee","bec","water","apple","redgull","tbacon","lockpick","fuelF","peach","boltcutter","tierope","storagesmall","storagebig"]]};
	case "rebel": {["Rebel Market",["tierope","bandage","coffee","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge","hackingtool"]]};
	case "gang": {["Gang Market", ["bandage","coffee","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "coffee": {["Dunkin Bronuts",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["marijuana","heroinp"]]};
	case "farmingmarket": {["Seed Market",["cannabis seed","opium seed","cannabis"]]};	
	case "glass": {["Glass Dealer",["glass"]]};
	case "diamond": {["Diamond Dealer",["weddingring","diamond","diamondc"]]};
	case "cop": {["Cop Item Shop",["keycard","panicbutton","medkit","cleankit","bandage","mobilephone","donuts","coffee","apple","redgull","fuelF","defusekit"]]};
	case "uranium": {["Vlad the Illegal Metal Dealer",["uraniumr","uranium"]]};
	case "forestry": {["William the Lumber Dealer",["lumber"]]}; 
	case "jailjunk": {["Junk Collector",["junk","metal"]]};
	case "jailtuck": {["Inmate Tuck Shop",["water","rabbit","lollypop","condom","painkiller"]]};
	case "ems": {["EMS Item Shop",["lollypop","painkiller","condom","panicbutton","cleankit","epipen","splint","stitches","bandage","mobilephone","apple","redgull","tbacon","peach"]]};
};


