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
				["Altis Polizeihändler",
					[
						["Binocular",nil,150],
						["NVGoggles",nil,500],
						["Rangefinder",nil,2000],	
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],			
						["ItemWatch",nil,25],
						["ItemCompass",nil,25],
						["acc_flashlight",nil,150],
						["acc_pointer_IR",nil,150]
					]
				];
			};
		};
	};
	case "cop_pa":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			default
			{
				["Polizeianwaerter Haendler",
					[
						["hgun_P07_snds_F","Taser Pistole",2000],
						["16Rnd_9x21_Mag","Taser Pistolen Magazin",50]
					]
				];
			};
		};
	};
	case "cop_wm":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 2): {"Du bist kein Wachtmeister!"};
			default
			{
				["Wachtmeister Haendler",
					[
						["hgun_P07_snds_F","Taser Pistole",2000],
						["16Rnd_9x21_Mag","Taser Pistolen Magazin",50],
						["arifle_sdar_F","Gummigeschossgewehr",5000],
						["20Rnd_556x45_UW_mag","Gummigeschoss Magazin",125]
					]
				];
			};
		};
	};
	case "cop_pk":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 3): {"Du bist kein Polizeikommisar!"};
			default
			{
				["Polizeikommisar Haendler",
					[
						["hgun_P07_snds_F","Taser Pistole",2000],
						["16Rnd_9x21_Mag","Taser Pistolen Magazin",50],
						["arifle_sdar_F","Gummigeschossgewehr",5000],
						["20Rnd_556x45_UW_mag","Gummigeschoss Magazin",125],
						["SMG_02_F",nil,10000],
						["30Rnd_9x21_Mag",nil,200],
						["optic_Aco_smg",nil,200],
						["optic_Holosight_smg",nil,200]
					]
				];
			};
		};
	};
	case "cop_pok":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 4): {"Du bist kein Polizeioberkommisar!"};
			default
			{
				["Polizeioberkommisar Haendler",
					[
						["arifle_MXC_F",nil,1000],
						["muzzle_snds_H",nil,500],
						["30Rnd_65x39_caseless_mag",nil,100],
						["optic_Arco",nil,500],
						["optic_Hamr",nil,500],
						["optic_MRCO",nil,500]
					]
				];
			};
		};
	};
	case "cop_phk":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 5): {"Du bist kein Polizeihauptkommisar!"};
			default
			{
				["Polizeihauptkommisar Haendler",
					[
						["arifle_MXC_F",nil,1000],
						["arifle_MX_F",nil,1000],
						["arifle_MX_SW_F",nil,1000],
						["muzzle_snds_H",nil,500],
						["30Rnd_65x39_caseless_mag",nil,100],
						["optic_Arco",nil,500],
						["optic_Hamr",nil,500],
						["optic_MRCO",nil,500]
					]
				];
			};
		};
	};
	case "cop_bupo":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) < 6): {"Du bist kein Bundespolizist!"};
			default
			{
				["Bundespolizei Haendler",
					[
						["arifle_MXC_F",nil,1000],
						["arifle_MX_F",nil,1000],
						["arifle_MX_SW_F",nil,1000],
						["arifle_MXM_F",nil,1000],
						["muzzle_snds_H",nil,500],
						["30Rnd_65x39_caseless_mag",nil,100],
						["100Rnd_65x39_caseless_mag",nil,100],
						["optic_Arco",nil,500],
						["optic_Hamr",nil,500],
						["optic_MRCO",nil,500],
						["optic_DMS",nil,500]
					]
				];
			};
		};
	};
	case "cop_sek":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (!license_cop_sek): {"Du gehörst nicht zum SEK!"};
			default
			{
				["SEK Händler",
					[						
						["arifle_MXC_Black_F",nil,1000],
						["arifle_MX_Black_F",nil,1000],
						["arifle_MX_SW_Black_F",nil,1000],
						["arifle_MXM_Black_F",nil,1000],
						["muzzle_snds_H",nil,500],
						["30Rnd_65x39_caseless_mag",nil,100],
						["100Rnd_65x39_caseless_mag",nil,100],
						["HandGrenade_Stone","Flashbang",1000],
						["optic_Arco",nil,500],
						["optic_Hamr",nil,500],
						["optic_MRCO",nil,500],
						["optic_DMS",nil,500],
						["optic_NVS",nil,500]
					]
				];
			};
		};
	};
	case "cop_sek_sniper":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (!license_cop_sek_sniper): {"Du hast keine Scharfschuetzenausbildung!"};
			default
			{
				["SEK Scharfschuetzen Haendler",
					[						
						["srifle_GM6_F",nil,100000],
						["5Rnd_127x108_Mag",nil,5000],
						["5Rnd_127x108_APDS_Mag",nil,5000],
						["srifle_LRR_F",nil,100000],
						["7Rnd_408_Mag",nil,5000],
						["optic_SOS",nil,500],
						["optic_LRPS",nil,500],
						["optic_DMS",nil,500],
						["optic_NVS",nil,500]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Du bist kein EMS Medic"};
			default {
				["EMS Handel",
					[
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
						["arifle_SDAR_F",nil,25000],
						["20Rnd_556x45_UW_mag",nil,4000],
						["arifle_TRG21_F",nil,50000],
						["arifle_TRG20_F",nil,50000],
						["arifle_Mk20_F",nil,50000],
						["30Rnd_556x45_Stanag",nil,5000],
						["arifle_Katiba_F",nil,75000],
						["30Rnd_65x39_caseless_green",nil,6000],
						["srifle_DMR_01_F",nil,100000],						
						["10Rnd_762x51_Mag",nil,7000],
						["LMG_Zafir_F",nil,125000],
						["150Rnd_762x51_Box",nil,8000],
						["srifle_EBR_F",nil,150000],
						["20Rnd_762x51_Mag",nil,9000],
						["srifle_LRR_F",nil,500000],
						["7Rnd_408_Mag",nil,5000],
						["muzzle_snds_M",nil,10000],
						["muzzle_snds_H",nil,10000],
						["muzzle_snds_B",nil,10000],
						["optic_ACO_grn",nil,3500],
						["optic_Aco",nil,3500],
						["optic_Holosight",nil,5000],
						["optic_Arco",nil,10000],						
						["optic_Hamr",nil,10000],
						["optic_MRCO",nil,10000],
						["optic_SOS",nil,25000],
						["optic_LRPS",nil,25000],
						["optic_DMS",nil,25000],
						["optic_NVS",nil,50000],
						["acc_pointer_IR",nil,2500],
						["acc_flashlight",nil,2500],
						["NVGoggles",nil,2000],
						["Rangefinder",nil,2000],	
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],		
						["ItemWatch",nil,25],
						["ItemCompass",nil,25]
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
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["16Rnd_9x21_Mag",nil,50],
						["9Rnd_45ACP_Mag",nil,50],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};
		
	case "genstore":
	{
		["Altis Gemischtwaren",
			[
				["Binocular",nil,500],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["ItemWatch",nil,25],
				["ItemCompass",nil,25]
			]
		];
	};
};