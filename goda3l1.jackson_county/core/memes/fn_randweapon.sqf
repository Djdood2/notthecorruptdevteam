/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**

if (playerside != civilian) exitWith {
["<t size='3.2' color='#E50000'>Only civilians are permitted to use the mystery weapon dealer!</t>"] call life_fnc_alerttwo;
 };
if (!license_civ_rebel) exitWith { 
["<t size='3.2' color='#E50000'>You need a rebel license to use the mystery weapon dealer!</t>"] call life_fnc_alerttwo;
 };
if (cobra_mysterymemes == 1) exitWith {  
["<t size='3.2' color='#E50000'>You are already using the mystery weapon dealer!</t>"] call life_fnc_alerttwo;
};
if (aQ3CGZRg3W9tGxzs < 19750) exitWith {
["<t size='3.2' color='#E50000'>You do not have enough money ($19,750) to use the mystery weapon dealer.</t>"] call life_fnc_alerttwo;
};
if (cobrarebel getVariable "raided") exitWith {
	hint "The rebel weapon cache was recently raided, you need to fix the crate before you can buy more weapons.";
	uiSleep 4;
	hint "The weapons crate will be marked on your GPS for a short period of time.";
	_marker = createMarkerLocal ["DeliveryPoint",getPos cobrarebel];
	_marker setMarkerColorLocal "ColorRed";
	_marker setMarkerTypeLocal "mil_dot";
	_marker setMarkerTextLocal ">>Rebel Weapons Crate<<";
	uiSleep 15;
	deleteMarker "DeliveryPoint";
};
aQ3CGZRg3W9tGxzs = aQ3CGZRg3W9tGxzs - 19750;
cobra_mysterymemes = 1;
//array of memes
memes = [
"alrp_battleofthebeasts",
"alrp_bcmhyperbeast",
"alrp_acrhowl",
"alrp_f7stickerbomb",
"alrp_akm_dragonlore",
"alrp_aug_bodypillow",
"alrp_mk18_weedstick",
"alrp_ak12_asmi",
"alrp_moe_tiger",
"alrp_hk_tron",
"RH_Deagles",
"RH_uspm"
];
/*Weapon*//*
rand = count memes;
_randnum = round (random rand);
_MysteryWeapon = memes select _randnum;

/*Ammo*//*
_ammoamt = 2 + (round random 7);
_MysteryAmmo = (getarray (configFile >> "CFGWeapons" >> _MysteryWeapon >> "magazines") select 0);  


["<t size='3.2' color='#04EE4A'>Crate ordered, good luck!</t>"] call life_fnc_alerttwo;
uiSleep 1;
crate = "RHpistammobox" createVehicleLocal (getpos player);  
player disablecollisionwith crate;
crate setpos (getposATL player);	
crate allowDamage false;
clearWeaponCargoGlobal crate;
clearMagazineCargoGlobal crate;
clearItemCargoGlobal crate;
crate addWeaponCargo [_MysteryWeapon,1];
crate addMagazineCargo [_MysteryAmmo,_ammoamt];
["<t size='3.2' color='#04EE4A'>Your crate will despawn in 20 seconds.</t>"] call life_fnc_alerttwo;
_time = 20;
while {_time > 0} do {
	uiSleep 1;
	_time = _time - 1;
	if (!alive player) exitWith { cobra_mysterymemes = 0; deleteVehicle crate;};
	if (_time == 0) exitWith { deleteVehicle crate; cobra_mysterymemes = 0; hint "Your crate despawned.";  };
};
*/
hint "This feature is currently being re-worked and will be re-enabled when finished.";