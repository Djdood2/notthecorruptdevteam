/*
	File: fn_clothingFilter.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Functionality for filtering clothing types in the menu.
*/
disableSerialization;
private["_control","_selection","_list","_filter"];
_control = _this select 0;
_selection = _this select 1;
life_clothing_filter = _selection;

if(_selection == 4) then
{
	life_shop_cam camSetTarget (player modelToWorld [0,-.15,1.3]);
	life_shop_cam camSetPos (player modelToWorld [1,-4,2]);
	life_shop_cam camCommit 1;
}
	else
{
	life_shop_cam camSetTarget (player modelToWorld [0,0,1]);
	life_shop_cam camSetPos (player modelToWorld [1,4,2]);
	life_shop_cam camCommit 1;
};

if(isNull (findDisplay 3100)) exitWith {};
_list = (findDisplay 3100) displayCtrl 3101;
lbClear _filter;
lbClear _list;

//Temp code, subjected to become one master config in future
_clothes = switch (life_clothing_store) do
{

    //Gang
	case "corleones": {[_selection] call life_fnc_clothing_corleones;};
	case "rpd": {[_selection] call life_fnc_clothing_rpd;};
	case "pusha": {[_selection] call life_fnc_clothing_pusha;};
	case "sbh": {[_selection] call life_fnc_clothing_sbh;};
	case "chaos": {[_selection] call life_fnc_clothing_chaos;};
	case "wolfe": {[_selection] call life_fnc_clothing_wolfe;};
	case "spartan": {[_selection] call life_fnc_clothing_spartan;};
	case "sierra": {[_selection] call life_fnc_clothing_sierra;};
	case "tfa": {[_selection] call life_fnc_clothing_tfa;};
	case "mafia": {[_selection] call life_fnc_clothing_mafia;};
	case "russia": {[_selection] call life_fnc_clothing_russia;};
	case "ss": {[_selection] call life_fnc_clothing_ss;};
	case "supreme": {[_selection] call life_fnc_clothing_supreme;};
	case "tws": {[_selection] call life_fnc_clothing_tws;};
	//Cop
	case "ems": {[_selection] call life_fnc_clothing_ems;};
	case "bruce": {[_selection] call life_fnc_clothing_bruce;};
	case "copcid": {[_selection] call life_fnc_clothing_copcid;};
	case "copmarshals": {[_selection] call life_fnc_clothing_copmarshals;};
	case "copdeptcommand": {[_selection] call life_fnc_clothing_copdeptcommand;};
	case "copsert": {[_selection] call life_fnc_clothing_copsert;};
	case "copadminb": {[_selection] call life_fnc_clothing_copadminb;};
	case "dive": {[_selection] call life_fnc_clothing_dive;};
	case "cop": {[_selection] call life_fnc_clothing_cop;};
	case "reb": {[_selection] call life_fnc_clothing_reb;};
	case "kart": {[_selection] call life_fnc_clothing_kart;};
	case "emscommand": {[_selection] call life_fnc_clothing_emscommand;};
	case "emshighcommand": {[_selection] call life_fnc_clothing_emshighcommand;};
	case "emstru": {[_selection] call life_fnc_clothing_emstru;};
	case "emsprob": {[_selection] call life_fnc_clothing_emsprob;};
	case "copfbi": {[_selection] call life_fnc_clothing_copfbi;};
	case "attorney": {[_selection] call life_fnc_clothing_attorney;};
	case "marine": {[_selection] call life_fnc_clothing_marine;};
};

if(count _clothes == 0) exitWith {};
{
	_details = [_x select 0] call life_fnc_fetchCfgDetails;
	if(isNil {_x select 1}) then
	{
		_list lbAdd format["%1",(getText(configFile >> (_details select 6) >> (_x select 0) >> "DisplayName"))];
	}
		else
	{
		_list lbAdd format["%1", _x select 1];
	};
	_pic = getText(configFile >> (_details select 6) >> (_x select 0) >> "picture");
	_list lbSetData [(lbSize _list)-1,_x select 0];
	_list lbSetValue [(lbSize _list)-1,_x select 2];
	_list lbSetPicture [(lbSize _list)-1,_pic];
} foreach _clothes;
