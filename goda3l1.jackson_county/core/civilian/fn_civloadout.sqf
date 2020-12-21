/*
	File: fn_civLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Itsyuka
	
	Description:
	Loads the civs out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

_clothings = ["KI_GucciCheckerBT1","KI_SupremeBlackWT1","KI_SupremeBlack1","KI_SupremeStrikeBlack1","KI_GucciHoriPattern1","KI_GucciHoriPatternBT1","KI_SupremeWhiteBT1"];
_femaleclothing = ["EF_FEM_4_4B","EF_FEM_4_2LPBW2","EF_FEM_3_72","EF_FEM_3_3LPBP2","EF_FEM_3_42"];
//Check for female face...
if (face player == "Fem_1" OR face player == "Fem_A" OR face player == "Fem_2" OR face player == "Fem_3" OR face player == "Fem_4" OR face player == "Fem_5" OR face player == "Fem_6" OR face player == "Fem_7" OR face player == "Fem_8" OR face player == "Fem_9" OR face player == "Fem_10" OR face player == "Fem_11" OR face player == "Fem_12") then {
player addUniform (_femaleclothing select (floor(random (count _femaleclothing))));
} else { //Not a female! Let's equip him with some dank ALRP t-shirt
player addUniform (_clothings select (floor(random (count _clothings))));
};
/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "tf_microdagr";
player assignItem "tf_microdagr";

[] call life_fnc_saveGear;