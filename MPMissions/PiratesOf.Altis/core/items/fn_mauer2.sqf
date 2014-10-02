/*
    File: fn_mauer2.sqf
    Author: OLLI aka Hauklotz
    
    Description:
    Holt das Item aus dem Inventar und setzt es auf der Map.
*/
if((playerSide == civilian) OR (playerSide == independent)) exitWith {hint "Du bist nicht berechtig diesen Item zu benutzen";};
private["_position","_mauer2"];
_mauer2 = "Land_CncBarrier_stripes_F" createVehicle [0,0,0];
_mauer2 attachTo[player,[0,2.5,0.2]];
_mauer2 setDir 90;
_mauer2 setVariable["item","mauer2Deployed",true];

life_action_mauer2Deploy = player addAction[localize "STR_ISTR_Mauer2_Place",{if(!isNull life_mauer2) then {detach life_mauer2; life_mauer2 = ObjNull;}; player removeAction life_action_mauer2Deploy; life_action_mauer2Deploy = nil;},"",999,false,false,"",'!isNull life_mauer2'];
life_mauer2 = _mauer2;
waitUntil {isNull life_mauer2};
if(!isNil "life_action_mauer2Deploy") then {player removeAction life_action_mauer2Deploy;};
if(isNull _mauer2) exitWith {life_mauer2 = ObjNull;};
_mauer2 setPos [(getPos _mauer2 select 0),(getPos _mauer2 select 1),0];
_mauer2 enableSimulation false; 
_mauer2 allowDamage false;
life_action_mauer2Pickup = player addAction[localize "STR_ISTR_Mauer2_Pack",life_fnc_packupmauer2,"",0,false,false,"",
' _mauer2 = nearestObjects[getPos player,["Land_CncBarrier_stripes_F"],2] select 0; !isNil "_mauer2" && !isNil {(_mauer2 getVariable "item")}'];
[[_mauer2],"TON_fnc_mauer2",false,false] spawn life_fnc_MP; //Send it to the server for monitoring.