/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
closeDialog 0;
if(vehicle player != player) exitWith {["<t size='3.2' color='#04EE4A'>You cannot do that while inside of a vehicle!</t>"] call life_fnc_alerttwo;};
if (cobra_waitleave == 1) exitWith { titleText["You cannot leave your job yet!","PLAIN"]; };
Life_Working = 0;
JobType = 0;
if (Life_Lawyer == 1) exitWith {
Life_Lawyer = 0;
titleText["You signed off as a lawyer.","PLAIN"];
uiSleep 1;
player setUnitLoadout lawyer;
uiSleep 2;
titleText["Here are all of your belongings, have fun!","PLAIN"];
cobra_waitjob = 1;
uiSleep 75;
cobra_waitjob = 0;
};
if (Life_TowTruck == 1) exitWith {
Life_TowTruck = 0;
titleText["You left your tow trucking job.","PLAIN"];
deleteVehicle vehspawned;
player setUnitLoadout cobra_towtruckold;
uiSleep 2;
titleText["Here are all of your belongings, have fun!","PLAIN"];
cobra_waitjob = 1;
uiSleep 120;
cobra_waitjob = 0;
};
if (Life_Delivery == 1) exitWith {
Life_Delivery = 0;
titleText["You left your deliveryman job.","PLAIN"];
[false,"package",1] call life_fnc_alrphandleinventory;
DeleteMarker "DeliveryPoint";
cobra_waitjob = 1;
uiSleep 120;
cobra_waitjob = 0;
};
if (Life_McDonalds == 1) exitWith {
Life_McDonalds = 0;
titleText["You left your job at McDonalds.","PLAIN"];
player setUnitLoadout cobra_old;
uiSleep 2;
titleText["Here are all of your belongings, have fun!","PLAIN"];
cobra_waitjob = 1;
uiSleep 120;
cobra_waitjob = 0;
};
if (Life_Taxi == 1) exitWith {
if(vehicle player != player) exitWith {["<t size='3.2' color='#04EE4A'>You cannot do that while inside of a vehicle!</t>"] call life_fnc_alerttwo;};
Life_Taxi = 0;
titleText["You left your job as a taxi driver.","PLAIN"];
uiSleep 2;
player setUnitLoadout cobra;
titleText["Your taxi will be sent back to the Taxi office in 20 seconds...","PLAIN"];
uiSleep 20;
deleteVehicle taxispawned;
cobra_waitjob = 1;
uiSleep 8;
uiSleep 120;
cobra_waitjob = 0;
};
if (Life_Repairman == 1) exitWith {
Life_Repairman = 0;
titleText["You left your job as a repairman.","PLAIN"];
uiSleep 2;
player setUnitLoadout cobra_repairmanold;
cobra_waitjob = 1;
uiSleep 8;
uiSleep 60;
cobra_waitjob = 0;
};
if (Life_Miner == 1) exitWith {
Life_Miner = 0;
titleText["You left your job as a miner.","PLAIN"];
[false,"pickaxe",1] call life_fnc_alrphandleinventory;
uiSleep 120;
cobra_waitjob = 0;
};
if (Life_WoodLogger == 1) exitWith {
Life_WoodLogger = 0;
cobra_waitjob = 1;
titleText["You left your job as a wood logger.","PLAIN"];
[false,"axe",1] call life_fnc_alrphandleinventory;
uiSleep 120;
cobra_waitjob = 0;
};