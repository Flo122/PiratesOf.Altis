
private["_veh","_var_item","_value_item","_success","_manipulation"];
_veh = cursorTarget;
if(isNull _veh) exitwith {};
if(vehicle player != player) exitWith {hint "Hast du das schonmal in einem Fahrzeug versucht?";};
if((player distance _veh) > 5) exitwith {hint "Du musst näher beim Fahrzeug stehen.";};

_var_item = ["fuelManipulator",0] call life_fnc_varHandle;
_value_item = missionNamespace getVariable _var_item;
if(_value_item <= 0) exitWith {};

if((_veh isKindOf "Car") OR (_veh isKindOf "Ship") ) then
{
    _success = [20, "Manipuliere den Tank", _veh] call life_fnc_progressWaitUntilFinished;
    if(!_success) exitWith {};

	_manipulation = _veh getVariable["king_fuel_manipulation_factor",0];
	if(_manipulation == 0) then
	{
		if(([false,"fuelManipulator",1] call life_fnc_handleInv)) then
		{
			_veh setVariable["king_fuel_manipulation_factor",100,true];
			hint "Das Fahrzeug verbraucht nun viel mehr... du bist aber gemein...";
		};
	}
	else
	{
		hint "Dieses Fahrzeug ist bereits manipuliert";
	};  
};