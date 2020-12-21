/*
close vault

cgbankvault is the variable name
*/

if (localbank animationPhase "d_o_Anim" == 1 ) then {
	hint "You are closing the vault.";
	uiSleep 5;
	localbank animate ["d_o_Anim",0];
} else {
	hint "The vault appears to be locked/closed already..";	
};