/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
_entered = ctrltext 1400;
_Characters = toArray (_entered);
_new = toString (_Characters);
if (count _Characters > 20) exitWith { hint "That name is too long... Please try again."; closeDialog 36691; createDialog 'GangName'; };
_notallowed = toArray("0123456789.,!-_><?");
_numbers = false;
{
if (_x in _notallowed) exitWith {_numbers = true;};
} forEach _Characters;
if (_numbers) exitWith {hint 'You must only enter letters!'; closeDialog 36691; createDialog 'GangName'; };
closeDialog 36691;
_name = parseText(_entered);
if (player distance getMarkerPos "Hideout1" < 30) then {
["<t size='3.2' color='#04EE4A'>Gang hideout zulu has been successfully claimed.</t>"] call life_fnc_alerttwo;
 _markerloc = getMarkerPos "Hideout1";
 _marker = createMarker ["GangCaptureDrugName", _markerloc];  
"GangCaptureDrugName" setMarkerColor "ColorBlack";    
"GangCaptureDrugName" setMarkerText _new; 
"GangCaptureDrugName" setMarkerType "loc_Ruin";
} else {
["<t size='3.2' color='#04EE4A'>Gang hideout echo has been successfully claimed.</t>"] call life_fnc_alerttwo;
 _markerloc = getMarkerPos "Hideout2";
 _marker = createMarker ["GangCaptureDrugName2", _markerloc];  
"GangCaptureDrugName2" setMarkerColor "ColorBlack";    
"GangCaptureDrugName2" setMarkerText _new; 
"GangCaptureDrugName2" setMarkerType "loc_Ruin";
};