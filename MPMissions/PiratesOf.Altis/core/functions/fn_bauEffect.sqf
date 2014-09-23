/*
    File: fn_mauerEffect.sqf
    Author: Bryan "Tonic" Boardwine
    
    Description:
    Doesn't work without the server-side effect but shifted part of it clientside
    so code can easily be changed. Ultimately it just pops the tires.
*/
private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {}; //Bad vehicle type

_vehicle setHitPointDamage["HitEngine ",0.9];
_vehicle setHitPointDamage["HitHull ",0.7];
_vehicle setHitPointDamage["HitLGlass ",1.0];
_vehicle setHitPointDamage["HitRGlass ",1.0];