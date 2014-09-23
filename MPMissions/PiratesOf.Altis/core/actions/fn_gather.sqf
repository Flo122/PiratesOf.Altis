/*
	File: fn_gather.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for gathering.
*/
if (life_action_gather) exitWith {hint "Du sammelst bereits!"};

private["_gather","_itemWeight","_diff","_itemName","_val","_resourceZones","_zone","_dice"];
_dice = round(random 3) +1;
_resourceZones = ["apple_1","apple_2","apple_3","apple_4","peaches_1","peaches_2","peaches_3","peaches_4","heroin_1","cocaine_1","weed_1","trauben_1","zucker_1","getreide_1","hopfen_1","tabak_1"];
_zone = "";

//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 50) exitWith {_zone = _x;};
} foreach _resourceZones;

if(_zone == "") exitWith {
	life_action_inUse = false;
};

//Get the resource that will be gathered from the zone name...
switch(true) do {
	case (_zone in ["apple_1","apple_2","apple_3","apple_4"]): {_gather = "apple"; _val = _dice;};
	case (_zone in ["peaches_1","peaches_2","peaches_3","peaches_4"]): {_gather = "peach"; _val = _dice;};
	case (_zone in ["heroin_1"]): {_gather = "heroinu"; _val = _dice;};
	case (_zone in ["cocaine_1"]): {_gather = "cocaine"; _val = _dice;};
	case (_zone in ["weed_1"]): {_gather = "cannabis"; _val = _dice;};
	case (_zone in ["trauben_1"]): {_gather = "traubenu"; _val = _dice;};
	case (_zone in ["zucker_1"]): {_gather = "zuckeru"; _val = _dice;};
	case (_zone in ["getreide_1"]): {_gather = "getreideu"; _val = _dice;};
	case (_zone in ["hopfen_1"]): {_gather = "hopfenu"; _val = _dice;};
	case (_zone in ["tabak_1"]): {_gather = "tabaku"; _val = _dice;};
	default {""};
};
//gather check??
if(vehicle player != player) exitWith {};

_diff = [_gather,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
life_action_gather = true;
[player,"harvest"] call life_fnc_globalSound;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_gather,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_NOTF_Gather_Success",_itemName,_diff],"PLAIN"];
};

life_action_gather = false;