/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (Life_Working == 0) exitWith {}; //not working as a tow truck or taxi driver

//deletes job vehicles
if (Life_TowTruck == 1) exitWith {
deleteVehicle vehspawned;
};
if (Life_Taxi == 1) exitWith {
deleteVehicle taxispawned;
};