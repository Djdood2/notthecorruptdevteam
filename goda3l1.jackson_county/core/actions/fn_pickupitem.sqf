/*
	File: fn_pickupItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handling for picking up an item.
*/
private["_obj","_itemInfo","_itemName","_illegal","_diff"];
if((time - life_action_delay) < 1) exitWith {hint "You can't rapidly use action keys!"};
_obj = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _obj OR isPlayer _obj) exitWith {};
if((_obj getVariable["PickedUp",false])) exitWith {deleteVehicle _obj;}; //Object was already picked up.
if(player distance _obj > 3) exitWith {};
if (currentWeapon player == "Laserdesignator_01_khk_F" OR currentWeapon player == "Binocular" OR currentWeapon player == "Rangefinder") exitWith { hint "You pickup money with that in your hand!";};
_itemInfo = _obj getVariable "item";
_itemName = [([_itemInfo select 0,0] call life_fnc_varHandle)] call life_fnc_varToStr;
_illegal = [_itemInfo select 0,life_illegal_items] call fnc_index;
_diff = [_itemInfo select 0,_itemInfo select 1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff <= 0) exitWith {hint localize "STR_NOTF_InvFull"};
_obj setVariable["PickedUp",TRUE,TRUE];
life_action_delay = time;
if(_diff != _itemInfo select 1) then
{
	if(([true,_itemInfo select 0,_diff] call life_fnc_alrphandleinventory)) then
	{
		player playmove "AinvPknlMstpSlayWrflDnon";
		uiSleep 0.35;
		_obj setVariable["item",[_itemInfo select 0,((_itemInfo select 1) - _diff)],true];
		_obj setVariable["PickedUp",false,true];
		titleText[format[localize "STR_NOTF_Picked",_diff,_itemName],"PLAIN"];
	};
}
	else
{
	if(([true,_itemInfo select 0,_itemInfo select 1] call life_fnc_alrphandleinventory)) then
	{
		deleteVehicle _obj;
		player playmove "AinvPknlMstpSlayWrflDnon";
		uiSleep 0.35;
		titleText[format[localize "STR_NOTF_Picked",_diff,_itemName],"PLAIN"];
	};
};