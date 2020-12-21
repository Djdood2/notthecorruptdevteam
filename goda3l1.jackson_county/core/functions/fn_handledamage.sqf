
private["_unit","_damage","_source","_projectile","_part","_curWep","_damageReduce"];

_unit = _this select 0;
_part = _this select 1;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;
life_nolife = 2;
_currdamage = damage player;

if(!isNull _source) then {
	if(_source != _unit) then {
		_curWep = currentWeapon _source;

		if(_curWep in ["CG_CROSS","CG_BATON","CG_TELBAT","CG_BAT","CG_SHOVEL"]) exitwith {
			[_unit,_source] call life_fnc_blunthit;
			_damage = 0;
		};

		if(_curWep in ["cg_scythe","CG_PICKAXE","cg_hatchet","cg_machete"]) exitwith {
			[_unit,_source] call life_fnc_sharphit;
			_damage = 0;
		};
		
		if(_projectile in ["JM_26_taser","590_00buckshot","590_Slug"] && _curWep in ["JM_Taser_26","JM_Taserb_26","Mossberg_590"]) then {
				private["_distance","_isVehicle","_isQuad"];
				_distance = 35;
				_distance = if(_projectile == "590_00buckshot") then {40} else {30};
				_isVehicle = if(vehicle player != player) then {true} else {false};
				_isQuad = if(_isVehicle) then {if(typeOf (vehicle player) == "B_Quadbike_01_F") then {true} else {false}} else {false};
				
				_damage = false;
				if(_unit distance _source < _distance) then {
					if(!life_istazed && !(_unit getVariable["restrained",false])) then {
						if(_isVehicle && _isQuad) then {
							player action ["Eject",vehicle player];
							[_unit,_source] spawn life_fnc_tazed;
						} else {
							[_unit,_source] spawn life_fnc_tazed;
					};
				};
			};
		};
	};
};

//Anti-VDM Script
if(vehicle _source isKindOf "LandVehicle") then {
	_vehicle = vehicle _source;
	if((driver _vehicle) isEqualTo _source && {_vehicle isKindOf "Air" || _vehicle isKindOf "Car" || _vehicle isKindOf "Boat"}) then {
			_damage = damage player;
			};
};
if ((vehicle _unit) isKindOf "Car" && (isNull _source || _source isEqualTo _unit)) then
{
	_damage = if (life_seatbelt) then { _damage / 2 } else { _damage};
};
_damage;