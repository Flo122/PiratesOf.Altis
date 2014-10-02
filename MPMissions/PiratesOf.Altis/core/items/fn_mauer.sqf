/*
    File: fn_mauer.sqf
    Author: OLLI aka Hauklotz
    
    Description:
    Holt das Item aus dem Inventar und setzt es auf der Map.
*/
if((playerSide == civilian) OR (playerSide == independent)) exitWith {hint "Du bist nicht berechtig diesen Item zu benutzen";};
private["_position","_mauer"];
_mauer = "RoadBarrier_F" createVehicle [0,0,0];
_mauer attachTo[player,[0,2.5,0.2]];
_mauer setDir 90;
_mauer setVariable["item","mauerDeployed",true];

life_action_mauerDeploy = player addAction[localize "STR_ISTR_Mauer_Place",{if(!isNull life_mauer) then {detach life_mauer; life_mauer = ObjNull;}; player removeAction life_action_mauerDeploy; life_action_mauerDeploy = nil;},"",999,false,false,"",'!isNull life_mauer'];
life_mauer = _mauer;
waitUntil {isNull life_mauer};
if(!isNil "life_action_mauerDeploy") then {player removeAction life_action_mauerDeploy;};
if(isNull _mauer) exitWith {life_mauer = ObjNull;};
_mauer setPos [(getPos _mauer select 0),(getPos _mauer select 1),0];
_mauer enableSimulation false; 
_mauer allowDamage false;
life_action_mauerPickup = player addAction[localize "STR_ISTR_Mauer_Pack",life_fnc_packupmauer,"",0,false,false,"",
' _mauer = nearestObjects[getPos player,["RoadBarrier_F"],2] select 0; !isNil "_mauer" && !isNil {(_mauer getVariable "item")}'];
[[_mauer],"TON_fnc_mauer",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.