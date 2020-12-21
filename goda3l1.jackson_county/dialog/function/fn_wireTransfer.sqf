 #include "..\..\script_macros.hpp"
/*
    File: fn_wireTransfer.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Initiates the wire-transfer
*/
params [
    ["_value",0,[0]],
    ["_from","",[""]]
];

if (_value isEqualTo 0 || _from isEqualTo "" || _from isEqualTo profileName) exitWith {}; //No
b2UuDWVw9NeDh45d = b2UuDWVw9NeDh45d + _value;
[1] call SOCK_fnc_updatePartial;
hint format [localize "STR_ATM_SentMoneySuccess",_from,[_value] call life_fnc_numberText];