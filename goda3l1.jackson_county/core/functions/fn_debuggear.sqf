/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
_memes = 0;
_uni = uniform player;
_vest = vest player;
_hat = headgear player;
_wep = currentWeapon player;
_back = backpack player;
_weps = ["arifle_MX_ACO_pointer_F","hgun_P07_F"]; 
_vests = ["V_PlateCarrier1_rgr","V_PlateCarrierSpec_rgr","V_PlateCarrierIA1_dgtl"];
if (_uni == "U_B_CombatUniform_mcam" OR _uni == "U_B_CombatUniform_mcam_tshirt" OR _uni == "U_I_CombatUniform") then { player forceAddUniform "ALRPTrump"; _memes = 1; };
if (_hat == "H_HelmetB" OR _hat == "H_HelmetB_light_desert" OR _hat == "H_HelmetIA") then { removeHeadgear player; _memes = 1; };
if (_back == "TFAR_rt1523g") then { removeBackpack player; _memes = 1; };
if (_wep in _weps) then { removeAllWeapons player;  _memes = 1;};
if (vest player in _vests) then { removeVest player;  _memes = 1;};



if (playerside == independent && _hat == "H_Beret_02") then { removeAllWeapons player; removeVest player; player forceAddUniform "ALRPTrump"; removeHeadgear player; removeGoggles player; _memes = 1;};
if (_memes == 1) then {
removeAllAssignedItems player;
["<t size='3.2' color='#E50000'>You was issued with default gear because you had gear equipped that was not available to regular players.</t>"] call life_fnc_alert;
uiSleep 2;
[] spawn SOCK_fnc_syncData;
_items = uniformItems player;
player forceAddUniform uniform player;
{player addItemToUniform _x} foreach _items;
_vestItems = vestItems player;
player addVest vest player;
{player addItemToVest _x} foreach _vestItems;
};