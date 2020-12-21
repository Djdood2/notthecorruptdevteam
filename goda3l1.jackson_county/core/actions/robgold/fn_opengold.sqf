/*
open vault

cgbankvault is the variable name
*/

if (cgbankvault1 animationPhase "d_o_Anim" == 0 && cgbankvault1 animationPhase "d_l_Anim" == 1) then {
	hint "Vault Opening Starting.";
	uiSleep 5;
	hint "Vault Opening Engaged.";
	cgbankvault1 animate ["d_o_Anim",1];
} else {
	hint "The vault appears to be locked/open already..";	
};