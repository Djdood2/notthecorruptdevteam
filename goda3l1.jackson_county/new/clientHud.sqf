disableSerialization;
while {true} do {
  ("ANclientHud" call BIS_fnc_rscLayer) cutRsc ["an_hud","PLAIN"];
  _hud = uiNamespace getVariable "an_hud";
  _control = _hud displayCtrl 1000;
  if (isNil {tax getVariable "threatlevel"}) then { tax setVariable ["threatlevel", 1, true];;diag_log "nice meme.";};
  _threat = "Green";
  _threatlevel = tax getVariable "threatlevel";
  if (_threatlevel == 2) then {_threat = "Amber";};
  if (_threatlevel == 3) then {_threat = "Red";};
  if (_threatlevel == 4) then {_threat = "Martial Law";};
  _text = format ["CASH: $%3 | BANK: $%4 | UPTIME: %1 | THREAT LEVEL: %2", [serverTime,"HH:MM:SS"] call BIS_fnc_secondsToString, _threat, [aQ3CGZRg3W9tGxzs] call life_fnc_numberText,[b2UuDWVw9NeDh45d] call   
    life_fnc_numberText];
  _control ctrlSetStructuredText parseText _text;
  uiSleep 1;
};