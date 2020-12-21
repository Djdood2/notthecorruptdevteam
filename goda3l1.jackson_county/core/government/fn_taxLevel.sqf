/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
 private ["_taxlevel","_entered"];
    _entered = ctrltext 1400;
    _Characters = toArray (_entered);
    _allowed = toArray("0123456789");
    _letters = false;
    {
        if (!(_x in _allowed)) exitWith {_letters = true;};
    } forEach _Characters;
    if (_letters) exitWith {hint 'You must only enter numbers!';};
    _taxlevel = parseNumber(_entered);
    if (_taxLevel < 0) exitWith { hint "The tax level must be 0% or more!";};
    if (_taxLevel > 666) exitWith { hint "You cannot set the tax level to any higher than 666%!";};
    hint format["Tax level set to %1 percent.", _taxlevel];
    closedialog 0;
    [[1,format["LAKESIDE NEWS: The government has changed the taxation level to %1 percent.",_taxLevel]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
    [[1,format["LAKESIDE NEWS: The government has changed the taxation level to %1 percent.",_taxLevel]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
    [[1,format["LAKESIDE NEWS: The government has changed the taxation level to %1 percent.",_taxLevel]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
    tax setVariable ["taxrate", _taxlevel, true];