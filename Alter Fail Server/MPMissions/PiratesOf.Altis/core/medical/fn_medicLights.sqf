/*
	File: fn_copLights.sqf
	Author: mindstorm, modified by Adanteh
	Link: http://forums.bistudio.com/showthread.php?157474-Offroad-Police-sirens-lights-and-underglow
	
	Description:
	Adds the light effect to cop vehicles, specifically the offroad.
*/
Private ["_vehicle","_lightRed","_lightBlue","_lightleft","_lightright","_leftRed"];
_vehicle = _this select 0;
    
if(isNil "_vehicle" OR isNull _vehicle OR !(_vehicle getVariable "lights")) exitWith {};
_lightRed = [20, 0.1, 0.1];
_lightBlue = [0.1, 0.1, 20];

_lightleft = "#lightpoint" createVehicle getpos _vehicle;
sleep 0.4;
_lightleft setLightColor _lightBlue;
_lightleft setLightBrightness 0.1;
_lightleft setLightAmbient [0.1, 0.1, 20];

switch (typeOf _vehicle) do
{
    case "C_Offroad_01_F":
    {
        _lightleft lightAttachObject [_vehicle, [-0.37, 0.0, 0.52]];
    };
    
    case "C_Van_01_box_F":
    {
        _lightleft lightAttachObject [_vehicle, [-0.38,2.2,-0.55]];
    };
    
    case "C_SUV_01_F":
    {
        _lightleft lightAttachObject [_vehicle, [-0.38,2.2,-0.55]];
    };
};

_lightleft setLightAttenuation [0.1, 0, 1000, 130];
_lightleft setLightIntensity 5;
_lightleft setLightFlareSize 0.10;
_lightleft setLightFlareMaxDistance 25;
_lightleft setLightUseFlare true;

_lightright = "#lightpoint" createVehicle getpos _vehicle;
sleep 0.4;
_lightright setLightColor _lightBlue;
_lightright setLightBrightness 0.1;
_lightright setLightAmbient [0.1, 0.1, 20];

switch (typeOf _vehicle) do
{
    case "C_Offroad_01_F":
    {
        _lightright lightAttachObject [_vehicle, [0.37, 0.0, 0.52]];
    };
    
    case "C_Van_01_box_F":
    {
        _lightright lightAttachObject [_vehicle, [0.38,2.2,-0.55]];
    };
    
    case "C_SUV_01_F":
    {
        _lightright lightAttachObject [_vehicle, [0.38,2.2,-0.55]];
    };
};

_lightright setLightAttenuation [0.1, 0, 1000, 130];
_lightright setLightIntensity 5;
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
        sleep 0.30;
        _lightleft setLightBrightness 4;
    }
        else
    {
        _leftRed = true;
        _lightleft setLightBrightness 0.0;
        sleep 0.30;
        _lightright setLightBrightness 4;
    };
    sleep (_this select 1);
};
deleteVehicle _lightleft;
deleteVehicle _lightright;