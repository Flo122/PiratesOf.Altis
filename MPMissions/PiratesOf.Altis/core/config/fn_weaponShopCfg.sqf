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
						["SmokeShellGreen","Traenengas",1000],
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
						["SmokeShellGreen","Traenengas",1000],
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
						["SmokeShellGreen","Traenengas",1000],
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
						["SmokeShellGreen","Traenengas",1000],
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
						["SmokeShellGreen","Traenengas",1000],
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
	
	case "cop_sek":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (!license_cop_sek): {"Du gehörst nicht zum SEK!"};
			default
			{
				["PEK",
					[						
						["hgun_P07_snds_F","Taser Pistole",1000],
						["30Rnd_9x21_Mag","Taser Pistolen Magazin",50],
						["arifle_sdar_F","Taser Gewehr",1000],
						["20Rnd_556x45_UW_mag","Taser Gewehr Magazin",100],
						["arifle_MXC_Black_F",nil,1000],
						["arifle_MX_Black_F",nil,1000],
						["arifle_MX_SW_Black_F",nil,1000],
						["arifle_MXM_Black_F",nil,1000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["100Rnd_65x39_caseless_mag",nil,100],
						["srifle_EBR_F",nil,1000],
						["20Rnd_762x51_Mag",nil,100],
						["srifle_GM6_F",nil,25000],
						["5Rnd_127x108_Mag",nil,1000],
						["5Rnd_127x108_APDS_Mag",nil,1000],
						["srifle_LRR_F",nil,25000],
						["7Rnd_408_Mag",nil,1000],
						["SmokeShellGreen","Traenengas",1000],
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
	
	case "pmo_basic":
	{
		switch (true) do 
		{
			case (playerSide != east): {"Du bist kein pmo"};
			default {
				["Altis Sicherheitsdienst",
					[
						["hgun_P07_snds_F",nil,1000],
						["16Rnd_9x21_Mag",nil,50],
						["arifle_MXC_Black_F",nil,1000],
						["arifle_MX_Black_F",nil,1000],
						["arifle_MX_SW_Black_F",nil,1000],
						["arifle_MXM_Black_F",nil,1000],
						["muzzle_snds_H",nil,500],
						["30Rnd_65x39_caseless_mag",nil,100],
						["100Rnd_65x39_caseless_mag",nil,100],
						["optic_Arco",nil,500],
						["optic_Hamr",nil,500],
						["optic_MRCO",nil,500],
						["optic_DMS",nil,500],
						["optic_NVS",nil,500],
						["optic_SOS",nil,500],
						["optic_LRPS",nil,500]
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
						["20Rnd_762x51_Mag",nil,60000]
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
						["ItemCompass",nil,25]
					]
				];
			};
		};
	};
	
	case "rebel_scopes":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_rebel): {"Du hast keine Rebellenlizenz!"};
			default
			{
				["Piraten Waffenkammer",
					[
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
	
	case "donator_legal":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_donator): {"Du bist kein Donator!"};
			case (!license_civ_gun): {"Du hast keinen Waffenschein!"};
			default
			{
				["Donator Fundgrube",
					[
						["hgun_Rook40_F",nil,7500],
						["30Rnd_9x21_Mag",nil,75],
						["hgun_Pistol_heavy_02_F",nil,10000],
						["6Rnd_45ACP_Cylinder",nil,100],
						["hgun_ACPC2_F",nil,12500],
						["9Rnd_45ACP_Mag",nil,10],
						["hgun_Pistol_heavy_01_F",nil,15000],
						["11Rnd_45ACP_Mag",nil,150],
						["hgun_PDW2000_F",nil,15000],
						["16Rnd_9x21_Mag",nil,150],
						["30Rnd_9x21_Mag",nil,300],
						["SMG_01_F",nil,25000],
						["30Rnd_45ACP_Mag_SMG_01",nil,250],
						["arifle_SDAR_F",nil,40000],
						["20Rnd_556x45_UW_mag",nil,2000],
						["arifle_TRG20_F","TRG-20 5.56mm",65000],
						["30Rnd_556x45_Stanag_Tracer_Red",nil,3000]
					]
				];
			};
		};
	};
	
	case "donator_illegal":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_donator): {"Du bist kein Donator!"};
			case (!license_civ_rebel): {"Du hast keine Rebellenlizenz!"};
			default
			{
				["Donator Fundgrube",
					[
						["arifle_TRG21_F","TRG21 5.56mm",50000],
						["arifle_Mk20_F",nil,75000],
						["30Rnd_556x45_Stanag",nil,7500],
						["arifle_Katiba_F",nil,100000],
						["30Rnd_65x39_caseless_green",nil,10000],
						["srifle_DMR_01_F",nil,200000],						
						["10Rnd_762x51_Mag",nil,20000],
						["LMG_Zafir_F",nil,350000],
						["150Rnd_762x51_Box",nil,35000],
						["srifle_EBR_F",nil,500000],
						["20Rnd_762x51_Mag",nil,50000]
					]
				];
			};
		};
	};
	
	case "donator_bm":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_donator): {"Du bist kein Donator!"};
			case (!license_civ_bm): {"Du hast keine Schwarzmarkt Lizenz!"};
			default
			{
				["Donator Fundgrube",
					[
						["srifle_DMR_01_F",nil,75000],						
						["10Rnd_762x51_Mag",nil,7500],
						["LMG_Zafir_F",nil,125000],
						["150Rnd_762x51_Box",nil,12500],
						["srifle_EBR_F",nil,175000],
						["20Rnd_762x51_Mag",nil,17500],
						["srifle_LRR_F",nil,1750000],
						["7Rnd_408_Mag",nil,40000],
						["srifle_GM6_F",nil,3500000],
						["5Rnd_127x108_Mag",nil,90000],
						["5Rnd_127x108_APDS_Mag",nil,180000],
						["arifle_MXC_Black_F",nil,900000],
						["arifle_MX_Black_F",nil,900000],
						["arifle_MX_SW_Black_F",nil,900000],
						["arifle_MXM_Black_F",nil,900000],
						["30Rnd_65x39_caseless_mag",nil,10000],
						["100Rnd_65x39_caseless_mag",nil,20000],
						["HandGrenade_Stone","Blendgranate",90000]
					]
				];
			};
		};
	};
	
	case "bm":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_bm): {"Du hast keine Schwarzmarkt Lizenz!"};
			default
			{
				["Schwarzmarkt",
					[
						["srifle_DMR_01_F",nil,100000],						
						["10Rnd_762x51_Mag",nil,10000],
						["LMG_Zafir_F",nil,150000],
						["150Rnd_762x51_Box",nil,15000],
						["srifle_EBR_F",nil,200000],
						["20Rnd_762x51_Mag",nil,25000],
						["srifle_LRR_F",nil,2000000],
						["7Rnd_408_Mag",nil,50000],
						["srifle_GM6_F",nil,4000000],
						["5Rnd_127x108_Mag",nil,100000],
						["5Rnd_127x108_APDS_Mag",nil,200000],
						["arifle_MXC_Black_F",nil,1000000],
						["arifle_MX_Black_F",nil,1000000],
						["arifle_MX_SW_Black_F",nil,1000000],
						["arifle_MXM_Black_F",nil,1000000],
						["30Rnd_65x39_caseless_mag",nil,12500],
						["100Rnd_65x39_caseless_mag",nil,25000],
						["HandGrenade_Stone","Blendgranate",100000]
					]
				];
			};
		};
	};
	
	case "donator_scopes":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_donator): {"Du bist kein Donator!"};
			default
			{
				["Donator Fundgrube",
					[
						["muzzle_snds_M",nil,20000],
						["muzzle_snds_H",nil,20000],
						["muzzle_snds_B",nil,20000],
						["optic_Yorris",nil,1000],
						["optic_ACO_grn_smg",nil,3000],
						["optic_Holosight_smg",nil,3000],
						["optic_ACO_grn",nil,8000],
						["optic_Aco",nil,8000],
						["optic_Holosight",nil,8000],
						["optic_Arco",nil,10000],						
						["optic_Hamr",nil,10000],
						["optic_MRCO",nil,10000],
						["optic_SOS",nil,30000],
						["optic_LRPS",nil,30000],
						["optic_DMS",nil,30000],
						["optic_NVS",nil,70000],
						["acc_pointer_IR",nil,8000],
						["acc_flashlight",nil,8000]
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
	case "umwelt":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_uran2): {"Du kannst nicht mit Uran umgehen!"};
			default
			{
				["Umweltamt",
					[
						["ToolKit",nil,2500],
						["FirstAidKit",nil,1500],
						["U_C_Scientist","Strahlenschutzanzug",10000]
					]
				];
			};
		};
	};
};