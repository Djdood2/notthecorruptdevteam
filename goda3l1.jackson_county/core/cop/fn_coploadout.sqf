/*
	File: fn_copLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Itsyuka
	
	Description:
	Loads the cops out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Load player with default cop gear.
player forceAddUniform "A3LRP_DOC_Cadet_Uniform";
player addHeadgear "A3LRP_CAP_Cadet";
player addBackpack "AM_PoliceBelt";

// Add shortrange radio
player addItem "tf_anprc152"; 
player assignItem "tf_anprc152";

player addWeapon "JM_Taser_26";
player addMagazine "JM_26_Cartridge";
player addMagazine "JM_26_Cartridge";
player addMagazine "JM_26_Cartridge";
player addMagazine "JM_26_Cartridge";
player addMagazine "JM_26_Cartridge";
player addMagazine "JM_26_Cartridge";
player addMagazine "alrp_policegps";

/* ITEMS */
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "tf_microdagr";
player assignItem "tf_microdagr";
player addItem "ItemGPS";
player assignItem "ItemGPS";

[] call life_fnc_saveGear;

if (life_inv_mobilephone < 1) then{
[true,"mobilephone",1] call life_fnc_alrphandleinventory;
};

if (life_inv_keycard < 1) then{
[true,"keycard",1] call life_fnc_alrphandleinventory;
};

if (life_inv_panicbutton < 1) then{
[true,"panicbutton",1] call life_fnc_alrphandleinventory;
};

