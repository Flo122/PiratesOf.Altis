#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			default
			{
				["Altis Polizeih�ndler",
					[
						["Binocular",nil,150],
						["NVGoggles",nil,500],
						["Rangefinder",nil,2000],
						["ItemRadio","Smartphone",100],						
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],			
						["ItemWatch",nil,25],
						["ItemCompass",nil,25],
						["ItemMap",nil,25],
						["acc_flashlight",nil,150],
						["acc_pointer_IR",nil,150]
					]
				];
			};
		};
	};
	case "cop_waffen":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) == 0): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) == 1):
			{
				["Polizeianwaerter",
					[
						["hgun_P07_snds_F","Taser Pistole",1000],
						["30Rnd_9x21_Mag","Taser Pistolen Magazin",50]
					]
				];
			};
			case (__GETC__(life_coplevel) == 2):
			{
				["Wachtmeister",
					[
						["hgun_P07_snds_F","Taser Pistole",1000],
						["30Rnd_9x21_Mag","Taser Pistolen Magazin",50],
						["arifle_sdar_F","Taser Gewehr",1000],
						["20Rnd_556x45_UW_mag","Taser Gewehr Magazin",100]
					]
				];
			};
			case (__GETC__(life_coplevel) == 3):
			{
				["Polizeikommisar",
					[
						["hgun_P07_snds_F","Taser Pistole",1000],
						["30Rnd_9x21_Mag","Taser Pistolen Magazin",50],
						["arifle_sdar_F","Taser Gewehr",1000],
						["20Rnd_556x45_UW_mag","Taser Gewehr Magazin",100],
						["arifle_MXC_F",nil,1000],
						["arifle_MX_F",nil,1000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["HandGrenade_Stone","Blendgranate",1000],
						["muzzle_snds_H",nil,500],
						["optic_Arco",nil,500],
						["optic_Hamr",nil,500],
						["optic_MRCO",nil,500]
					]
				];
			};
			case (__GETC__(life_coplevel) == 4):
			{
				["Polizeioberkommisar",
					[
						["hgun_P07_snds_F","Taser Pistole",1000],
						["30Rnd_9x21_Mag","Taser Pistolen Magazin",50],
						["arifle_sdar_F","Taser Gewehr",1000],
						["20Rnd_556x45_UW_mag","Taser Gewehr Magazin",100],
						["arifle_MXC_F",nil,1000],
						["arifle_MX_F",nil,1000],
						["arifle_MX_SW_F",nil,1000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["100Rnd_65x39_caseless_mag",nil,100],
						["HandGrenade_Stone","Blendgranate",1000],
						["muzzle_snds_H",nil,500],
						["optic_Arco",nil,500],
						["optic_Hamr",nil,500],
						["optic_MRCO",nil,500]
					]
				];
			};
			case (__GETC__(life_coplevel) == 5):
			{
				["Polizeihauptkommisar",
					[
						["hgun_P07_snds_F","Taser Pistole",1000],
						["30Rnd_9x21_Mag","Taser Pistolen Magazin",50],
						["arifle_sdar_F","Taser Gewehr",1000],
						["20Rnd_556x45_UW_mag","Taser Gewehr Magazin",100],
						["arifle_MXC_F",nil,1000],
						["arifle_MX_F",nil,1000],
						["arifle_MX_SW_F",nil,1000],
						["arifle_MXM_F",nil,1000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["100Rnd_65x39_caseless_mag",nil,100],
						["HandGrenade_Stone","Blendgranate",1000],
						["muzzle_snds_H",nil,500],
						["optic_Arco",nil,500],
						["optic_Hamr",nil,500],
						["optic_MRCO",nil,500],
						["optic_DMS",nil,500],
						["optic_NVS",nil,500],
						["optic_SOS",nil,500],
						["optic_LRPS",nil,500],
						["optic_DMS",nil,500]
					]
				];
			};
			case (__GETC__(life_coplevel) == 6):
			{
				["Bundespolizei",
					[
						["hgun_P07_snds_F","Taser Pistole",1000],
						["30Rnd_9x21_Mag","Taser Pistolen Magazin",50],
						["arifle_sdar_F","Taser Gewehr",1000],
						["20Rnd_556x45_UW_mag","Taser Gewehr Magazin",100],
						["arifle_MXC_F",nil,1000],
						["arifle_MX_F",nil,1000],
						["arifle_MX_SW_F",nil,1000],
						["arifle_MXM_F",nil,1000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["100Rnd_65x39_caseless_mag",nil,100],
						["srifle_EBR_F",nil,1000],
						["20Rnd_762x51_Mag",nil,100],
						["HandGrenade_Stone","Blendgranate",1000],
						["muzzle_snds_H",nil,500],
						["muzzle_snds_B",nil,500],
						["optic_Arco",nil,500],
						["optic_Hamr",nil,500],
						["optic_MRCO",nil,500],
						["optic_DMS",nil,500],
						["optic_NVS",nil,500],
						["optic_SOS",nil,500],
						["optic_LRPS",nil,500],
						["optic_DMS",nil,500],
						["B_UAV_01_F",nil,1000],
						["B_UavTerminal",nil,1000]
					]
				];
			};
			case (__GETC__(life_coplevel) == 7):
			{
				["Polizeichef",
					[
						["hgun_P07_snds_F","Taser Pistole",1000],
						["30Rnd_9x21_Mag","Taser Pistolen Magazin",50],
						["arifle_sdar_F","Taser Gewehr",1000],
						["20Rnd_556x45_UW_mag","Taser Gewehr Magazin",100],
						["arifle_MXC_F",nil,1000],
						["arifle_MX_F",nil,1000],
						["arifle_MX_SW_F",nil,1000],
						["arifle_MXM_F",nil,1000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["100Rnd_65x39_caseless_mag",nil,100],
						["srifle_EBR_F",nil,1000],
						["20Rnd_762x51_Mag",nil,100],
						["srifle_GM6_F",nil,25000],
						["5Rnd_127x108_Mag",nil,1000],
						["5Rnd_127x108_APDS_Mag",nil,1000],
						["srifle_LRR_F",nil,25000],
						["7Rnd_408_Mag",nil,1000],
						["HandGrenade_Stone","Blendgranate",1000],
						["muzzle_snds_H",nil,500],
						["muzzle_snds_B",nil,500],
						["optic_Arco",nil,500],
						["optic_Hamr",nil,500],
						["optic_MRCO",nil,500],
						["optic_DMS",nil,500],
						["optic_NVS",nil,500],
						["optic_SOS",nil,500],
						["optic_LRPS",nil,500],
						["optic_DMS",nil,500],
						["B_UAV_01_F",nil,1000],
						["B_UavTerminal",nil,1000]
					]
				];
			};
		};
	};
				
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Du bist kein Sanitaeter"};
			default {
				["EMS Handel",
					[
						["ItemRadio","Smartphone",100],
						["ItemGPS",nil,100],
						["NVGoggles",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,50],
						["Medikit",nil,50],						
						["B_Kitbag_sgg",nil,300]
					]
				];
			};
		};
	};
		
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_rebel): {"Du hast keine Rebellenlizenz!"};
			default
			{
				["Piraten Waffenkammer",
					[
						["arifle_TRG21_F","TRG21 5.56mm",75000],
						["arifle_Mk20_F",nil,100000],
						["30Rnd_556x45_Stanag",nil,10000],
						["arifle_Katiba_F",nil,125000],
						["30Rnd_65x39_caseless_green",nil,12500],
						["srifle_DMR_01_F",nil,250000],						
						["10Rnd_762x51_Mag",nil,25000],
						["LMG_Zafir_F",nil,400000],
						["150Rnd_762x51_Box",nil,40000],
						["srifle_EBR_F",nil,600000],
						["20Rnd_762x51_Mag",nil,60000],
						["muzzle_snds_M",nil,40000],
						["muzzle_snds_H",nil,40000],
						["muzzle_snds_B",nil,40000],
						["optic_Yorris",nil,2000],
						["optic_ACO_grn_smg",nil,4000],
						["optic_Holosight_smg",nil,4000],
						["optic_ACO_grn",nil,9000],
						["optic_Aco",nil,9000],
						["optic_Holosight",nil,9000],
						["optic_Arco",nil,15000],						
						["optic_Hamr",nil,15000],
						["optic_MRCO",nil,15000],
						["optic_SOS",nil,40000],
						["optic_LRPS",nil,40000],
						["optic_DMS",nil,40000],
						["optic_NVS",nil,80000],
						["acc_pointer_IR",nil,9000],
						["acc_flashlight",nil,9000]
					]
				];
			};
		};
	};
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_rebel): {"Du hast keine Rebellenlizenz!"};
			default
			{
				["Gang Waffenkammer",
					[
						["arifle_TRG21_F","TRG21 5.56mm",75000],
						["arifle_Mk20_F",nil,100000],
						["30Rnd_556x45_Stanag",nil,10000],
						["arifle_Katiba_F",nil,125000],
						["30Rnd_65x39_caseless_green",nil,12500],
						["srifle_DMR_01_F",nil,250000],						
						["10Rnd_762x51_Mag",nil,25000],
						["LMG_Zafir_F",nil,400000],
						["150Rnd_762x51_Box",nil,40000],
						["srifle_EBR_F",nil,600000],
						["20Rnd_762x51_Mag",nil,60000],
						["ItemRadio","Smartphone",500],
						["NVGoggles",nil,2000],
						["Rangefinder",nil,2000],	
						["ItemGPS",nil,100],
						["ToolKit",nil,2500],
						["FirstAidKit",nil,1500],		
						["ItemWatch",nil,25],
						["ItemCompass",nil,25],
						["muzzle_snds_M",nil,40000],
						["muzzle_snds_H",nil,40000],
						["muzzle_snds_B",nil,40000],
						["optic_Yorris",nil,2000],
						["optic_ACO_grn_smg",nil,4000],
						["optic_Holosight_smg",nil,4000],
						["optic_ACO_grn",nil,9000],
						["optic_Aco",nil,9000],
						["optic_Holosight",nil,9000],
						["optic_Arco",nil,15000],						
						["optic_Hamr",nil,15000],
						["optic_MRCO",nil,15000],
						["optic_SOS",nil,40000],
						["optic_LRPS",nil,40000],
						["optic_DMS",nil,40000],
						["optic_NVS",nil,80000],
						["acc_pointer_IR",nil,9000],
						["acc_flashlight",nil,9000]
					]
				];
			};
		};
	};
			
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_gun): {"Du hast keinen Waffenschein!"};
			default
			{
				["Billy Joe's Waffenladen",
					[
						["hgun_Rook40_F",nil,10000],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_Pistol_heavy_02_F",nil,12500],
						["6Rnd_45ACP_Cylinder",nil,125],
						["hgun_ACPC2_F",nil,15000],
						["9Rnd_45ACP_Mag",nil,150],
						["hgun_Pistol_heavy_01_F",nil,17500],
						["11Rnd_45ACP_Mag",nil,175],
						["hgun_PDW2000_F",nil,20000],
						["16Rnd_9x21_Mag",nil,200],
						["30Rnd_9x21_Mag",nil,400],
						["SMG_01_F",nil,30000],
						["30Rnd_45ACP_Mag_SMG_01",nil,300],
						["arifle_SDAR_F",nil,50000],
						["20Rnd_556x45_UW_mag",nil,2500],
						["arifle_TRG20_F","TRG-20 5.56mm",75000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,3750],
						["optic_Yorris",nil,2500],
						["optic_ACO_grn_smg",nil,5000],
						["optic_Holosight_smg",nil,5000],
						["optic_Aco",nil,10000],
						["optic_Holosight",nil,10000],
						["V_Rangemaster_belt",nil,4900]
					]
				];
			};
		};
	};
		
	case "genstore":
	{
		["Altis Gemischtwaren",
			[
				["ItemRadio","Smartphone",500],
				["Binocular",nil,500],
				["ItemGPS",nil,100],
				["ToolKit",nil,2500],
				["ItemMap",nil,250],
				["FirstAidKit",nil,1500],
				["NVGoggles",nil,2000],
				["ItemWatch",nil,25],
				["ItemCompass",nil,25],
				["Rangefinder",nil,9000]
			]
		];
	};
};