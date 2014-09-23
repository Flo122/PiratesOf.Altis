/*
    File: fn_packupmauer.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: OLLI aka Hauklotz

    Description:
    Packs up a deployed wall.
*/
private["_mauer"];
_mauer = nearestObjects[getPos player,["RoadBarrier_F"],2] select 0;
if(isNil "_mauer") exitWith {};

if(([true,"mauer",1] call life_fnc_handleInv)) then
{
    titleText["Du hast die Straßensperre aufgehoben.","PLAIN"];
    player removeAction life_action_mauerPickup;
    life_action_mauerPickup = nil;
    deleteVehicle _mauer;
};