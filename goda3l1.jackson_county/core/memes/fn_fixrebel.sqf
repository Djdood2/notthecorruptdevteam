/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (playerside != civilian) exitWith { 
["<t size='3.2' color='#E50000'>Only civilians can fix the rebel outpost weapons cache!</t>"] call life_fnc_alerttwo;
};
if (cobra_repairing == 1) exitWith {  
["<t size='3.2' color='#E50000'>You are already repairing the rebel outpost weapons cache!</t>"] call life_fnc_alerttwo;
};
if !(cobrarebel getVariable "raided") exitwith {
["<t size='3.2' color='#E50000'>This cache has not been robbed recently!</t>"] call life_fnc_alerttwo;
};
if((player getVariable "restrained")) exitWith {}; 
if((player getVariable "tied")) exitWith {};
life_interrupted = false;
cobra_repairing = 1;
cobrarebel setvariable ["raiding",true,true];
life_action_inUse = true;
_rebel = "Rebel Weapons Cache #1";
_upp = format[localize "STR_NOTF_Repairing",_rebel];
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0;
while{true} do
{
uiSleep 0.15;
if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
};
if (player distance cobrarebel > 8) exitwith {cobra_repairing = 0; cobrarebel setvariable ["raiding",false,true];};
_cP = _cP + 0.002;
_progress progressSetPosition _cP;
_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
if(_cP >= 1) exitWith {cobra_repairing = 0;};
if(!alive player) exitWith {cobra_repairing = 0; cobrarebel setvariable ["raiding",false,true];};
if(life_interrupted) exitWith {cobra_repairing = 0; cobrarebel setvariable ["raiding",false,true];};
};
life_action_inUse = false;
5 cutText ["","PLAIN"];
cobra_repairing = 0;
if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};

cobrarebel setvariable ["raiding",false,true];
cobrarebel setvariable ["raided",false,true];
_randtotal = "dicks";
_finalvalue = round (random 1500);
[[1,format["LAKESIDE NEWS: The rebels have claimed back the rebel weapons cache.",_randtotal]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[1,format["LAKESIDE NEWS: The rebels have claimed back the weapons cache, the rebels appear to have transferred money to everyone's bank account as a thankyou for the support.",_randtotal]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
[[0,format["LAKESIDE NEWS: The rebels have claimed back the rebel weapons cache.",_randtotal]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
[[0,format["LAKESIDE NEWS: The rebels have claimed back the weapons cache, the rebels appear to have transferred money to everyone's bank account as a thankyou for the support.",_randtotal]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
[_finalvalue] remoteExecCall ["life_fnc_rewardcivs",civilian];
memes = 1;