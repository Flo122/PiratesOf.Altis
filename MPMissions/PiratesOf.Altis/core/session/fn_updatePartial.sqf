#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Sends specific information to the server to update on the player,
	meant to keep the network traffic down with large sums of data flowing
	through life_fnc_MP
*/
private["_mode","_packet","_array","_flag","_value","_value2"];
_mode = [_this,0,0,[0]] call BIS_fnc_param;
_packet = [steamid,playerSide,nil,_mode];
_array = [];
_flag = switch(playerSide) do {case west: {"cop"}; case civilian: {"civ"}; case independent: {"med"}; case east: {"pmo"};};

switch(_mode) do {
	case 0: {
		_packet set[2,life_cash];
	};
	
	case 1: {
		_packet set[2,life_atmcash];
	};
	
	case 2: {
		{
			if(_x select 1 == _flag) then
			{
				_array pushBack [_x select 0,(missionNamespace getVariable (_x select 0))];
			};
		} foreach life_licenses;
		
		_packet set[2,_array];
	};
	
	case 3: {
		[] call life_fnc_saveGear;
		_packet set[2,life_gear];
	};
	
	case 4: {
		//Not yet implemented
	};
	
	case 5: {
		_packet set[2,life_is_arrested];
	};
	
	case 6: {
		_packet set[2,life_cash];
		_packet set[4,life_atmcash];
	};
	
	case 8: {
	_value = [_this,2,[],[[]]] call BIS_fnc_param;
	_value = [_value] call DB_fnc_mresArray;
	_value2 = [_this,4,0,[0]] call BIS_fnc_param;
	_value2 = [_value2] call DB_fnc_numberSafe;
	switch(_side) do {
	case west: {_query = format["UPDATE players SET cop_gear='%1', cash='%2' WHERE playerid='%3'",_value,_value2,_uid];};
	case civilian: {_query = format["UPDATE players SET civ_gear='%1', cash='%2' WHERE playerid='%3'",_value,_value2,_uid];};
	case independent: {_query = format["UPDATE players SET med_gear='%1', cash='%2' WHERE playerid='%3'",_value,_value2,_uid];};
	case east: {_query = format["UPDATE players SET pmo_gear='%1', cash='%2' WHERE playerid='%3'",_value,_value2,_uid];};
	};
	};
};

[_packet,"DB_fnc_updatePartial",false,false] call life_fnc_MP;