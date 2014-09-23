/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_I_G_Story_Protagonist_F","Dienstuniform",1000]
		];
	};
	//Hats
	case 1:
	{
		[
			["H_Bandanna_khk_hs",nil,1000],
			["H_Booniehat_khk_hs",nil,1000],
			["H_Cap_oli_hs",nil,1000],
			["H_HelmetSpecB_blk",nil,1000]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,1000],
			["V_PlateCarrier1_blk","Anti Gas Weste",200000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_Bergen_blk",nil,1000]
		];
	};
};