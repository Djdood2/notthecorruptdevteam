/*
hackvault

cgbankvault is the variable name
*/

private ["_cops"];

_cops = (west countSide playableUnits);
if(_cops < 4) exitWith { hint "You need atleast 4 cops online to hack the evidence locker vault.."; }; 

_storename = "hi";
_hackskill1 = [FFuVsqqZ, "Perk4_1"] call mav_ttm_fnc_hasPerk; 
_hackskill2 = [FFuVsqqZ, "Perk4_1_1"] call mav_ttm_fnc_hasPerk; 



if(life_inv_hackingtool == 0) exitwith {
	hint "You need some sort of hacking device to unlock this safe..";	
};


if (cgbankvault getVariable "hacking") exitwith {["<t size='3.2' color='#E50000'>Someone is already committing a major crime.</t>"] call life_fnc_alerttwo;};
if (evidencelocker getVariable "hacking") exitwith {["<t size='3.2' color='#E50000'>This is already being hacked.</t>"] call life_fnc_alerttwo;};
if (evidencelocker animationPhase "d_l_Anim" == 1) exitwith {["<t size='3.2' color='#E50000'>The bank appears unlocked.</t>"] call life_fnc_alerttwo;};
if (life_inv_hackingtool > 0 && !hacking && evidencelocker animationPhase "d_l_Anim" == 0 ) then {

	hint "You set your wireless hacking device to the vault, it should take roughly 5 minutes. You can move while hacking, though, you might make noises.";
	evidencelocker say "bankAlarm";
	evidencelocker setVariable["hacking",true,true];

	_veh = "Land_MobilePhone_smart_F" createvehicle (getpos player);
	_veh attachto [player, [-.02,-.006,-0.02], "RightHandMiddle1"];
	_veh setVectorDirAndUp [[-0.01,0.01,0],[-0.01,0.01,0]];
	_veh setpos (getpos _veh);

	_num = 150;
	if (_hackskill1) then {
		_num = 113; 
		};
		if (_hackskill2) then {
		_num = 105; 
		};
	while {_num > 0} do {
		if ( _num == 150 || _num == 105 || _num == 80 || _num == 50 || _num == 30 ) then {


			playSound3D ["ALRPSounds\snds\starthack.ogg", player, false, getPosASL player, 1, 1, 225];

			[[1,format["LAKESIDE NEWS: DOC IS UNDER ATTACK, ALL CIVLIANS STAY OUT OF DOC!",_storename]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
			[[1,format["911 DISPATCH: SOMEONE WAS DETECTED ATTEMPTING TO BREAK INTO THE DOC EVIDENCE LOCKER - ALL UNITS RESPOND",_storename]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
			[[1,format["DISPATCH: SOMEONE IS BREAKING INTO THE DOC EVIDENCE LOCKER. CIVILIANS STAY OUT OF DOC!",_storename]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
			[[0,format["DISPATCH: SOMEONE IS BREAKING INTO THE DOC EVIDENCE LOCKER. CIVILIANS STAY OUT OF DOC!",_storename]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
		};
		if(!alive player) exitwith {
		};
		_num = _num - 1;
		uiSleep 1;
	};
	detach _veh;
	deletevehicle _veh;

	if(!alive player) then {
		evidencelocker setVariable["hacking",false,true];
		hacking = false;
	};

	if(alive player) then {
		evidencelocker setvariable ["robbed",true,true];
		evidencelocker animate ["d_l_Anim",1];
		evidencelocker setVariable["hacking",false,true];
		playSound3D ["ALRPSounds\snds\endhack.ogg", player, false, getPosASL player, 1, 1, 225];
	};
};