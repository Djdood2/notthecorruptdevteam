/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
if (playerside != civilian) exitWith { hint "Only civilians can become a deliveryman!"; };
if (Life_Working == 1) exitWith { hint "You're already working! Press WINDOWS KEY to leave your current job."; };
if (Life_Delivery == 1) exitWith { hint "You already have a contract with us!"; };
if (cobra_waitjob == 1) exitWith { hint "You cannot get a new job yet!"; };
JobType = 1;
Life_Working = 1;
Life_Delivery = 1;
hintSilent parseText format["<t size='1.25' color='#ff0000'>You have became a deliveryman, you have been handed a package which needs to be delivered to the area marked on your GPS.</t>"];
[true,"package",1] call life_fnc_alrphandleinventory;
_points = ["DeliveryPos1","DeliveryPos2","DeliveryPos3","DeliveryPos4","DeliveryPos5","DeliveryPos6","DeliveryPos7","DeliveryPosNew"];

/*CHECK WHAT JOB CENTRE THE PLAYER IS AT*/
if (player distance (getMarkerPos "JobCentreMorrison") > 25) then {
_points = ["DeliveryPos2","DeliveryPos4","DeliveryPos5","DeliveryPosNew"];
};
if (player distance (getMarkerPos "JobCentreSan") > 25) then {
_points = ["DeliveryPos1","DeliveryPos2","DeliveryPos3","DeliveryPos4","DeliveryPos5","DeliveryPos6","DeliveryPos7"];
};
cutText ["Searching for a delivery location.... This shouldn't take too long.","PLAIN",2];
_point = _points call bis_fnc_selectrandom; 
_marker = createMarkerLocal ["DeliveryPoint",getMarkerPos _point];
_marker setMarkerColorLocal "ColorYellow";
_marker setMarkerTypeLocal "mil_dot";
_marker setMarkerTextLocal "Delivery Mission!";
cutText ["Location found! It has been marked on your GPS.","PLAIN",2];
while {Life_Delivery == 1} do {
if (!alive player) exitWith {  Life_Working = 0; Life_Delivery = 0; JobType = 0; DeleteMarker "DeliveryPoint"; };
if (player distance (getMarkerPos _point) < 15) then {
	["<t size='3.2' color='#04EE4A'>You delivered the package.</t>"] call life_fnc_alert;
	_price = 2900 + round(random 1100);
	b2UuDWVw9NeDh45d = b2UuDWVw9NeDh45d + _price;
	["delivery"] spawn mav_ttm_fnc_addExp;;
	["<t size='3.2' color='#04EE4A'>You delivered the package.</t>"] call life_fnc_alert;
	[false,"package",1] call life_fnc_alrphandleinventory;
	DeleteMarker "DeliveryPoint";
	_meme = 0;
	while {_meme == 0} do {
		_point = _points call bis_fnc_selectrandom; 
		_marker = createMarkerLocal ["DeliveryPoint",getMarkerPos _point];
		if (player distance (getMarkerPos _point) > 100) then {
			_meme = 1;
			cutText ["Location found! It has been marked on your GPS.","PLAIN",2];
			_marker setMarkerColorLocal "ColorYellow";
			_marker setMarkerTypeLocal "mil_dot";
			_marker setMarkerTextLocal "Delivery Mission!";
			[true,"package",1] call life_fnc_alrphandleinventory;
			} else {
			cutText ["Searching for a delivery location.... This shouldn't take too long.","PLAIN",2];
			DeleteMarker "DeliveryPoint";
		   };
		};
	};
	
	uiSleep 0.5;
};
