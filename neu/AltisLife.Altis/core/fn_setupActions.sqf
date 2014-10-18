/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case west:
	{
		//Straßensperren aufheben
		life_actions = life_actions + [player addAction["Sperre aufheben",life_fnc_packupmauer,"",0,false,false,"",' _mauer = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0; !isNil "_mauer" && !isNil {(_mauer getVariable "item")}']];
		//Nagelbänder aufheben
		life_actions = life_actions + [player addAction["Nagelband aufheben",life_fnc_packupSpikes,"",0,false,false,"",' _spikes = nearestObjects[getPos player,["Land_Razorwire_F"],8] select 0; !isNil "_spikes" && !isNil {(_spikes getVariable "item")}']];
		//Lights ON
		life_actions = life_actions + [player addAction["Aussteigen",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];
		//Hinsetzen
		life_actions = life_actions + [player addAction["Hinsetzen",life_fnc_sitDown,cursorTarget,10,false,false,"",' !isNull cursorTarget && (player distance cursorTarget) < 3 && (cursorTarget isKindOf "Land_CampingChair_V1_F" || cursorTarget isKindOf "Land_ChairWood_F" || cursorTarget isKindOf "Land_ChairPlastic_F")']];
		//Aufstehen
		life_actions = life_actions + [player addAction["Aufstehen", life_fnc_sitDown,cursorTarget,10,false,false,"",'life_sitting']];
	};
	
	case civilian:
	{
		//Hinsetzen
		life_actions = life_actions + [player addAction["Hinsetzen",life_fnc_sitDown,cursorTarget,10,false,false,"",' !isNull cursorTarget && (player distance cursorTarget) < 3 && (cursorTarget isKindOf "Land_CampingChair_V1_F" || cursorTarget isKindOf "Land_ChairWood_F" || cursorTarget isKindOf "Land_ChairPlastic_F")']];
		//Aufstehen
		life_actions = life_actions + [player addAction["Aufstehen", life_fnc_sitDown,cursorTarget,10,false,false,"",'life_sitting']];
	};
};