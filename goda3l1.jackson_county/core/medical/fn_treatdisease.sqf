/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
_memes = player getVariable ["diseaseon", 1];
_memes1 = player getVariable ["diseaseon", 2];
_memes2 = player getVariable ["diseaseon", 3];
if (_memes) then {
	_disease = "Minor Flu";
};
if (_memes1) then {
	_disease = "Major Flu";
};
if (_memes2) then {
	_disease = "Major Infection";
};
if (player distance getMarkerPos "medic_spawn_hospital" > 50 && player distance getMarkerPos "marker_14" > 50) exitWith{hint "You need to be within the grounds of a hospital to treat these wounds.";};
if (life_inv_painkiller < 1 && !_memes2) exitWith { hint "You do not have any medication to treat the person's flu symptoms.";};
if (life_inv_bandage <1 && )

private["_display","_curTarget"];

if(!life_action_inUse) then {
life_action_inUse = true;

if (vehicle player == player) then 
{
	player switchMove "amovpknlmstpsraswlnrdnon_amovpknlmstpsnonwnondnon";
	[[player,"amovpknlmstpsraswlnrdnon_amovpknlmstpsnonwnondnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
	waitUntil{animationState player != "amovpknlmstpsraswlnrdnon_amovpknlmstpsnonwnondnon";};
};
if(isPlayer player) then {
	player setvariable ["woundedon",false,true];
}
else {
	_blah = "Target moved, procedure failed.";
	hint format["%1", _blah];
};


};
life_action_inUse = false;	