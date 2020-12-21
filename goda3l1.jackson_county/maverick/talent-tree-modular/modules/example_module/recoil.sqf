waitUntil {missionNamespace getVariable ["life_recoilSet", false]}; 
_combat1 = [life_currentExpPerks, "Perk3_1"] call mav_ttm_fnc_hasPerk; 
_combat2 = [life_currentExpPerks, "Perk3_1_1"] call mav_ttm_fnc_hasPerk; 
_combat3 = [life_currentExpPerks, "Perk3_1_1_1"] call mav_ttm_fnc_hasPerk; 
_combat4 = [life_currentExpPerks, "Perk3_1_1_1_1"] call mav_ttm_fnc_hasPerk; 
_combat5 = [life_currentExpPerks, "Perk3_1_1_1_1_1"] call mav_ttm_fnc_hasPerk; 

//Check combat level and reduce recoil by that amount..
//Best recoil skill (Lowest arma recoil)
if (_combat5) exitWith {
player setUnitRecoilCoefficient 1.2;
};

if (_combat4) exitWith {
player setUnitRecoilCoefficient 1.7;
};

if (_combat3) exitWith {
player setUnitRecoilCoefficient 1.9;
};

if (_combat2) exitWith {
player setUnitRecoilCoefficient 2.0;
};

//Check combat level and reduce recoil by that amount..
if (_combat1) exitWith {
player setUnitRecoilCoefficient 2.1;
};













