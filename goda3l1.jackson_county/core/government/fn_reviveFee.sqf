    /*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
    private ["_price","_entered"];
    _entered = ctrltext 1400;
    _Characters = toArray (_entered);
    _allowed = toArray("0123456789");
    _letters = false;
    {
        if (!(_x in _allowed)) exitWith {_letters = true;};
    } forEach _Characters;
    if (_letters) exitWith {hint 'You must only enter numbers!';};
    _price = parseNumber(_entered);
    if (_price < 1000) exitWith { hint "The price of reviving needs to be $1000 or more!";};
    if (_price > 12000) exitWith { hint "You cannot set the fee to be higher than $12,000!";};
    closedialog 0;
    [[1,format["LAKESIDE NEWS: The mayor has changed the revive fee to $%1.",_price]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
    [[1,format["LAKESIDE NEWS: The mayor has changed the revive fee to $%1.",_price]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
    [[1,format["LAKESIDE NEWS: The mayor has changed the revive fee to $%1.",_price]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
    tax setVariable ["revivefees", _price, true];