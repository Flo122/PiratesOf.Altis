private ["_speed","_vehicle","_blitzer","_name","_list"];

while {playerSide == civilian} do 
{
	_vehicle = vehicle player;
	_speed = speed _vehicle;
	_blitzer = [Kavala_N_70,Kavala_S_70];
	_name = getText (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayname");
	_list = ["C_Kart_01_Blu_F","C_Kart_01_Fuel_F","C_Kart_01_Red_F","C_Kart_01_Vrana_F","O_MRAP_02_F","B_Quadbike_01_F","C_Hatchback_01_F","C_Offroad_01_F","C_SUV_01_F","C_Van_01_transport_F","C_Hatchback_01_sport_F","C_Van_01_box_F","I_Truck_02_transport_F","I_Truck_02_covered_F","I_Truck_02_box_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_Truck_01_box_F","B_MRAP_01_F","I_MRAP_03_F","B_Truck_01_ammo_F"];
	{
		if ((player == driver _vehicle) && (_vehicle distance _x < 20) && (_speed >= 80)) then 
		{ 
			titleCut [" ","white in",1];
			switch(true) do
			{
				case (_speed >= 5 and _speed < 15): 	{life_atmcash = life_atmcash - 2000;};
				case (_speed >= 15 and _speed < 35): 	{life_atmcash = life_atmcash - 5000;};
				case (_speed >= 35 and _speed < 65): 	{life_atmcash = life_atmcash - 20000;};
				case (_speed >= 65 and _speed < 90): 	{life_atmcash = life_atmcash - 50000;};
				case (_speed >= 90 and _speed < 115): 	{life_atmcash = life_atmcash - 100000;};
				case (_speed >= 115 and _speed < 165): 	{life_atmcash = life_atmcash - 150000;};
				case (_speed >= 165 and _speed < 215): 	{life_atmcash = life_atmcash - 200000;};
				case (_speed >= 215 and _speed < 350): 	{life_atmcash = life_atmcash - 250000;};
			};
			hint parseText format ["Du wurdest gerade geblitzt! (Limit: 70, Geschwindigkeit: %1)", round _speed];
			[[0,format["%1 wurde geblitzt! Fahrzeug: %4, Position: %3, Geschwindigkeit: %2 Kmh!",name player, round _speed, _x, _name]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;		
			[[0,format["%1 wurde geblitzt! Fahrzeug: %3, Geschwindigkeit: %2 Kmh!",name player, round _speed, _name]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
			sleep 3;
		};
	} foreach _blitzer;
	sleep 1;
};