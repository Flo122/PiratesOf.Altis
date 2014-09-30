/*
	File: fn_mauer2.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	This is the server-side part of it which constantly monitors the spike strip and vehicles near it.
	First originally tried triggers but I was never any good at those nor do I like them as they 
	have a global effect.
*/
private["_nearVehicles","_mauer2"];
_mauer2 = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _mauer2) exitWith {}; //Bad vehicle type passed.

waitUntil {_nearVehicles = nearestObjects[getPos _mauer2,["Car"],5]; count _nearVehicles > 0 OR isNull _mauer2};

if(isNull _mauer2) exitWith {}; //It was picked up?
_vehicle = _nearVehicles select 0;

if(isNil "_vehicle") exitWith {deleteVehicle _mauer2;};
[[_vehicle],"life_fnc_bauEffect",_vehicle,false] spawn life_fnc_MP;
deleteVehicle _mauer2;