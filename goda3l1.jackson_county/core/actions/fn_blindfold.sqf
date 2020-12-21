/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
private["_time"];
player setVariable ["blindfolded",true,true];
removeHeadgear _unit;
removeAllAssignedItems _unit;
player addGoggles "mgsr_headbag_goggles";
_time = 600;
"test" cutText ["", "BLACK", 0.5, true];
_layer1 = "normal" cutText ["You are blindfolded!","PLAIN"]; 
	while {_time > 0} do{
		if(!(player getvariable "blindfolded")) exitWith {hint "You are no longer blindfolded.";	"test" cutFadeout 2; removeGoggles player;player setVariable ["blindfolded",false,true];};	
		uiSleep 1;
		_time = _time - 1;
		if (_time == 0) exitWith {hint "Your blindfold fell off.";	"test" cutFadeout 2; removeGoggles player;player setVariable ["blindfolded",false,true];};	
		if(!alive player) exitWith{"test" cutFadeout 2; removeGoggles player; player setVariable ["blindfolded",false,true];};	
};