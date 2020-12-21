/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "rpd": {0};
	case "supreme": {0};
	case "pusha": {0};
	case "ss": {0};
	case "wolfe": {0};
	case "supreme": {0};
	case "tws": {0};
	///
	case "deptcommand": {0};
	case "adminb": {0};
	case "attorney": {0};
	///
	case "corleones": {0};
	//end of new gangs
	case "driver": {200}; //Drivers License cost
	case "boat": {1500}; //Boating license cost
	case "pilot": {15000}; //Pilot/air license cost
	case "gun": {1800}; //Firearm/gun license cost
	case "dive": {400}; //Diving license cost
	case "cair": {1500}; //Cop Pilot License cost
	case "heroin": {2500}; //Heroin processing license cost
	case "marijuana": {11500}; //Marijuana processing license cost
	case "medmarijuana": {150}; //Medical Marijuana processing license cost
	case "gang": {1000}; //Gang license cost
	case "rebel": {21000}; //Rebel license cost
	case "blackmarket": {45000}; //Rebel license cost
	case "truck": {5000}; //Truck license cost
	case "diamond": {3500};
	case "cocaine": {15000};
	case "sand": {1450};
	case "mair": {1500};
	case "home": {9500};
	case "secserv": {0};
	case "adminb": {0};
	case "rifle": {3800};
	case "forestry": {3500};
	case "uranium": {5000};
	case "insurance": {4500};
	case "meth": {15000};
	case "coke": {15000};
	//Whitelisted Gangs
	case "chaos": {0};
	case "sbh": {0};
	case "corleone": {0};
	case "spartan": {0};
	case "sierra": {0};
	case "CCS": {0};
	case "mafia": {0};
	case "TFA": {0};
	case "russia": {0};
	//cop
	case "cid": {0};
	case "advvehicle": {0};
	case "sert": {0};
	case "swatcommand": {0};
	case "mandigo": {0};
	case "marshals": {0};
};
