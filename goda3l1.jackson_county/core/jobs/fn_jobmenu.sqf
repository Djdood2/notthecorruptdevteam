/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
private ["_index"];

createDialog "Life_Job_Menu";
waitUntil {!(isNull (findDisplay 2720))};


{
	_index = lbAdd [ 1102, ( _x select 0 ) ]; 
	lbSetData [ 1102, _index, ( _x select 1 ) ];  
} forEach [
	["Mining Job", "execvm'core\jobs\miner\miner.sqf';"],
	["Woodlogging Job", "execvm'core\jobs\woodlogger\logger.sqf';"],
	["Taxi Driver", "execvm'core\jobs\taxi\taxi.sqf';"],
	["McDonalds Worker", "execvm'core\jobs\mcdonalds\mcdonalds.sqf';"],
	["Tow Truck Driver", "execvm'core\jobs\towtruck\TowTruck.sqf';"]
];

lbSetCurSel [ 1102, 0 ];





///////	["Repairman", "execvm'core\jobs\repairman\repairman.sqf';"],
	//
	//["Deliveryman", "execvm'core\jobs\delivery\Delivery.sqf';"]