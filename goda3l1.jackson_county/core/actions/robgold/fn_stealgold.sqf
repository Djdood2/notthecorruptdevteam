private ["_cops"];
_cops = (west countSide playableUnits);
if (playerside != civilian) exitWith {}; //just in fucking case
if(_cops < 5) exitWith { hint "You need atleast 5 cops online to steal gold..."; }; 
if ( cgbankvault1 animationPhase "d_o_Anim" != 1 ) exitWith {["<t size='3.2' color='#E50000'>The vault door is closed, you cant grab the gold right now...</t>"] call life_fnc_alerttwo;};
[cursorObject] spawn life_fnc_openInventory; 