#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

switch (__GETC__(life_coplevel)) do {
	case 1: { life_paycheck = 4000; };
	case 2: { life_paycheck = 5000; };
	case 3: { life_paycheck = 6000; };
	case 4: { life_paycheck = 7000; };
	case 5: { life_paycheck = 8000; };
	case 6: { life_paycheck = 9000; };
	case 7: { life_paycheck = 10000; };
	default { life_paycheck = 3000; };
};

if(!(str(player) in ["cop_1","cop_2","cop_3","cop_4"])) then {
	if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_Rangemaster"};
player setObjectTextureGlobal [0,"textures\uniforms\kadett_uniform.paa"];
waitUntil {uniform player != "U_Rangemaster"};
};
};

[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_B_CombatUniform_mcam_vest"};
player setObjectTextureGlobal [0,"textures\uniforms\polizei_uniform.paa"];
waitUntil {uniform player != "U_B_CombatUniform_mcam_vest"};
};
};

[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_B_CombatUniform_mcam"};
player setObjectTextureGlobal [0,"textures\uniforms\polizei_einsatz_uniform.paa"];
waitUntil {uniform player != "U_B_CombatUniform_mcam"};
};
};

[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_B_CombatUniform_mcam_worn"};
player setObjectTextureGlobal [0,"textures\uniforms\sek_uniform.paa"];
waitUntil {uniform player != "U_B_CombatUniform_mcam_worn"};
};
};

[] spawn
{
while {true} do
{
waitUntil {uniform player == "U_C_Poor_1"};
player setObjectTextureGlobal [0,"textures\uniforms\chef_uniform.paa"];
waitUntil {uniform player != "U_C_Poor_1"};
};
};