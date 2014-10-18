/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	For the mean time it blocks the player from opening another persons backpack
*/
private["_container","_unit"];
if(count _this == 1) exitWith {false};
_unit = _this select 0;
_container = _this select 1;

_isPack = getNumber(configFile >> "CfgVehicles" >> (typeOf _container) >> "isBackpack");
if(_isPack == 1 && playerSide != west) then {
	hint "Du kannst in keine anderen Rucksäcke schauen !";
	[] spawn {
		waitUntil {!isNull (findDisplay 602)};
		closeDialog 0;
	};
};

//Allow alive players who've been knocked out to be looted, just not the dead ones
if(_container isKindOf "Man" && !alive _container) exitWith {
	hint "STOP TOUCHING ME";
	[] spawn {
		waitUntil {!isNull (findDisplay 602)};
		closeDialog 0;
	};
};

if((typeOf _container) in ["Box_IND_Grenades_F","B_supplyCrate_F"]) exitWith {
	_house = nearestBuilding (getPosATL player);
	if(!(_house in life_vehicles) && {(_house getVariable ["locked",false])}) then {
		hint "You are not allowed to access this storage container without the owner opening it.";
		[] spawn {
			waitUntil {!isNull (findDisplay 602)};
			closeDialog 0;
		};
	};
};

if(_container isKindOf "LandVehicle" OR _container isKindOf "Ship" OR _container isKindOf "Air") exitWith {
	if(playerSide == west) exitWith {};
	if(!(_container in life_vehicles) && {(locked _container) == 2}) exitWith {
		hint "You are not allowed to access this vehicle while its locked.";
		[] spawn {
			waitUntil {!isNull (findDisplay 602)};
			closeDialog 0;
		};
	};
};