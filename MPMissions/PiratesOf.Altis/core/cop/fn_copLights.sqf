/*
	File: fn_copLights.sqf
	Author: mindstorm
	Link: http://forums.bistudio.com/showthread.php?157474-Offroad-Police-sirens-lights-and-underglow
	
	Description:
	Adds the light effect to cop vehicles, specifically the offroad.
*/
Private ["_vehicle","_lightRed","_lightBlue","_lightleft","_lightright","_leftRed"];
_vehicle = _this select 0;
	
if(isNil "_vehicle" OR isNull _vehicle OR !(_vehicle getVariable "lights")) exitWith {};
_lightRed = [0.1, 0.1, 20];
_lightBlue = [0.1, 0.1, 20];

_lightleft = "#lightpoint" createVehicle getpos _vehicle;   
sleep 0.2;
_lightleft setLightColor _lightBlue; 
_lightleft setLightBrightness 0.1;  
_lightleft setLightAmbient [0.1, 0.1, 20];

switch (typeOf _vehicle) do
{
	case "B_Quadbike_01_F":
    {
        _lightleft lightAttachObject [_vehicle, [-0.5, -0.8, -0.5]];
    };	
	
	case "C_Offroad_01_F":
    {
        _lightleft lightAttachObject [_vehicle, [-0.37, 0.0, 0.52]];
    };
    
    case "B_MRAP_01_F":
    {
        _lightleft lightAttachObject [_vehicle, [-0.37,-1.2,0.42]];
    };
	
	case "B_MRAP_01_hmg_F":
	{
		_lightleft lightAttachObject [_vehicle, [-1, -2.8, 0.05]];
	};	
	
	case "I_MRAP_03_F":
	{
		_lightleft lightAttachObject [_vehicle, [-1.13, -0.58, 0.44]];
	};
	
    case "C_SUV_01_F":
    {
        _lightleft lightAttachObject [_vehicle, [-0.38,2.2,-0.55]];
    };
	
	case "C_Hatchback_01_sport_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.6, 2, -0.95]];
	};	
	
	case "C_Hatchback_01_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.6, 2, -0.95]];
	};
	
	case "B_Heli_Light_01_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.37, 0.0, 0.56]];
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.37, 0.0, 0.56]];
	};
	
	case "B_Heli_Transport_01_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.5, 0.0, 0.96]];
	};
	
	case "I_Heli_light_03_unarmed_F":
	{
		_lightleft lightAttachObject [_vehicle, [-0.37, 0.0, 0.56]];
	};
};

_lightleft setLightAttenuation [0.181, 0, 1000, 130]; 
_lightleft setLightIntensity 2;
_lightleft setLightFlareSize 0.10;
_lightleft setLightFlareMaxDistance 25;
_lightleft setLightUseFlare true;

_lightright = "#lightpoint" createVehicle getpos _vehicle;   
sleep 0.4;
_lightright setLightColor _lightBlue; 
_lightright setLightBrightness 0.2;  
_lightright setLightAmbient [0.1, 0.1, 20]; 

switch (typeOf _vehicle) do
{
	case "B_Quadbike_01_F":
    {
        _lightright lightAttachObject [_vehicle, [0.5, -0.8, -0.45]];
    };	
	
	case "C_Offroad_01_F":
    {
        _lightright lightAttachObject [_vehicle, [0.37, 0.0, 0.52]];
    };
    
    case "B_MRAP_01_F":
    {
        _lightright lightAttachObject [_vehicle, [0.37,-1.2,0.42]];
    };
	
	case "B_MRAP_01_hmg_F":
	{
		_lightright lightAttachObject [_vehicle, [1, -2.8, 0.05]];
	};	
	
	case "I_MRAP_03_F":
	{
		_lightright lightAttachObject [_vehicle, [1.13, -0.58, 0.44]];
	};
    
    case "C_SUV_01_F":
    {
        _lightright lightAttachObject [_vehicle, [0.38,2.2,-0.55]];
    };
	
	case "C_Hatchback_01_sport_F":
	{
		_lightright lightAttachObject [_vehicle, [0.6, 2, -0.95]];
	};	
	
	case "C_Hatchback_01_F":
	{
		_lightright lightAttachObject [_vehicle, [0.6, 2, -0.95]];
	};
	
	case "B_Heli_Light_01_F":
	{
		_lightright lightAttachObject [_vehicle, [0.37, 0.0, 0.56]];
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		_lightright lightAttachObject [_vehicle, [0.37, 0.0, 0.56]];
	};
	
	case "B_Heli_Transport_01_F":
	{
		_lightright lightAttachObject [_vehicle, [0.5, 0.0, 0.96]];
	};
	
	case "I_Heli_light_03_unarmed_F":
	{
		_lightright lightAttachObject [_vehicle, [0.37, 0.0, 0.56]];
	};
};
  
_lightright setLightAttenuation [0.181, 0, 1000, 130]; 
_lightright setLightIntensity 2;
_lightright setLightFlareSize 0.10;
_lightright setLightFlareMaxDistance 25;
_lightright setLightUseFlare true;

//ARE YOU ALL HAPPY?!?!?!?!?!?!?!?!?%#?@WGD?TGD?BN?ZDHBFD?GA
_lightleft setLightDayLight true;
_lightright setLightDayLight true;

_leftRed = true;  
while{ (alive _vehicle)} do  
{  
	if(!(_vehicle getVariable "lights")) exitWith {};
	if(_leftRed) then  
	{  
		_leftRed = false;  
		_lightright setLightBrightness 0.0;  
		sleep 0.15;
		_lightleft setLightBrightness 4;  
	}  
		else  
	{  
		_leftRed = true;  
		_lightleft setLightBrightness 0.0;  
		sleep 0.01;
		_lightright setLightBrightness 4;  
	};  
	sleep (_this select 1);  
};  
deleteVehicle _lightleft;
deleteVehicle _lightright;