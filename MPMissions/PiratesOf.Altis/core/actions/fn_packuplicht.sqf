/*
    File: fn_packupholz.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: OLLI aka Hauklotz

    Description:
    Packs up a deployed wall.
*/
private["_licht"];
_licht = nearestObjects[getPos player,["RoadCone_L_F"],2] select 0;
if(isNil "_licht") exitWith {};

if(([true,"licht",1] call life_fnc_handleInv)) then
{
    titleText["Du hast ein Hütchen aufgehoben.","PLAIN"];
    player removeAction life_action_lichtPickup;
    life_action_lichtPickup = nil;
    deleteVehicle _licht;
};