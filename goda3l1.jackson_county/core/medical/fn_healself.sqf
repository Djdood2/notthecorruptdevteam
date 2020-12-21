/*
Function to heal self
*/
private["_display","_curTarget"];

_curTarget = cursorTarget;

if(!life_action_inUse) then {
life_action_inUse = true;

if (vehicle player == player) then 
{
	player switchMove "amovpknlmstpsnonwnondnon_amovpknlmstpsraswlnrdnon";
	[[player,"amovpknlmstpsnonwnondnon_amovpknlmstpsraswlnrdnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
	waitUntil{animationState player != "amovpknlmstpsnonwnondnon_amovpknlmstpsraswlnrdnon";};
};

if( side player == west || side player == civilian ) then {
	life_inv_bandage = life_inv_bandage - 1;
	_experienced = [FFuVsqqZ, "Perk2_1"] call mav_ttm_fnc_hasPerk; 
	_expert = [FFuVsqqZ, "Perk2_1_1"] call mav_ttm_fnc_hasPerk;
	_expert2 = [FFuVsqqZ, "Perk2_1_1_1"] call mav_ttm_fnc_hasPerk;
	player setdamage 0.2;
	if (_experienced) then {
	player setdamage 0.15;	
	};
	if (_expert) then {
	player setdamage 0.1;	
	};
	if (_expert2) then {
	player setdamage 0;	
	};
}
else {
	player setdamage 0;
};

};
life_action_inUse = false;	