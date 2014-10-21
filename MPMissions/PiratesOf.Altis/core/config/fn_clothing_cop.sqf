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
		_ret pushBack ["U_B_CombatUniform_mcam","Streife",25];
		_ret pushBack ["U_B_Wetsuit",nil,25];
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["U_B_CombatUniform_mcam_worn","Einsatz",50];
		};
		if(license_cop_sek) then
		{
			_ret pushBack ["U_B_CombatUniform_mcam_vest","SEK",100];
		};
	};
	
	//Hats
	case 1:
	{
		_ret pushBack ["H_Booniehat_khk_hs",nil,75];
		_ret pushBack ["H_Cap_blk",nil,75];
		if(license_cop_sek) then
		{
			_ret pushBack ["H_Beret_blk",nil,100];
			_ret pushBack ["H_HelmetSpecB_blk",nil,100];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["H_Beret_blk_POLICE",nil,120];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_ret pushBack ["H_Beret_02","Chef!",120];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Diving",nil,10],
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Balaclava_blk",SEK,55]
		];
	};
	
	//Vest
	case 3:
	{
		_ret pushBack ["V_RebreatherB",nil,50];
		_ret pushBack ["V_Rangemaster_belt",nil,80];
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["V_PlateCarrier2_rgr",nil,150];
		};
		_ret pushBack["V_PlateCarrier1_blk","Anti Gas Weste",2500];
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Carryall_mcamo",nil,100]
		];
	};
};

_ret;