#include <macro.h>

if(life_std == 1) exitWith 
{ 
hint "You are already ready for sex.."; 
};

life_std = 1;
[[0,format["%1 slips on a silky, chocolate flavoured condom.",name player]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 50],false] spawn life_fnc_MP;
hint "You slap on a lovely, smooth condom that smells abit like chocolate. Lovely!";
player playMove "AmovPercMstpSnonWnonDnon_Scared2";
sleep 30;
if(life_std == 0) exitWith {};
sleep 570;
hint "Your condom is no longer safe to use";
life_std = 0;