_types = ["Lamps_Base_F", "PowerLines_base_F", "Lamp_LampAirport_F", "Land_LampStreet_small_F", "Land_LampStreet_F", "Land_LampSolar_F", "Land_LampShabby_F", "Land_LampHalogen_F", "Land_LampHarbour_F", "Land_LampDecor_F"];
_onoff = _this select 0;

for [{_i=0},{_i < (count _types)},{_i=_i+1}] do
{
    // powercoverage is a marker I placed.
	_lamps = getMarkerPos "kraftwerk_1_1" nearObjects [_types select _i, 1000];
	sleep 1;
	{_x setDamage _onoff} forEach _lamps;
};