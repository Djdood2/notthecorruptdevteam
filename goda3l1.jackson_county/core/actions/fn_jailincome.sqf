/*
	Author: Cobra @ArmaLifeRoleplay
	www.armaliferp.co.uk
	**ONLY TO BE USED BY ALRP**
*/
private["_loot"];
if (playerSide != civilian) exitWith {};
if (vehicle player != player) exitWith {};
if (player getVariable ["surrender", false]) exitWith { hint "You cannot do that while surrendering!";};
if (life_junk == 1) exitWith {};
life_junk = 1;
_dice = random(100);
if (_dice < 90) then {
    hint "Sorting through trash....";
    player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
    waitUntil {
        animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
    };
    player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
    waitUntil {
        animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
    };
    hint "You have collected 1 junk.";
    [true, "junk", 1] call life_fnc_alrphandleinventory;
    sleep 3;
} else {
    hint "You were lucky and found some valuable metal in the trash, you can sell this for extra.";
    [true, "metal", 1] call life_fnc_alrphandleinventory;
};
life_junk = 0;