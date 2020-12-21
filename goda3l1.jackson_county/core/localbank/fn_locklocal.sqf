/*
lockvault

cgbankvault is the variable name
*/

if (side player == west && localbank animationPhase "d_l_Anim" == 1) then {
	hint "You are locking the bank vault.";
	uiSleep 5;
	localbank animate ["d_l_Anim",0];
	localbank setVariable["hacked",false,true];
	localbankstash1 setVariable ["robbed", false, true];
	localbankstash2 setVariable ["robbed", false, true];
	localbankstash3 setVariable ["robbed", false, true];
	localbankstash4 setVariable ["robbed", false, true];
	localbankstash5 setVariable ["robbed", false, true];
	localbankstash6 setVariable ["robbed", false, true];
	localbankstashpetty setVariable ["robbed", false, true];
	hint "Vault locked.";
} else {
	hint "You dont have the keys to this vault.";
};