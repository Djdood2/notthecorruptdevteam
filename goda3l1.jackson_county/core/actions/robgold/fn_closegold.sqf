/*
close vault

cgbankvault is the variable name
*/

if ( cgbankvault1 animationPhase "d_o_Anim" == 1 ) then {
	hint "You are closing the vault.";
	uiSleep 5;
	cgbankvault1 animate ["d_o_Anim",0];
} else {
	hint "The vault appears to be locked/closed already..";	
};