// petty cash piles
if ( cgbankvault animationPhase "d_o_Anim" != 1 ) exitWith {
	["<t size='3.2' color='#E50000'>The vault door is closed, you cant grab cash right now...</t>"] call life_fnc_alert;
};
if (pstash2 getVariable "robbed") exitWith { hint "There is no petty cash left."; };
pstash2 setVariable ["robbed", true, true];

_funds = 15500 + round(random 22000); 

hint format ["You picked up %1 in petty cash..",_funds];

aQ3CGZRg3W9tGxzs = aQ3CGZRg3W9tGxzs + _funds;
["pettycash"] spawn mav_ttm_fnc_addExp;