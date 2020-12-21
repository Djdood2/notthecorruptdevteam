/*
	File: fn_virt_sell.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Sell a virtual item to the store / shop
*/
private["_type","_index","_price","_var","_amount","_name"];
if((lbCurSel 2402) == -1) exitWith {};
_type = lbData[2402,(lbCurSel 2402)];
_index = [_type,sell_array] call TON_fnc_index;
if(_index == -1) exitWith {};
_index2 = [_type,sell_array] call TON_fnc_index;
_price = 0.0;
if(_index2==-1) then {_price = (sell_array select _index) select 1;} else {_price = (sell_array select _index2) select 1;};
_var = [_type,0] call life_fnc_varHandle;

// temp fix for selling items (if dynmarket is broke xddd)
if (_type == "diamondc") then {_price = 2000};
if (_type == "heroinp") then {_price = 3100};
if (_type == "marijuana") then {_price = 2400};
if (_type == "lumber") then {_price = 1490};
if (_type == "glass") then {_price = 900};
if (_type == "uraniumr") then {_price = 2900};
if (_type == "jewelry") then {_price = 6500};
if (_type == "junk") then {_price = 25};
if (_type == "bronzecoins") then {_price = 1875};
if (_type == "goldcoins") then {_price = 2450};
if (_type == "gold") then {_price = 33000};
if (_type == "token") then {_price = 1245};

_amount = ctrlText 2405;
if(!([_amount] call TON_fnc_isnumber)) exitWith {hint localize "STR_Shop_Virt_NoNum";};
_amount = parseNumber (_amount);
if(_amount > (missionNameSpace getVariable _var)) exitWith {hint localize "STR_Shop_Virt_NotEnough"};

_price = (_price * _amount);
_name = [_var] call life_fnc_vartostr;
if(([false,_type,_amount] call life_fnc_alrphandleinventory)) then
{
	hint format[localize "STR_Shop_Virt_SellItem",_amount,_name,[_price] call life_fnc_numberText];
	aQ3CGZRg3W9tGxzs = aQ3CGZRg3W9tGxzs + _price;
	DYNAMICMARKET_boughtItems pushBack [_type,_amount];
	[] call life_fnc_virt_update;
	[] spawn SOCK_fnc_syncData;
};

if(life_shop_type == "heroin") then
{
	private["_array","_ind","_val"];
	_array = life_shop_npc getVariable["sellers",[]];
	_ind = [getPlayerUID player,_array] call TON_fnc_index;
	if(_ind != -1) then
	{
		_val = (_array select _ind) select 2;
		_val = _val + _price;
		_array set[_ind,[getPlayerUID player,profileName,_val]];
		life_shop_npc setVariable["sellers",_array,true];
	}
		else
	{
		_array pushBack [getPlayerUID player,profileName,_price];
		life_shop_npc setVariable["sellers",_array,true];
	};
};

[0] call SOCK_fnc_updatePartial;
[3] call SOCK_fnc_updatePartial;