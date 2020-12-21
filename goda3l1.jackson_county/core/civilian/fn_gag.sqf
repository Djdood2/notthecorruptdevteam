/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
private["_time"];
player setVariable ["gagged",true,true];
player setVariable ["tf_voiceVolume", 0, true];
_time = 300;
_layer1 = "normal" cutText ["You are gagged!","PLAIN"]; 
player setVariable ["tf_voiceVolume", 0.4, true];
	while {_time > 0} do{
		if(!(player getvariable "gagged")) exitWith {hint "You are no longer gagged."; player setVariable ["gagged",false,true]; player setVariable ["tf_voiceVolume", 1, true];};	
		uiSleep 1;
		_time = _time - 1;
		if (_time == 0) exitWith {hint "Your gag fell out."; player setVariable ["gagged",false,true]; player setVariable ["tf_voiceVolume", 1, true];};	
		if(!alive player) exitWith{player setVariable ["gagged",false,true]; player setVariable ["tf_voiceVolume", 1, true];};	
};