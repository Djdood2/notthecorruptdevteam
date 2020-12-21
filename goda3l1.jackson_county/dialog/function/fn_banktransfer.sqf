/*
	File: fn_bankTransfer.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Figure it out again.
*/
private["_val","_unit","_tax","_taxrate","_divide"];
_val = parseNumber(ctrlText 2702);
_unit = call compile format["%1",(lbData[2703,(lbCurSel 2703)])];
if(isNull _unit) exitWith {};
if((lbCurSel 2703) == -1) exitWith {hint localize "STR_ATM_NoneSelected"};
if(isNil "_unit") exitWith {hint localize "STR_ATM_DoesntExist"};
if(_val > 999999) exitWith {hint localize "STR_ATM_TransferMax";};
if(_val < 0) exitwith {};
if(!([str(_val)] call life_fnc_isnumeric)) exitWith {hint localize "STR_ATM_notnumeric"};
if(_val > b2UuDWVw9NeDh45d) exitWith {hint localize "STR_ATM_NotEnough"};
if (isNil {tax getVariable "taxrate"}) then { tax setVariable ["taxrate", 5, true];;diag_log "Set 5% taxation.. Wasn't setup yet."; };
_taxrate = tax getVariable "taxrate";  //Gets tax rate
_divide = _taxrate/100; //Divides curent tax rate by 100
_tax = _val * _divide; //Multiply price by divided amount

if((_val + _tax) > b2UuDWVw9NeDh45d) exitWith {hint format[localize "STR_ATM_SentMoneyFail",_val,_tax]};
if (player distance (getMarkerPos "reb_v_1_1") < 150 && cobrarebel getVariable "raided") exitWith {
	hint "This ATM is not functioning correctly. You need to fix the rebel cache before you can use it.";
	uiSleep 4;
	hint "The weapons crate will be marked on your GPS for a short period of time.";
	_marker = createMarkerLocal ["DeliveryPoint",getPos cobrarebel];
	_marker setMarkerColorLocal "ColorRed";
	_marker setMarkerTypeLocal "mil_dot";
	_marker setMarkerTextLocal ">>Rebel Weapons Crate<<";
	uiSleep 15;
	deleteMarker "DeliveryPoint";
};
b2UuDWVw9NeDh45d = b2UuDWVw9NeDh45d - (_val + _tax);

//[[_val,profileName],"dwwdfwqffqwclientMemeTransferzjwdji",_unit,false] spawn life_fnc_MP;
 [_val,profileName] remoteExecCall ["life_fnc_wireTransfer",_unit];
[] call life_fnc_atmMenu;
hint format[localize "STR_ATM_SentMoneySuccess",[_val] call life_fnc_numberText,_unit getVariable["realname",name _unit],[_tax] call life_fnc_numberText];
[1] call SOCK_fnc_updatePartial;
closeDialog 1;