/*
Author: Charlie Shanks
*/
playerKills = playerKills + 1;
_killedSide = _this select 1;
if (playerSide == civilian && _killedSide == west) then {
  [] spawn {
    if (isNil "hasKilledCopInProgr") then {hasKilledCopInProgr = false;};
      if (hasKilledCopInProgr) exitWith {copKilledTimer = time + 300;};
        hasKilledCopInProgr = true;
player setVariable ["hasKilledCop",true,true];
copKilledTimer = time + 300;
_pos = getPos player;
waitUntil {copKilledTimer < time || !alive player || player distance _pos > 700};
player setVariable ["hasKilledCop",false,true];
hasKilledCopInProgr = false;
}; };
if (playerSide == independent) exitWith {hint "Please Refrain From Killing Medics!"};
if (playerSide == west) exitWith {["fragwest"] spawn mav_ttm_fnc_addExp;};
if (playerSide == civilian) exitWith {["frag"] spawn mav_ttm_fnc_addExp;};
