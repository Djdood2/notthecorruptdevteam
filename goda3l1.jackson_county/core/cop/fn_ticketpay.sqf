/*
	File: fn_ticketPay.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Pays the ticket.
*/
if(isnil {life_ticket_val} OR isNil {life_ticket_cop}) exitWith {};
if(aQ3CGZRg3W9tGxzs < life_ticket_val) exitWith
{
	if(b2UuDWVw9NeDh45d < life_ticket_val) exitWith 
	{
		hint localize "STR_Cop_Ticket_NotEnough";
		[[1,format[localize "STR_Cop_Ticket_NotEnoughNOTF",profileName]],"life_fnc_broadcast",life_ticket_cop,false] spawn life_fnc_MP;
		closeDialog 0;
	};
	hint format[localize "STR_Cop_Ticket_Paid",[life_ticket_val] call life_fnc_numberText];
	b2UuDWVw9NeDh45d = b2UuDWVw9NeDh45d - life_ticket_val;
	_cops = (west countSide playableUnits);
	_finalvalue = life_ticket_val/_cops;
	//Reward cops
	[_finalvalue] remoteExecCall ["life_fnc_rewardcops",west];
	life_ticket_paid = true;
	[[0,format[localize "STR_Cop_Ticket_PaidNOTF",profileName,[life_ticket_val] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
	closeDialog 0;
};

aQ3CGZRg3W9tGxzs = aQ3CGZRg3W9tGxzs - life_ticket_val;
life_ticket_paid = true;

_cops = (west countSide playableUnits);
_finalvalue = life_ticket_val/_cops;
[_finalvalue] remoteExecCall ["life_fnc_rewardcops",west];

[[getPlayerUID player],"life_fnc_wantedRemove",false,false] spawn life_fnc_MP;
[[0,format[localize "STR_Cop_Ticket_PaidNOTF",profileName,[life_ticket_val] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
closeDialog 0;
[[1,format[localize "STR_Cop_Ticket_PaidNOTF_2",profileName]],"life_fnc_broadcast",life_ticket_cop,false] spawn life_fnc_MP;
[[life_ticket_val,player,life_ticket_cop],"life_fnc_ticketPaid",life_ticket_cop,false] spawn life_fnc_MP;