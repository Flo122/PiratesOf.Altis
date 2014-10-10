/*
    File: fn_APHLights.sqf
    Author: mindstorm
    Link: http://forums.bistudio.com/showthread.php?157474-Offroad-Police-sirens-lights-and-underglow
       
    Description:
    Adds the light effect to cop vehicles, specifically the offroad.
*/
Private ["_vehicle","_lightRed","_lightBlue","_lightleft","_lightright","_leftRed"];
_vehicle = _this select 0;
       
if(isNil "_vehicle" OR isNull _vehicle OR !(_vehicle getVariable "lights")) exitWith {};
_lightRed = [20, 10, 0];
_lightBlue = [20, 10, 0];

_lightleft = "#lightpoint" createVehicle getpos _vehicle;  
sleep 0.2;
_lightleft setLightColor _lightBlue;
_lightleft setLightBrightness 0.2;
_lightleft setLightAmbient [20, 10, 0];

switch (typeOf _vehicle) do
{
        case "C_Offroad_01_F":
    {
        _lightleft lightAttachObject [_vehicle, [-0.37, 0.0, 0.56]];
    };
   
    case "B_Truck_01_mover_F":
    {
        _lightleft lightAttachObject [_vehicle, [-0.75, -1.2, 0.0]];
    };
       
    case "B_Heli_Light_01_F":
    {
        _lightleft lightAttachObject [_vehicle, [-0.37, 0.0, 0.56]];
    };
       
    case "I_Heli_Transport_02_F":
    {
        _lightleft lightAttachObject [_vehicle, [-0.5, 0.0, 0.96]];
    };
};
 
_lightleft setLightAttenuation [0.181, 0, 1000, 130];
_lightleft setLightIntensity 2;
_lightleft setLightFlareSize 0.10;
_lightleft setLightFlareMaxDistance 25;
_lightleft setLightUseFlare true;
 
_lightright = "#lightpoint" createVehicle getpos _vehicle;  
sleep 0.2;
_lightright setLightColor _lightBlue;
_lightright setLightBrightness 0.2;  
_lightleft setLightAmbient [20, 10, 0];
 
switch (typeOf _vehicle) do
{
        case "C_Offroad_01_F":
    {
        _lightright lightAttachObject [_vehicle, [0.37, 0.0, 0.56]];
    };
   
    case "B_Truck_01_mover_F":
    {
        _lightright lightAttachObject [_vehicle, [0.75, -1.2, 0.0]];
    };
       
    case "B_Heli_Light_01_F":
    {
        _lightright lightAttachObject [_vehicle, [0.37, 0.0, 0.56]];
    };
       
    case "I_Heli_Transport_02_F":
	{
		_lightright lightAttachObject [_vehicle, [0.5, 0.0, 0.96]];
	};
 
};
 
_lightright setLightAttenuation [0.181, 0, 1000, 130];
_lightright setLightIntensity 2;
_lightright setLightFlareSize 0.10;
_lightright setLightFlareMaxDistance 25;
_lightright setLightUseFlare true;
 
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
                _lightleft setLightBrightness 6;  
        }  
                else  
        {  
                _leftRed = true;  
                _lightleft setLightBrightness 0.0;  
                sleep 0.01;
                _lightright setLightBrightness 6;  
        };  
        sleep (_this select 1);  
};  
deleteVehicle _lightleft;
deleteVehicle _lightright;