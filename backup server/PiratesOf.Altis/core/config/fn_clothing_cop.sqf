#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret set[count _ret,["U_Rangemaster","Cop Uniform",25]];
		_ret set[count _ret,["U_B_Wetsuit",nil,25]];
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_vest","Polizeiuniform",350]];
			_ret set[count _ret,["U_B_CombatUniform_mcam","Einsatzuniform",350]];
		};
		if(license_cop_sek) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_worn","SEK-Einsatzuniform",550]];
		};
		if(__GETC__(life_coplevel) > 7) then
		{
			_ret set[count _ret,["U_C_Poor_1","Chef!",120]];
		};
	};
	
	//Hats 
	case 1:
	{
		_ret set[count _ret,["H_Booniehat_khk_hs",nil,75]];
		if(license_cop_sek) then
		{
			_ret set[count _ret,["H_Beret_blk",nil,100]];
		};
		if(__GETC__(life_coplevel) > 7) then
		{
			_ret set[count _ret,["H_Beret_02","Chef!",120]];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Diving",nil,100],
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		_ret set[count _ret,["V_RebreatherB",nil,500]];
		_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["V_PlateCarrier2_rgr",nil,1500]];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Carryall_mcamo",nil,3500]
		];
	};
};

_ret;