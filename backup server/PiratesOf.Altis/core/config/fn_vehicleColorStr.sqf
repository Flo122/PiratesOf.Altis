/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	// Quad
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Digi Desert"};
			case 1: {_color = "Black"};
			case 2: {_color = "Blue"};
			case 3: {_color = "Red"};
			case 4: {_color = "White"};
			case 5: {_color = "Digi Green"};
			case 6: {_color = "Hunter Camo"};
			case 7: {_color = "Rebel Camo"};
		};
	};
	// Offroad
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Red";};
			case 1: {_color = "Yellow";};
			case 2: {_color = "White";};
			case 3: {_color = "Blue";};
			case 4: {_color = "Dark Red";};
			case 5: {_color = "Blue / White"};
			case 6: {_color = "Polizei"};
			case 7: {_color = "Medic"};
       		case 8: {_color = "Tarnung"};
			case 9: {_color = "Dodge"};
			case 10: {_color = "Gamer"};
			case 11: {_color = "Captain Morgan"};
			case 12: {_color = "Sushi"};
			case 13: {_color = "Marihuana"};
			case 14: {_color = "Rebel"};
		};
	};
	// Hatchback
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Green";};
			case 2: {_color = "Blue";};
			case 3: {_color = "Dark Blue";};
			case 4: {_color = "Yellow";};
			case 5: {_color = "White"};
			case 6: {_color = "Grey"};
			case 7: {_color = "Black"};
			case 8: {_color = "Fire";};
			case 9: {_color = "Metallica"};
			};
	};
	// Hatchback Sport
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Red"};
			case 1: {_color = "Dark Blue"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Black / White"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Green"};
			case 6: {_color = "Fire";};
			case 7: {_color = "Metallica"};
		};
	};
	// SUV	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Dark Red";};
			case 1: {_color = "Black";};
			case 2: {_color = "Silver";};
			case 3: {_color = "Polizei";};
			case 4: {_color = "Medic";};
			case 5: {_color = "Batman"};
			case 6: {_color = "Carbon"};
			case 7: {_color = "Carbon Weiss"};
			case 8: {_color = "Fast"};
			case 9: {_color = "Ferrari"};
			case 10: {_color = "Skull"};
			case 11: {_color = "Yokohama"};
			case 12: {_color = "Rebel"};
			case 13: {_color = "Monster Energy"};
			case 14: {_color = "SEK"};
		};
	};	
	// Truck
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};	
	// Truck Box
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	// Zamak
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Weed Farmer"};
			case 2: {_color = "Ereka"};
			case 3: {_color = "RedBull"};
			case 4: {_color = "Warehouse"};
		};
	};
	// Zamak
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Weed Farmer"};
			case 2: {_color = "Ereka"};
			case 3: {_color = "RedBull"};
			case 4: {_color = "Warehouse"};
		};
	};
	// HEMTT
	case "B_Truck_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Standard"};
			case 1: {_color = "Kitty"};
			case 2: {_color = "Devil"};
		};
	};
	// HEMTT
	case "B_Truck_01_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Standard"};
			case 1: {_color = "Kitty"};
			case 2: {_color = "Devil"};
		};
	};
	// HEMTT
	case "B_Truck_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Standard"};
			case 1: {_color = "Kitty"};
			case 2: {_color = "Devil"};
		};
	};	
	// Hummingbird
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "Digi Green"};
			case 2: {_color = "Blueline"};
			case 3: {_color = "Elliptical"};
			case 4: {_color = "Furious"};
			case 5: {_color = "Jeans Blue"};
			case 6: {_color = "Speedy Redline"};
			case 7: {_color = "Sunset"};
			case 8: {_color = "Vrana"};
			case 9: {_color = "Waves Blue"};
			case 10: {_color = "Rebel Digital"};
			case 11: {_color = "Polizei"};
			case 12: {_color = "Medic"};
			case 13: {_color = "RedBull"};
			case 14: {_color = "Rebel"};
		};
	};
	// Orca
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "White / Blue"};
			case 2: {_color = "Digi Green"};
			case 3: {_color = "Desert Digi"};
			case 4: {_color = "Polizei"};
			case 5: {_color = "Medic"};
			case 6: {_color = "Rebel"};
		};
	};
	// Ghosthawk
	case "B_Heli_Transport_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
			case 1: {_color = "SEK"};
		};
	};
	// Hellcat
	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
			case 1: {_color = "Donator"};
			case 2: {_color = "Rebel"};
		};
	};
	// Mohawk
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
			case 2: {_color = "Rebel"};
		};
	};
	// Hunter
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei weiss"};
			case 1: {_color = "SEK"};
			case 2: {_color = "Donator"};
			case 3: {_color = "Polizei schwarz"};
		};
	};
	// Hunter
	case "B_MRAP_01_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei weiss"};
			case 1: {_color = "Polizei schwarz"};
		};
	};
	// Ifrit
	case "O_MRAP_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Braun"};
			case 1: {_color = "Grau"};
		};
	};
	// Ifrit
	case "O_MRAP_02_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Braun"};
			case 1: {_color = "Grau"};
		};
	};
	// Strider
	case "I_MRAP_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "SEK"};
		};
	};
	// Strider
	case "I_MRAP_03_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "SEK"};
		};
	};
	
};

_color;