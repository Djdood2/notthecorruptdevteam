/*
close vault

cgbankvault is the variable name
*/

if ( cgbankvault animationPhase "d_o_Anim" == 1 ) then {
	hint "You are closing the vault.";
	uiSleep 5;
	cgbankvault animate ["d_o_Anim",0];
} else {
	hint "The vault appears to be locked/closed already..";	
};