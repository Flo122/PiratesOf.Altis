/*
	File: fn_sendChannel.sqf
	Author: alleskapot & Lifted
	Thanks again for all the help alleskapot!
	Description:
	Ermöglicht senden bzw. die Abfrage des Geschriebenen.

*/

private["_message"];
disableSerialization;

waitUntil {!isnull (findDisplay 9000)};

if (life_cash < 100000 ) exitWith { systemChat "Du brauch $100.000 um eine Nachricht zu schicken!"; };
if (playerSide != civilian ) exitWith { systemChat "Du musst Zivilist sein!"; };
if (life_channel_send) exitWith { systemChat "Warte 10 Minuten bevor du einen neue Nachricht sendest!"; };
life_cash = life_cash - 100000;

_message = ctrlText 9001;

[format ["Piraten News: %1",_message],(player getVariable["realname",name player])] call life_fnc_AAN;
life_channel_send = false;

[] spawn
{
	sleep 600;
	life_channel_send = true;
};