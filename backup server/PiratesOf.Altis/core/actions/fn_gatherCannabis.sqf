/*
	File: fn_gatherCannabis.sqf
	
	Description:
	Gathers cannabis?
*/
private["_sum","_dice"];
_dice = round(random 2) + 1;
_sum = ["cannabis",_dice,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_gather = true;
	titleText[format[(localize "STR_NOTF_Gathering"),localize "STR_Item_Cannabis"],"PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 2;
	if(([true,"cannabis",_sum] call life_fnc_handleInv)) then
	{
		titleText[format[(localize "STR_NOTF_Picked"),_sum,localize "STR_Item_Cannabis"],"PLAIN"];
	};
}
	else
{
	hint localize "STR_NOTF_InvFull";
};

life_action_gather = false;