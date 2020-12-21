/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (playerside != civilian) exitWith { hint "Only civilians can become a taxi drivers!"; };
if (Life_Working == 1) exitWith { hint "You're already working! Press WINDOWS KEY to leave your current job."; };
if (Life_Taxi == 1) exitWith { hint "You already have a contract with us!"; };
if (cobra_waitjob == 1) exitWith { hint "You cannot get a new job yet!"; };
//
	_meme = "ivory_rs4_taxi";
	_chance = round(random 2);
	if (_chance == 1) then { 
	_meme = "ivory_rs4_taxi";
	} else {
	_meme = "JM_Tuk_Red";
	};
JobType = 5;
Life_Working = 1;
Life_Taxi = 1;
cobra = getUnitLoadout player;
removeUniform player;
removeHeadgear player;
removeVest player;
removeGoggles player;
removeBackpack player;
removeallWeapons player;
removeallAssignedItems player;
player forceAddUniform "EF_M_jkt1_3";
player addHeadgear "A3L_russianhat";
//Add map and shit
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
/*CHECK WHAT JOB CENTRE THE PLAYER IS AT*/
if (player distance (getMarkerPos "JobCentreLakeside2") < 25) then {
_spawn = TaxiSpawn;
_nr = nearestObjects [TaxiSpawn, ["Car","Truck","Motorcycle"], 10];
if (count _nr > 0) exitWith { hint "There is a vehicle on the taxi spawn!"; [] spawn life_fnc_leavejob; uiSleep 1; cobra_waitjob = 0;};
taxispawned = _meme createVehicle (position _spawn);
};
if (player distance (getMarkerPos "JobCentreMorrison") < 25) then {
_spawn = TaxiSpawnMorrison;
_nr = nearestObjects [TaxiSpawnMorrison, ["Car","Truck","Motorcycle"], 10];	
if (count _nr > 0) exitWith { hint "There is a vehicle on the taxi spawn!"; [] spawn life_fnc_leavejob; uiSleep 1; cobra_waitjob = 0;};
taxispawned = _meme createVehicle (position _spawn);
};
if (player distance (getMarkerPos "JobCentreSan") < 25) then {
_spawn = JobCentreSan;
_nr = nearestObjects [JobCentreSan, ["Car","Truck","Motorcycle"], 10];	
if (count _nr > 0) exitWith { hint "There is a vehicle on the taxi spawn!"; [] spawn life_fnc_leavejob; uiSleep 1; cobra_waitjob = 0;};
taxispawned = _meme createVehicle (position _spawn);
};
hintSilent parseText format["<t size='1.25' color='#ff0000'>You have become a taxi driver, your job is to pick people up and drive them to their desired location.</t>"];
uiSleep 6;
hintSilent parseText format["<t size='1.25' color='#ff0000'>REMEMBER: If you do not stick inside of your taxi you run the risk of not being issued a company paycheck<./t>"];
uiSleep 6;
hintSilent parseText format["<t size='1.25' color='#ff0000'>Your belongings have been stored in your locker, to get them back you need to sign off</t>"];
createDialog "RscDisplayTaxiMenu"; 