/*
open vault

cgbankvault is the variable name
*/

if (localbank animationPhase "d_o_Anim" == 0 && localbank animationPhase "d_l_Anim" == 1) then {
	hint "Vault Opening Starting.";
	uiSleep 5;
	hint "Vault Opening Engaged.";
	localbank animate ["d_o_Anim",1];
} else {
	hint "The vault appears to be locked/open already..";	
};