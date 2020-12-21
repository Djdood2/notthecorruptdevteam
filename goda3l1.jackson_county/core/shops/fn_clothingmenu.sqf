/*
	File: fn_clothingMenu.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Opens and initializes the clothing store menu.
	Started clean, finished messy.
*/
private["_list","_clothes","_pic","_filter"];
if (MasterAdmin != 76561198252931581) then {
	["SpyGlass",false,true] call BIS_fnc_endMission;
};
if (isNil "MasterAdmin") exitWith {
["SpyGlass",false,true] call BIS_fnc_endMission;
};
disableUserInput true;
createDialog "Life_Clothing";
disableSerialization;
disableUserInput false;
//Cop / Civ Pre Check
if((_this select 3) in ["bruce","reb","kart"] && playerSide != civilian) exitWith {hint localize "STR_Shop_NotaCiv"; closeDialog 0;};
if((_this select 3) == "dive" && !license_civ_dive) exitWith {hint "You need to purchase a diving license to purchase clothing from here!"; closeDialog 0;};
if((_this select 3) == "reb" && !license_civ_rebel) exitWith {hint localize "STR_Shop_NotaReb"; closeDialog 0;};
if((_this select 3) in ["cop","copcid","copsert"] && playerSide != west) exitWith {hint localize "STR_Shop_NotaCop"; closeDialog 0;};
if((_this select 3) in ["copcid"] && !license_cop_cid) exitWith { hint "You do not have the Undercover license!"; closeDialog 0};
if((_this select 3) in ["copdeptcommand"] && !license_cop_deptcommand) exitWith { hint "You do not have the correct license!"; closeDialog 0};
if((_this select 3) in ["copmarshals"] && !license_cop_marshals) exitWith { hint "You do not have the Marshals license!"; closeDialog 0};
if((_this select 3) in ["copadminb"] && !license_cop_adminb) exitWith { hint "You do not have the Administrative license!"; closeDialog 0};
if((_this select 3) in ["copsert"] && !license_cop_sert) exitWith { hint "You do not have the SERT license!"; closeDialog 0};
if((_this select 3) in ["ems"] && playerSide != independent) exitWith {hint localize "STR_Shop_NotaMED"; closeDialog 0;};
if((_this select 3) in ["emsprob"] && playerSide != independent) exitWith {hint localize "STR_Shop_NotaMED"; closeDialog 0;};
if((_this select 3) in ["emstru"] && !license_med_tru) exitWith {hint localize "STR_Shop_NotaMED"; closeDialog 0;};
if((_this select 3) in ["emscommand"] && !license_med_command) exitWith {hint localize "STR_Shop_NotaMED"; closeDialog 0;};
if((_this select 3) in ["emshighcommand"] && !license_med_highcommand) exitWith {hint localize "STR_Shop_NotaMED"; closeDialog 0;};
if((_this select 3) in ["pusha"] && !license_civ_pusha) exitWith { hint "You are not part of this gang!"; closeDialog 0};
if((_this select 3) in ["chaos"] && !license_civ_chaos) exitWith { hint "You are not part of this gang!"; closeDialog 0};
if((_this select 3) in ["sbh"] && !license_civ_sbh) exitWith { hint "You are not part of this gang!"; closeDialog 0};
if((_this select 3) in ["spartan"] && !license_civ_spartan) exitWith { hint "You are not part of this gang!"; closeDialog 0};
if((_this select 3) in ["sierra"] && !license_civ_sierra) exitWith { hint "You are not part of this gang!"; closeDialog 0};
if((_this select 3) in ["tfa"] && !license_civ_tfa) exitWith { hint "You are not part of this gang!"; closeDialog 0};
if((_this select 3) in ["mafia"] && !license_civ_mafia) exitWith { hint "You are not part of this gang!"; closeDialog 0};
if((_this select 3) in ["russia"] && !license_civ_russia) exitWith { hint "You are not part of this gang!"; closeDialog 0};
if((_this select 3) in ["wolfe"] && !license_civ_wolfe) exitWith { hint "You are not part of this gang!"; closeDialog 0};
if((_this select 3) in ["ss"] && !license_civ_ss) exitWith { hint "You are not part of the Mayor's Office!"; closeDialog 0};
if((_this select 3) in ["supreme"] && !license_civ_supreme) exitWith { hint "You are not part of Supreme!"; closeDialog 0};
if((_this select 3) in ["mafia"] && !license_civ_mafia) exitWith { hint "You are not part of The Russian Mafia!"; closeDialog 0};
life_clothing_store = _this select 3;

