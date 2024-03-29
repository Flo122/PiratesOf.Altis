#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",20000],
			["C_SUV_01_F",30000],
			["C_Van_01_box_F",50000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",50000],
			["O_Heli_Light_02_unarmed_F",100000]
		];
	};
	
	case "pmo_shop":
	{
		_return = [
			["C_SUV_01_F",25000],
			["I_MRAP_03_F",200000]
		];
	};
	
	case "pmo_air_hs": {
		_return = [
			["B_Heli_Light_01_F",200000]
		];
	};
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",10000],
			["C_Hatchback_01_F",15000],
			["C_Offroad_01_F",25000],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",50000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",100000],
			["C_Van_01_fuel_F",130000],
			["I_Truck_02_transport_F",200000],
			["I_Truck_02_covered_F",300000],
			["O_Truck_02_fuel_F",350000],			
			["O_Truck_03_transport_F",550000],
			["O_Truck_03_covered_F",650000],
			["O_Truck_03_fuel_F",700000],
			["O_Truck_03_device_F",4000000],
			["B_Truck_01_transport_F",1000000],
			["B_Truck_01_covered_F",1500000],
			["B_Truck_01_fuel_F",1700000],
			["B_Truck_01_box_F",2200000],
			["B_Truck_01_ammo_F",2500000]
		];	
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",1000000],
			["O_Heli_Light_02_unarmed_F",2000000],
			["I_Heli_Transport_02_F",4000000]
		];
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000],
			["B_SDV_01_F",1000000]
		];
	};
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["C_SUV_01_F",25000],
			["O_MRAP_02_F",3000000],
			["B_Heli_Light_01_F",650000],
			["O_Heli_Light_02_unarmed_F",1500000],
			["I_Heli_light_03_unarmed_F",2500000],
			["I_Heli_Transport_02_F",3500000]
		];
		
		if(license_civ_rebel) then
		{
			_return pushBack
			["B_G_Offroad_01_armed_F",5000000];
		};
	};
			
	case "cop_car":
	{
		_return pushBack
		["C_Offroad_01_F",5000];
		if(__GETC__(life_coplevel) > 1) then
		{		
			_return pushBack
			["C_SUV_01_F",20000];
		};
		if(__GETC__(life_coplevel) > 2) then
		{		
			_return pushBack
			["C_Hatchback_01_F",25000];
		};		
		if(__GETC__(life_coplevel) > 3) then
		{
			_return pushBack
			["B_MRAP_01_F",30000];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return pushBack
			["B_MRAP_01_hmg_F",250000];
			_return pushBack
			["C_Hatchback_01_sport_F",250000];
		};
	};
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_return pushBack
			["B_Heli_Light_01_F",75000];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["O_Heli_Light_02_unarmed_F",100000];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return pushBack
			["B_Heli_Transport_01_F",200000];
			_return pushBack
			["I_Heli_light_03_unarmed_F",300000];
		};
	};
	
	case "sek_hq":
	{
		if(license_cop_sek) then
		{
			_return pushBack
			["I_MRAP_03_F",30000];
			_return pushBack
			["I_MRAP_03_hmg_F",500000];
			_return pushBack
			["B_MRAP_01_F",30000];
			_return pushBack
			["B_MRAP_01_hmg_F",250000];
			_return pushBack
			["C_Hatchback_01_sport_F",250000];
			_return pushBack
			["B_Heli_Transport_01_F",200000];
			_return pushBack
			["I_Heli_light_03_unarmed_F",300000];
		};
	};
		
	case "cop_ship":
	{
		_return = [
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};

	case "donator":
	{		
		if(license_civ_donator) then
		{
			_return pushBack
			["C_Hatchback_01_sport_F",500000];
			_return pushBack
			["B_MRAP_01_F",2500000];
			_return pushBack
			["B_Truck_01_box_F",1900000];
			_return pushBack
			["O_Truck_03_device_F",3500000];
			_return pushBack
			["I_Heli_light_03_unarmed_F",2000000];
			_return pushBack
			["I_Heli_Transport_02_F",3000000];
		};
	};
};

_return;
