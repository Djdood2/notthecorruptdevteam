/*
lockvault

cgbankvault is the variable name
*/

if (side player == west && cgbankvault animationPhase "d_l_Anim" == 1) then {
	hint "You are locking the bank vault.";
	uiSleep 5;
	cgbankvault animate ["d_l_Anim",0];
	cgbankvault setVariable["hacked",false,true];
	pstash1 setVariable ["robbed", false, true];
	pstash2 setVariable ["robbed", true, true];
	stash1 setVariable ["robbed", false, true];
	stash2 setVariable ["robbed", false, true];
	stash3 setVariable ["robbed", false, true];
	stash4 setVariable ["robbed", false, true];
	stash5 setVariable ["robbed", false, true];
	stash6 setVariable ["robbed", false, true];
	stash7 setVariable ["robbed", false, true];
	stash9 setVariable ["robbed", false, true];
	hint "Vault locked.";
} else {
	hint "You dont have the keys to this vault.";
};