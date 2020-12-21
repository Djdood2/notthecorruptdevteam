/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/

//checks
if (playerside != civilian) exitWith { hint "Only civilians can become a tow truck driver!"; };
if (Life_Working == 1) exitWith { hint "You're already working! Press WINDOWS KEY to leave your current job."; };
if (Life_TowTruck == 1) exitWith { hint "You're already a tow truck driver!"; };
if (cobra_waitjob == 1) exitWith { hint "You cannot get a new job yet!"; };
//set variables
Life_Working = 1;
Life_TowTruck = 1;
JobType = 6;
cobra_towtruckold = getUnitLoadout player;
removeUniform player;
removeHeadgear player;
removeVest player;
removeGoggles player;
removeBackpack player;
removeallWeapons player;
removeallAssignedItems player;
player addUniform "A3L_Worker_Outfit";
player addBackpack "cg_invisbp";
//Add map and shit
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItemtoBackpack "ToolKit";
hintSilent parseText format["<t size='1.25' color='#ff0000'>You have became a tow truck driver, a tow truck will be delivered to the impound lot for you to use. Once you're inside your tow truck you are able to tow vehicles to the impound lot and deposit them for cash.</t>"];
/*CHECK WHAT JOB CENTRE THE PLAYER IS AT*/
if (player distance (getMarkerPos "JobCentreLakeside2") < 15) then {
_spawn = TaxiSpawn;
_nr = nearestObjects [TaxiSpawn, ["Car","Truck","Motorcycle"], 10];
if (count _nr > 0) exitWith { hint "There is a vehicle on the tow truck spawn!"; [] spawn life_fnc_leavejob; uiSleep 1; cobra_waitjob = 0;};
vehspawned = "red_towtruck_08_tow1" createVehicle (position _spawn);
};
if (player distance (getMarkerPos "JobCentreMorrison") < 25) then {
_spawn = TaxiSpawnMorrison;
_nr = nearestObjects [TaxiSpawnMorrison, ["Car","Truck","Motorcycle"], 10];	
if (count _nr > 0) exitWith { hint "There is a vehicle on the tow truck spawn!"; [] spawn life_fnc_leavejob; uiSleep 1; cobra_waitjob = 0;};
vehspawned = "red_towtruck_08_tow1" createVehicle (position _spawn);
};
if (player distance (getMarkerPos "JobCentreSan") < 25) then {
_spawn = JobCentreSan;
_nr = nearestObjects [JobCentreSan, ["Car","Truck","Motorcycle"], 10];	
if (count _nr > 0) exitWith { hint "There is a vehicle on the tow truck spawn!"; [] spawn life_fnc_leavejob; uiSleep 1; cobra_waitjob = 0;};
vehspawned = "red_towtruck_08_tow1" createVehicle (position _spawn);
};
hintSilent parseText format["<t size='1.25' color='#ff0000'>Your tow truck has been delivered succesfully. Remember: You will get an extra payment every 5 minutes until your contact expires. Your contract will last 30 minutes.</t>"];
//setup while loop
_counter = 6;
titleText["Your belongings have been stored in your locker, to get them back you need to sign off (WINDOWS KEY)","PLAIN"];
while {Life_TowTruck == 1} do {
uiSleep 300; //6*300 = 30 mins
if (!alive player) exitWith {  Life_Working = 0;Life_TowTruck = 0; deleteVehicle vehspawned; JobType = 0; };
if (Life_TowTruck == 0) exitWith {};
["<t size='3.2' color='#04EE4A'>A paycheck of $1200 has arrived in your bank, head down to your local bank to collect it.</t>"] call life_fnc_alert;
b2UuDWVw9NeDh45d = b2UuDWVw9NeDh45d + 12;
_counter = _counter - 1; //reduce the counter by 1
if (_counter == 0) exitWith { ["<t size='3.2' color='#04EE4A'>Your job contract has expired Head down to your local job centre to sign up again!</t>"] call life_fnc_alert;
Life_Working = 0;
Life_TowTruck = 0;
JobType = 0;
deleteVehicle vehspawned; //delete the tow truck
player setUnitLoadout cobra_towtruckold;
 };
};