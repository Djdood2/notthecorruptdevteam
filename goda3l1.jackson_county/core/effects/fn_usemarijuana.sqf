/*
	File: fn_useMarijuana.sqf	
	Edited by: Cobra
	Description:
	Use Marijuana Effect
*/

#include <macro.h>
private["_smoke","_playerdo"];


if (vehicle player != player) then 
{
player playMove "AmovPercMstpSnonWnonDnon_Scared2";
waitUntil{animationState player != "AmovPercMstpSnonWnonDnon_Scared2";};
};


[[0,format["%1 smoked some chapo marijuana.",name player]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 25],false] spawn life_fnc_MP;

closeDialog 0;

"chromAberration" ppEffectEnable true;
player say2d "weed";
hint "I'm blazed.";
uiSleep 3;
hint "It feels like my body is slowly healing.";
"chromAberration" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
enableCamShake true;
_smoke = "SmokeShell" createVehicle position player;
if (vehicle player != player) then
{
	_smoke attachTo [vehicle player, [-0.6,-1,0]];
}
else
{
	_smoke attachTo [player, [0,-0.1,1.5]];
};
//Let's go for 45secs of effetcs
for "_i" from 0 to 155 do
{
    "chromAberration" ppEffectAdjust [random 0.25,random 0.25,true];
    "chromAberration" ppEffectCommit 1;   
    "radialBlur" ppEffectAdjust  [random 0.02,random 0.02,0.15,0.15];
    "radialBlur" ppEffectCommit 1;
    addcamShake[random 3, 1, random 3];
    sleep 1;
};

//Stop effects
"chromAberration" ppEffectAdjust [0,0,true];
"chromAberration" ppEffectCommit 5;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;

//Deactivate ppEffects
"chromAberration" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;