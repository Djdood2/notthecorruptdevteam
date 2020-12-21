/*
lockvault

cgbankvault is the variable name
*/

if (side player == west && evidencelocker animationPhase "d_l_Anim" == 1) then {
	hint "You are locking the bank vault.";
	uiSleep 5;
	evidencelocker animate ["d_l_Anim",0];
	evidencelocker setVariable["hacked",false,true];
	hint "Vault locked.";
} else {
	hint "You dont have the keys to this vault.";
};