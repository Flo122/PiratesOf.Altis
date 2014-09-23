/*
    File: fn_licht.sqf
    Author: OLLI aka Hauklotz
    
    Description:
    Holt das Item aus dem Inventar und setzt es auf der Map.
*/
if((playerSide == civilian) && (playerSide == independent)) exitWith {};
private["_position","_licht"];
_licht = "RoadCone_F" createVehicle [0,0,0];
_licht attachTo[player,[0,2.5,0.2]];
_licht setDir 90;
_licht setVariable["item","lichtDeployed",true];

life_action_lichtDeploy = player addAction[localize "STR_ISTR_Licht_Place",{if(!isNull life_licht) then {detach life_licht; life_licht = ObjNull;}; player removeAction life_action_lichtDeploy; life_action_lichtDeploy = nil;},"",999,false,false,"",'!isNull life_licht'];
life_licht = _licht;
waitUntil {isNull life_licht};
if(!isNil "life_action_lichtDeploy") then {player removeAction life_action_lichtDeploy;};
if(isNull _licht) exitWith {life_licht = ObjNull;};
_licht setPos [(getPos _licht select 0),(getPos _licht select 1),0];
_licht enableSimulation false; 
_licht allowDamage false;
life_action_lichtPickup = player addAction[localize "STR_ISTR_Licht_Pack",life_fnc_packuplicht,"",0,false,false,"",
' _licht = nearestObjects[getPos player,["RoadCone_F"],2] select 0; !isNil "_licht" && !isNil {(_licht getVariable "item")}'];
[[_licht],"TON_fnc_licht",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.