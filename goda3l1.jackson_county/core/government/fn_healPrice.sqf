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
    if (_price > 6000) exitWith { hint "You cannot set the fee to be higher than $6000!";};
    closedialog 0;
    if (_price == 0) exitWith {
    [[1,format["LAKESIDE NEWS: The mayor just enabled free healthcare for all! You can now visit a hospital for free as long as you are a valid Lakeside citizen.",_price]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
    [[1,format["LAKESIDE NEWS: The mayor just enabled free healthcare for all! You can now visit a hospital for free as long as you are a valid Lakeside citizen.",_price]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
    [[1,format["LAKESIDE NEWS: The mayor just enabled free healthcare for all! You can now visit a hospital for free as long as you are a valid Lakeside citizen.",_price]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
    tax setVariable ["healthcare", _price, true];
    };
    [[1,format["LAKESIDE NEWS: The mayor has changed the price of healing at the hospital to $%1.",_price]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
    [[1,format["LAKESIDE NEWS: The mayor has changed the price of healing at the hospital to $%1.",_price]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
    [[1,format["LAKESIDE NEWS: The mayor has changed the price of healing at the hospital to $%1.",_price]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
    tax setVariable ["healthcare", _price, true];