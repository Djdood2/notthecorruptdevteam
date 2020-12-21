/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

//Customize your settings, to fit your server setup!
class Maverick_SpeedCameras {

    //Define the possible locations for your speed cameras.
    //position -> Get the position via: diag_log(getPosATL player) -> replace the [] with {}
    //direction -> Get the position via: diag_log((getDir player) - 90)
    //speedlimit -> Choose any value you like. In a zone where people should drive 50, make set it to 55 or 60, to catch those speeders!
	SpeedCameras[] = {
	  //{{<position>}, <direction>, <speedlimit>},
        {{8523.16,7115.01,0.00143909}, 139.207, 140}, //Lakeside Entrance
		{{8111.17,6369.39,0.00143909}, 257.117, 130}, //Lakeside Entrance
        {{8116.01,6383.1,0.00143909}, 83.0013, 130}, //Lakeside Entrance
		{{5323.46,3128.88,0.00144958}, -66.031, 135}, //Morrison Entrance
		{{5058.02,2660.65,0.001441}, -28.8522, 135}, //Morrison Job Centre
		{{5069.53,2652.81,0.00143909}, 152.838, 135}, //Morrison Job Centre
		{{6367.65,4527.7,0.00126266}, 268.382, 90}, //Avimore Bridge
		{{6329.88,4602.18,0.00138855}, 90.4818, 90}, //Avimore Bridge
		{{5890.12,8235.2,0.00143433}, 205.861, 140}, //Woodhurst
		{{5882.22,8246.88,0.00149536}, 13.2694, 140}, //Woodhurst
        {{6773.28,4767.33,0.00143814}, 27.9002, 110}, //Bridge
		{{6777.17,4753.55,0.00143814}, 209.063, 110}, //Bridge
		{{8391.94,5312.17,0.00143862}, -10.5912, 110}, //Springfield
		{{8399.24,5300.98,0.00143862}, 163.423, 110}, //Springfield
		{{4175.4,2147.24,0.0014801}, 5.31824, 130},
		{{4993.06,1282.58,0.00149298}, 266.624, 110} //San Cris
	};
	
	//Define the radius in meter in front of the speed camera where it should be active. 25 Works well with default arma roads.
	Radius = 30;
	
	SideWhitelist[] = {
		//Side name to lower case!
		"west",//Prevent Police officers from triggering the speed camera
		"guer" //Prevent medics from triggering the speed camera
	};
	
    //Shall the user get its driver licenses revoked?
	RemoveLicenses[] = {
		//{ <License name to display in the hint 'msgRemoveLicense'>, <license_variable_name>, <how fast over the limit does he need to drive to get the license removed e.g 10>}
		{ "driver license" , "license_civ_driver", 45 },     //Remove the driver license if he was diriving faster than allowed by at least 1km/h
		{ "trucker license" , "license_civ_trucking", 45 }, //Remove the trucker license if he was diriving faster than allowed by at least 25km/h
	};

    //Shall the player be added to the wanted list with a speeding entry?
    AddPlayerToWanted      = 0;   				   // 0 = No | 1 = yes
	WantedCase			   = "4"; 				   //The number/numbers+charaters that describe the crime you want the player to be added for
	WantedFunction		   = "life_fnc_wantedAdd"; //Adjust if you use any other wanted add function name
	
    //Let the player pay a fine from his bank account
    SpeedingFee            = 22;			 // 0 = No fine payed | Any value over 0 $ will be then subtracted from the bank account
    EnableFactor           = 1;			 	 // 0 = No | 1 = yes -> SpeedingFee * Amount of speed the player was going to fast = 500$ * 24kmh = 12000$
	BankVariable		   = "b2UuDWVw9NeDh45d"; //Adjust your bank account variable
	
	class localization {
	
		//Define the messages, which will be shown to the player, when he was driving too fast
		msgSpeedCamera		   = "Speeding Fine";
		msgInfo                = "You drove past the speed camera %1km/h too fast. This was exceeding the speed limit!";
		msgRemoveLicense 	   = "Your %1 has been revoked!";
		msgWantedAdd  		   = "A wanted record about you has been created!";
		msgSpeedingFee         = "You have been fined %1$ for this offence!";
	};
};