/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (playerside != civilian) exitWith { hint "Only civilians can become a McDonalds worker!"; };
if (Life_Working == 1) exitWith { hint "You're already working! Press WINDOWS KEY to leave your current job."; };
if (Life_McDonalds == 1) exitWith { hint "You already have a contract with us!"; };
if (cobra_waitjob == 1) exitWith { hint "You cannot get a new job yet!"; };
cobra_waitleave = 1;
Life_Working = 1;
Life_McDonalds = 1;
JobType = 2;
cobra_old = getUnitLoadout player;
removeUniform player;
removeHeadgear player;
removeVest player;
removeGoggles player;
removeBackpack player;
removeallWeapons player;
removeallAssignedItems player;
player addUniform "JM_Mcd1";
//Add map and shit
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player setPos getMarkerPos "McDonalds";


hintSilent parseText format["<t size='1.25' color='#ff0000'>You have signed up for a contract at McDonalds.</t>"];
uiSleep 3;
hintSilent parseText format["<t size='1.25' color='#ff0000'>REMEMBER: If you don't stick around McDonalds while you have this contract you run the risk of being fired!</t>"];
uiSleep 4;
hintSilent parseText format["<t size='1.25' color='#ff0000'>Your belongings have been stored in your locker, to get them back you need to sign off (WINDOWS KEY)</t>"];
cobra_waitleave = 0;
_count = 8;
while {Life_McDonalds == 1} do {
if (!alive player) exitWith {  JobType = 0; Life_Working = 0;Life_McDonalds = 0; };
if (player distance (getMarkerPos "McDonalds") > 95) then {life_workerwarned = life_workerwarned + 1; hintSilent parseText format["<t size='1.25' color='#ff0000'>You have been issued a warning for not being in McDonalds whilst at work!</t>"];};
if (life_workerwarned == 3) exitWith { JobType = 0; hintSilent parseText format["<t size='1.25' color='#ff0000'>You have been sacked for not being at work when you're supposed to!</t>"];Life_Working = 0;Life_McDonalds = 0;titleText["Here are all of your belongings.","PLAIN"];player setUnitLoadout cobra_old;};
uiSleep 150; //6*150 = 15 mins
if (life_McDonalds == 0) exitWith {};
_count = _count - 1; //reduce the counter by 1
hintSilent parseText format["<t size='1.25' color='#ff0000'>A paycheck of $400 has arrived in your bank, head down to your local bank to collect it.</t>"];
yzBSEGppqZnJrfWE = yzBSEGppqZnJrfWE + 4;
if (_count == 0) exitWith { hintSilent parseText format["<t size='1.25' color='#ff0000'>Your job contract has expired. Feel free to sign up to work at McDonalds again!</t>"];JobType = 0;Life_Working = 0;Life_McDonalds = 0;player setUnitLoadout cobra_old;};
uiSleep 0.5;
};