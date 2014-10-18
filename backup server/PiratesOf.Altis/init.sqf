enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.3.5";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";

StartProgress = true;
[] execVM "scripts\AdminTool\loop.sqf";
[] execVM "scripts\fastrope.sqf";
[] execVM "scripts\IntLight.sqf";
[] execVM "welcomeMessage.sqf";
[] execVM "IgiLoad\IgiLoadInit.sqf";

waitUntil {!isNil "mod_cruiseControl"};
call mod_cruiseControl;

/* MAC_fnc_switchMove = {
    private["_object","_anim"];
    _object = _this select 0;
    _anim = _this select 1;

    _object switchMove _anim;
}; */