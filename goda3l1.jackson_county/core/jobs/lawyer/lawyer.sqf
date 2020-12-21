/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (playerside != civilian) exitWith { hint "Only civilians can become a taxi drivers!"; };
if (Life_Working == 1) exitWith { hint "You're already working! Press WINDOWS KEY to leave your current job."; };
if (Life_Lawyer == 1) exitWith { hint "You already have a contract with us!"; };
if (cobra_waitjob == 1) exitWith { hint "You cannot get a new job yet!"; };
//
JobType = 8;
Life_Working = 1;
Life_Lawyer = 1;
lawyer = getUnitLoadout player;
removeUniform player;
removeHeadgear player;
removeVest player;
removeGoggles player;
removeBackpack player;
removeallWeapons player;
removeallAssignedItems player;
player forceAddUniform "A3L_Suit_Uniform";
//Add map and shit
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
hintSilent parseText format["<t size='1.25' color='#ff0000'>You are now signed on as a lawyer, your job is to help anyone in need of your legal assistance.</t>"];
uiSleep 6;
hintSilent parseText format["<t size='1.25' color='#ff0000'>REMEMBER: If you do not stick inside of the DOC grounds you are at risk of being fired.</t>"];
uiSleep 6;
hintSilent parseText format["<t size='1.25' color='#ff0000'>Your belongings have been stored in your locker, to get them back you need to sign off</t>"];
_count = 12;
while {Life_Lawyer == 1} do {
	uiSleep 300;
	_count = _count - 1;
	if (!alive player) exitWith {  Life_Working = 0;Life_Lawyer = 0; JobType = 0;};
	if (_count == 0) exitWith { ["<t size='3.2' color='#04EE4A'>Your job contract expired! Feel free to sign up again.</t>"] call life_fnc_alert; JobType = 0; Life_Lawyer = 0; Life_Working = 0;player setUnitLoadout lawyer;};	
		if (player distance getMarkerpos "jail_marker" < 500) then {["<t size='3.2' color='#04EE4A'>A paycheck of $900 has arrived in your bank, head down to your local bank to collect it.</t>"] call life_fnc_alert;yzBSEGppqZnJrfWE = yzBSEGppqZnJrfWE + 9; };
};
