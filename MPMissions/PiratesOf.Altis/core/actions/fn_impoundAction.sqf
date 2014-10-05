/*
	File: fn_impoundAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Impounds the vehicle
*/
private["_vehicle","_type","_time","_price","_vehicleData","_upp","_ui","_progress","_pgText","_cP","_ropes"];
_vehicle = cursorTarget;
if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship"))) exitWith {};
if(player distance cursorTarget > 10) exitWith {};
if((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship")) then
{
	_vehicleData = _vehicle getVariable["vehicle_info_owners",[]];
	if(count _vehicleData == 0) exitWith {deleteVehicle _vehicle}; //Bad vehicle.
	_vehicleName = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
	if(playerSide == west) then {
	[[0,format[localize "STR_NOTF_BeingImpounded",(_vehicleData select 0) select 1,_vehicleName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	};
	if(playerSide == east) then {
	[[0,format[localize "STR_APH_BeingImpounded",(_vehicleData select 0) select 1,_vehicleName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	};
	
	life_action_inUse = true;
	
	if(playerSide == west) then {
	_upp = localize "STR_NOTF_Impounding";
	};
	if(playerSide == east) then {
	_upp = localize "STR_APH_Impounding";
	};
	//Setup our progress bar.
	disableSerialization;
	5 cutRsc ["life_progress","PLAIN"];
	_ui = uiNameSpace getVariable "life_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	if(playerSide == west) then {
	_pgText ctrlSetText format["%2 wird beschlagnahmt (1%1)...","%",_vehicleName];
	};
	if(playerSide == east) then {
	_pgText ctrlSetText format["%2 wird eingelagert (1%1)...","%",_vehicleName];
	};
	_progress progressSetPosition 0.01;
	_cP = 0.01;
	while{true} do
	{
		sleep 0.09;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vehicle > 10) exitWith {};
		if(!alive player) exitWith {};
	};
	5 cutText ["","PLAIN"];
	
	if((player distance _vehicle > 10) && (playerSide == west)) exitWith {hint localize "STR_NOTF_ImpoundingCancelled"; life_action_inUse = false;};
	if((player distance _vehicle > 10) && (playerSide == east)) exitWith {hint localize "STR_APH_ImpoundingCancelled"; life_action_inUse = false;};

	if(!alive player) exitWith {life_action_inUse = false;};
	if((count crew _vehicle) == 0) then
	{
		if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship"))) exitWith {life_action_inUse = false;};
		_type = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
		switch (true) do
		{
			case (_vehicle isKindOf "Car"): {_price = (call life_impound_car);};
			case (_vehicle isKindOf "Ship"): {_price = (call life_impound_boat);};
			case (_vehicle isKindOf "Air"): {_price = (call life_impound_air);};
		};
		
		life_impound_inuse = true;
		[[_vehicle,true,player],"TON_fnc_vehicleStore",false,false] spawn life_fnc_MP;
		
		//delete ropes on impound
		_ropes = (_vehicle getvariable ["zlt_ropes", []]);
		{deletevehicle _x} foreach _ropes;
		_vehicle setvariable ["zlt_ropes", [], true];
		
		waitUntil {!life_impound_inuse};
		
		if(playerSide == west) then {
		hint format[localize "STR_NOTF_Impounded",_type,_price];
		[[0,format[localize "STR_NOTF_HasImpounded",profileName,(_vehicleData select 0) select 1,_vehicleName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		};
		if(playerSide == east) then {
		hint format[localize "STR_APH_Impounded",_type,_price];
		[[0,format[localize "STR_APH_HasImpounded",profileName,(_vehicleData select 0) select 1,_vehicleName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		};
		life_atmcash = life_atmcash + _price;
	}
		else
	{
		if(playerSide == west) then {
		hint localize "STR_NOTF_ImpoundingCancelled";
		};
		if(playerSide == east) then {
		hint localize "STR_APH_ImpoundingCancelled";
		};
	};
};
life_action_inUse = false;
