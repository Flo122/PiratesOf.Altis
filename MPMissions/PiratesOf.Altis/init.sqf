enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo ="Altis Life RPG v3.1.4.8";
[] execVM"briefing.sqf"; //Load Briefing
[] execVM"KRON_Strings.sqf";

RscSpectator_allowFreeCam = false;

StartProgress = true;
"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};

//Scripts
//[] execVM "scripts\zlt_fastrope.sqf";
[] execVM "welcomeMessage.sqf";
[] execVM "scripts\safezone.sqf";
[] execVM "scripts\teargas.sqf";

MAC_fnc_switchMove = {
    private["_object","_anim"];
    _object = _this select 0;
    _anim = _this select 1;

    _object switchMove _anim;
    
};

[] spawn
{
    sleep 30;
    [] call life_fnc_updateClothing;
};

_buildings = ["safezone_1"];
{
	_pos = getMarkerPos _x;
	_nearObjects = nearestObjects [_pos,["Land_i_House_Big_02_V1_F","Land_i_House_Big_02_V2_F","Land_i_House_Big_02_V3_F","Land_i_House_Big_01_V1_F","Land_i_House_Big_01_V2_F","Land_i_House_Big_01_V3_F","Land_i_Garage_V1_F","Land_i_Garage_V2_F","Land_i_House_Small_01_V1_F","Land_i_House_Small_01_V2_F","Land_i_House_Small_01_V3_F","Land_i_House_Small_02_V1_F","Land_i_House_Small_02_V2_F","Land_i_House_Small_02_V3_F","Land_i_House_Small_03_V1_F","Land_i_Stone_HouseSmall_V2_F","Land_i_Stone_HouseSmall_V1_F","Land_i_Stone_HouseSmall_V3_F","Land_dp_smallFactory_F","Land_i_Addon_03_V1_F","Land_i_Addon_03mid_V1_F","Land_i_Addon_04_V1_F","Land_i_Barracks_V1_F","Land_i_Barracks_V2_F","Land_i_Shop_01_V1_F","Land_i_Shop_02_V1_F","Land_i_Stone_HouseBig_V1_F","Land_i_Stone_HouseSmall_V1_F","Land_i_Stone_Shed_V1_F","Land_u_Addon_01_V1_F","Land_u_Addon_02_V1_F","Land_u_House_Small_01_V1_F","Land_u_House_Small_02_V1_F","Land_Kiosk_redburger_F"],500];
	{
		_x allowDamage false;
	}forEach _nearObjects;
} forEach _buildings;

fn_whoDunnit = compile preprocessFileLineNumbers "scripts\fn_whoDunnit.sqf";


