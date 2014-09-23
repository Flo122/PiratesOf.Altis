/*
    File: fn_packuphut.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: OLLI aka Hauklotz

    Description:
    Packs up a deployed wall.
*/
private["_mauer2"];
_mauer2 = nearestObjects[getPos player,["Land_CncBarrier_stripes_F"],2] select 0;
if(isNil "_mauer2") exitWith {};

if(([true,"mauer2",1] call life_fnc_handleInv)) then
{
    titleText["Du hast eine Mauer aufgehoben.","PLAIN"];
    player removeAction life_action_mauer2Pickup;
    life_action_mauer2Pickup = nil;
    deleteVehicle _mauer2;
};