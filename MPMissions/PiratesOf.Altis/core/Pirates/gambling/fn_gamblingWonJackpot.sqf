#include <macro.h>

private["_jackpot"];

_jackpot = [_this,0,0,[0]] call BIS_fnc_param;
if(_jackpot <= 0) exitWith {};


life_cash = life_cash + _jackpot;

//save data to db
//[1,true] call SOCK_fnc_updateRequest;

//hint format["Won the Jackpot=%1", _jackpot];