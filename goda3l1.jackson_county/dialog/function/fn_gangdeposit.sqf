#include <macro.h>
if (aQ3CGZRg3W9tGxzs == 0) exitWith { hint "You do not have any cash to deposit!"; closeDialog 1; };
b2UuDWVw9NeDh45d = b2UuDWVw9NeDh45d + aQ3CGZRg3W9tGxzs;
aQ3CGZRg3W9tGxzs = 0;
closeDialog 1;
["<t size='3.2' color='#04EE4A'>You deposited all of your cash!</t>"] call life_fnc_alerttwo;
[] call life_fnc_atmMenu;
[6] call SOCK_fnc_updatePartial;
