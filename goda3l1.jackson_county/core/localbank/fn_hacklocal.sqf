/*
hackvault

cgbankvault is the variable name
*/

private ["_cops"];

_cops = (west countSide playableUnits);
if(_cops < 3) exitWith { hint "You need atleast 3 cops online to rob the local bank..."; }; 

_storename = "hi";
_hackskill1 = [FFuVsqqZ, "Perk4_1"] call mav_ttm_fnc_hasPerk; 
_hackskill2 = [FFuVsqqZ, "Perk4_1_1"] call mav_ttm_fnc_hasPerk; 

if(life_inv_hackingtool == 0) exitwith {
	hint "You need some sort of hacking device to unlock this safe..";	
};


if (cgbankvault getVariable "hacking") exitwith {["<t size='3.2' color='#E50000'>Someone is already committing a major crime.</t>"] call life_fnc_alerttwo;};
if (cgbankvault1 getVariable "hacking") exitwith {["<t size='3.2' color='#E50000'>Someone is already committing a major crime.</t>"] call life_fnc_alerttwo;};
if (localbank getVariable "hacking") exitwith {["<t size='3.2' color='#E50000'>Someone is already committing a major crime.</t>"] call life_fnc_alerttwo;};

if (localbank animationPhase "d_l_Anim" == 1) exitwith {["<t size='3.2' color='#E50000'>The bank appears to be unlocked already.</t>"] call life_fnc_alerttwo;};

if (life_inv_hackingtool > 0 && !hacking && localbank animationPhase "d_l_Anim" == 0 ) then {

	hint "You set your wireless hacking device to the vault, it should take roughly 5 minutes. You can move while hacking, though, you might make noises.";
	localbank say "bankAlarm";
	localbank setVariable["hacking",true,true];

	_veh = "Land_MobilePhone_smart_F" createvehicle (getpos player);
	_veh attachto [player, [-.02,-.006,-0.02], "RightHandMiddle1"];
	_veh setVectorDirAndUp [[-0.01,0.01,0],[-0.01,0.01,0]];
	_veh setpos (getpos _veh);

	_num = 200; 
	if (_hackskill1) then {
		_num = 175; 
		};
		if (_hackskill2) then {
		_num = 160; 
		};
	while {_num > 0} do {
		if ( _num == 200 || _num == 175 || _num == 160 || _num == 120 || _num == 60 ) then {


			playSound3D ["ALRPSounds\snds\starthack.ogg", player, false, getPosASL player, 1, 1, 225];

			[[1,format["LAKESIDE NEWS: ROBBERY AT LAKESIDE LOCAL BANK, ALL CIVLIANS STAY BACK!",_storename]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
			[[1,format["911 DISPATCH: ROBBERY AT LAKESIDE LOCAL BANK - ALL AVAILABLE UNITS RESPOND!",_storename]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
			[[1,format["911 EMERGENCY: HOSTAGE SITUATION AT LAKESIDE LOCAL BANK - ALL AVAILABLE UNITS RESPOND!",_storename]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
		};
		if(!alive player) exitwith {
		};
		_num = _num - 1;
		uiSleep 1;
	};
	detach _veh;
	deletevehicle _veh;

	if(!alive player) then {
		localbank setVariable["hacking",false,true];
		hacking = false;
	};

	if(alive player) then {
		localbank setvariable ["robbed",true,true];
		localbank animate ["d_l_Anim",1];
		localbank setVariable["hacking",false,true];
		playSound3D ["ALRPSounds\snds\endhack.ogg", player, false, getPosASL player, 1, 1, 225];
	};
};



