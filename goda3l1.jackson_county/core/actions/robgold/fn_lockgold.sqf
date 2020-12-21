/*
lockvault

cgbankvault is the variable name
*/

if (side player == west && cgbankvault1 animationPhase "d_l_Anim" == 1) then {
	hint "You are locking the bank vault.";
	uiSleep 5;
	cgbankvault1 animate ["d_l_Anim",0];
	cgbankvault1 setVariable["hacked",false,true];
	hint "Vault locked.";
	_loot = getArray (missionConfigFile >> "CobraConfig" >> "Gold" >> "data");
	suitcase1 setVariable ["Trunk",[_loot,5000],true];
} else {
	hint "You dont have the keys to this vault.";
};