//License Check?
_var = [life_clothing_store,0] call life_fnc_licenseType;
if(_var select 0 != "") then
{
	if(!(missionNamespace getVariable (_var select 0))) exitWith {hint format[localize "STR_Shop_YouNeed",[_var select 0] call life_fnc_varToStr]; closeDialog 0;};
};

//initialize camera view
life_shop_cam = "CAMERA" camCreate getPos player;
showCinemaBorder false;
life_shop_cam cameraEffect ["Internal", "Back"];
life_shop_cam camSetTarget (player modelToWorld [0,0,1]);
life_shop_cam camSetPos (player modelToWorld [1,4,2]);
life_shop_cam camSetFOV .33;
life_shop_cam camSetFocus [50, 0];
life_shop_cam camCommit 0;
life_cMenu_lock = false;

if(isNull (findDisplay 3100)) exitWith {};
_list = (findDisplay 3100) displayCtrl 3101;
_filter = (findDisplay 3100) displayCtrl 3105;
lbClear _filter;
lbClear _list;

_filter lbAdd localize "STR_Shop_UI_Clothing";
_filter lbAdd localize "STR_Shop_UI_Hats";
_filter lbAdd localize "STR_Shop_UI_Glasses";
_filter lbAdd localize "STR_Shop_UI_Vests";
_filter lbAdd localize "STR_Shop_UI_Backpack";

_filter lbSetCurSel 0;

life_oldClothes = uniform player;
life_olduniformItems = uniformItems player;
life_oldBackpack = backpack player;
life_oldVest = vest player;
life_oldVestItems = vestItems player;
life_oldBackpackItems = backpackItems player;
life_oldGlasses = goggles player;
life_oldHat = headgear player;
waitUntil {isNull (findDisplay 3100)};
life_shop_cam cameraEffect ["TERMINATE","BACK"];
camDestroy life_shop_cam;
life_clothing_filter = 0;
if(isNil "life_clothesPurchased") exitWith
{
	life_clothing_purchase = [-1,-1,-1,-1,-1];
	if(life_oldClothes != "") then {player addUniform life_oldClothes;} else {removeUniform player};
	if(life_oldHat != "") then {player addHeadgear life_oldHat} else {removeHeadgear player;};
	if(life_oldGlasses != "") then {player addGoggles life_oldGlasses;} else {removeGoggles player};
	if(backpack player != "") then
	{
		if(life_oldBackpack == "") then
		{
			removeBackpack player;
		}
			else
		{
			removeBackpack player;
			player addBackpack life_oldBackpack;
			clearAllItemsFromBackpack player;
			if(count life_oldBackpackItems > 0) then
			{
				{
					[_x,true,true] call life_fnc_handleItem;
				} foreach life_oldBackpackItems;
			};
		};
	};

	if(count life_oldUniformItems > 0) then
	{
		{[_x,true,false,false,true] call life_fnc_handleItem;} foreach life_oldUniformItems;
	};

	if(vest player != "") then
	{
		if(life_oldVest == "") then
		{
			removeVest player;
		}
			else
		{
			player addVest life_oldVest;
			if(count life_oldVestItems > 0) then
			{
				{[_x,true,false,false,true] call life_fnc_handleItem;} foreach life_oldVestItems;
			};
		};
	};
};
life_clothesPurchased = nil;

//Check uniform purchase.
if((life_clothing_purchase select 0) == -1) then
{
	if(life_oldClothes != uniform player) then {player addUniform life_oldClothes;};
};
//Check hat
if((life_clothing_purchase select 1) == -1) then
{
	if(life_oldHat != headgear player) then {if(life_oldHat == "") then {removeHeadGear player;} else {player addHeadGear life_oldHat;};};
};
//Check glasses
if((life_clothing_purchase select 2) == -1) then
{
	if(life_oldGlasses != goggles player) then
	{
		if(life_oldGlasses == "") then
		{
			removeGoggles player;
		}
			else
		{
			player addGoggles life_oldGlasses;
		};
	};
};
//Check Vest
if((life_clothing_purchase select 3) == -1) then
{
	if(life_oldVest != vest player) then
	{
		if(life_oldVest == "") then {removeVest player;} else
		{
			player addVest life_oldVest;
			{[_x,true,false,false,true] call life_fnc_handleItem;} foreach life_oldVestItems;
		};
	};
};

//Check Backpack
if((life_clothing_purchase select 4) == -1) then
{
	if(life_oldBackpack != backpack player) then
	{
		if(life_oldBackpack == "") then {removeBackpack player;} else
		{
			removeBackpack player;
			player addBackpack life_oldBackpack;
			{[_x,true,true] call life_fnc_handleItem;} foreach life_oldBackpackItems;
		};
	};
};

life_clothing_purchase = [-1,-1,-1,-1,-1];

[] call life_fnc_saveGear;
