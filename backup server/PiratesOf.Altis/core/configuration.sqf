#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_siren2_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 1; //Scaled in minutes
life_has_insurance = false;
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_action_gather = false;
life_pickaxe_delay = false;
life_sit = false;
life_request_timer = false;
life_tracked = [];

//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,10000); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,5); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 60; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 40; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Food Variables *******
*****************************
*/
life_eat_Salema = 40;
life_eat_Ornate = 20;
life_eat_Mackerel = 20;
life_eat_Tuna = 100;
life_eat_Mullet = 30;
life_eat_CatShark = 60;
life_eat_Rabbit = 20;
life_eat_Apple = 5;
life_eat_turtlesoup = 62;
life_eat_donuts = 30;

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,350);
__CONST__(life_impound_boat,250);
__CONST__(life_impound_air,850);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 10000; //Starting Bank Money
		life_paycheck = 3000; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 10000; //Starting Bank Money
		life_paycheck = 1500; //Paycheck Amount
	};
	
	case independent: {
		life_atmcash = 10000;
		life_paycheck = 2500;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_G_Offroad_01_armed_F","O_MRAP_02_hmg_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); 

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_tracker"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_sek","cop"],
	["license_cop_sek_s","cop"],
	["license_cop_cg","cop"],
	["license_med_air","med"],
	["license_civ_driver","civ"],
	["license_civ_truck","civ"],
	["license_civ_air","civ"],
	["license_civ_boat","civ"],
	["license_civ_dive","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],	
	["license_civ_donator","civ"],
	["license_civ_home","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_coke","civ"],	
	["license_civ_oil","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_civ_brauer","civ"],
	["license_civ_chemie","civ"],
	["license_civ_nudeln","civ"],
	["license_civ_kaffee","civ"],
	["license_civ_wein","civ"],
	["license_civ_zigaretten","civ"],
	["license_civ_zucker","civ"],
	["license_civ_whiskey","civ"],
	["license_civ_zigarren","civ"],
	["license_civ_rum","civ"],
	["license_civ_aluminium","civ"],
	["license_civ_holz","civ"],
	["license_civ_schwefel","civ"],
	["license_civ_silber","civ"],
	["license_civ_silizium","civ"],
	["license_civ_zinn","civ"],
	["license_civ_plastik","civ"],
	["license_civ_gusseisen","civ"],
	["license_civ_handy","civ"],
	["license_civ_bronze","civ"],
	["license_civ_schmuck","civ"],
	["license_civ_pbrau","civ"],
	["license_civ_kkugel","civ"],
	["license_civ_pkugel","civ"],
	["license_civ_spulver","civ"]	
	
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",1200],["heroinp",2500],["cocaine",1500],["cocainep",3500],["marijuana",2000],["turtle",3000],["blastingcharge",10000],["boltcutter",500]];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",50],
	["heroinu",1850],
	["heroinp",2650],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["oilp",3200],
	["turtle",3000],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["marijuana",2350],
	["tbacon",25],
	["lockpick",75],
	["pickaxe",750],
	["redgull",200],
	["peach",75],
	["cocaine",3000],
	["cocainep",5000],
	["diamond",750],
	["diamondc",2000],
	["iron_r",3200],
	["copper_r",1500],
	["salt_r",1650],
	["glass",1450],
	["fuelF",500],
	["spikeStrip",1200],
	["cement",1950],
	["goldbar",100000],
	["tracker",5000]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",65],
	["rabbit",75],
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	["turtle",4000],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",2500],
	["pickaxe",1200],
	["redgull",1500],
	["fuelF",850],
	["peach",100],
	["spikeStrip",2500],
	["blastingcharge",35000],
	["boltcutter",7500],
	["defusekit",2500],
	["storagesmall",75000],
	["storagebig",150000],
	["tracker",50000]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["hgun_P07_snds_F",0],
	["hgun_P07_F",0],
	["hgun_Rook40_F",0],
	["SMG_01_F",0],
	["arifle_sdar_F",0],
	["arifle_Mk20C_F",0],
	["arifle_TRG21_F",0],
	["arifle_TRG20_F",0],
	["arifle_Katiba_F",0],
	["arifle_Katiba_C_F",0],
	["arifle_MXC_Black_F",0],
	["arifle_MX_Black_F",0],
	["arifle_MXM_Black_F",0],
	["arifle_MXC_F",0],
	["arifle_MX_F",0],	
	["arifle_MXM_F",0],
	["SMG_02_F",0],
	["srifle_LRR_LRPS_F",0],
	["srifle_EBR_F",0],
	["arifle_MX_SW_Black_F",0],
	["arifle_MX_SW_F",0],	
	["LMG_Zafir_F",0],
	["srifle_GM6_F",0],
											
	["muzzle_snds_M",0],
	["muzzle_snds_L",0],
	["muzzle_snds_H",0],
	["optic_Aco_smg",0],
	["optic_ACO_grn",0],
	["optic_Aco",0],
	["optic_Arco",0],
	["optic_Hamr",0],
	["optic_Holosight",0],
	["optic_Holosight_smg",0],
	["optic_SOS",0],
	["optic_LRPS",0],
	["optic_MRCO",0],
	["optic_DMS",0],
	["optic_NVS",0],
	["acc_pointer_IR",0],
	["acc_flashlight",0],
	
	["HandGrenade_Stone",0],
	
	["Rangefinder",0],
	["Binocular",0],
	["ItemGPS",0],
	["ToolKit",0],
	["FirstAidKit",0],
	["Medikit",0],
	["NVGoggles",0],
	["NVGoggles_OPFOR",0],
	["ItemMap",0],
	["ItemCompass",0],
	["ItemWatch",0],
	["DemoCharge_Remote_Mag",0],
	["SLAMDirectionalMine_Wire_Mag",0],
	["MineDetector",0],
	
	["5Rnd_127x108_Mag",0],
	["5Rnd_127x108_APDS_Mag",0],	
	["150Rnd_762x51_Box",0],	
	["100Rnd_65x39_caseless_mag",0],	
	["7Rnd_408_Mag",0],		
	["20Rnd_762x51_Mag",0],
	["30Rnd_45ACP_Mag_SMG_01",0],
	["30Rnd_9x21_Mag",0],	
	["30Rnd_556x45_Stanag",0],
	["20Rnd_762x51_Mag",0],
	["30Rnd_65x39_caseless_green",0],
	["16Rnd_9x21_Mag",0],
	["6Rnd_45ACP_Cylinder",0],
	["20Rnd_556x45_UW_mag",0],
	["9Rnd_45ACP_Mag",0]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["C_Kart_01_Blu_F",1500],
	["C_Kart_01_Fuel_F",1500],
	["C_Kart_01_Red_F",1500],
	["C_Kart_01_Vrana_F",1500],
	["B_Quadbike_01_F",500],
	["C_Offroad_01_F",2000],
	["C_SUV_01_F",2500],
	["C_Hatchback_01_F",3000],
	["C_Hatchback_01_sport_F",50000],
	["C_Van_01_transport_F",10000],	
	["C_Van_01_box_F",15000],
	["I_Truck_02_transport_F",17500],
	["I_Truck_02_covered_F",20000],
	["I_Truck_02_medical_F",2500],			
	["O_Truck_03_transport_F",22500],
	["O_Truck_03_covered_F",27500],
	["O_Truck_03_medical_F",4500],
	["O_Truck_03_device_F",50000],
	["B_Truck_01_transport_F",25000],
	["B_Truck_01_covered_F",27500],
	["B_Truck_01_medical_F",6000],
	["B_Truck_01_box_F",30000],	
	["C_Rubberboat",4000],
	["C_Boat_Civil_01_F",5000],
	["B_SDV_01_F",10000],	
	["B_Boat_Transport_01_F",1000],
	["C_Boat_Civil_01_police_F",2000],
	["B_Boat_Armed_01_minigun_F",7500],
	["B_Heli_Light_01_F",15000],
	["O_Heli_Light_02_unarmed_F",25000],
	["I_Heli_Transport_02_F",50000],
	["B_Heli_Transport_01_F",50000],
	["I_Heli_light_03_unarmed_F",50000],	
	["B_G_Offroad_01_armed_F",75000],
	["O_MRAP_02_F",25000],
	["O_MRAP_02_hmg_F",100000],
	["B_MRAP_01_F",25000],
	["B_MRAP_01_hmg_F",50000],
	["I_MRAP_03_F",25000],
	["I_MRAP_03_hmg_F",50000]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["C_Kart_01_Blu_F",1500],
	["C_Kart_01_Fuel_F",1500],
	["C_Kart_01_Red_F",1500],
	["C_Kart_01_Vrana_F",1500],
	["B_Quadbike_01_F",500],
	["C_Offroad_01_F",5000],
	["C_SUV_01_F",7500],
	["C_Hatchback_01_F",6250],
	["C_Hatchback_01_sport_F",10000],
	["C_Van_01_transport_F",25000],	
	["C_Van_01_box_F",50000],
	["I_Truck_02_transport_F",87500],
	["I_Truck_02_covered_F",125000],
	["I_Truck_02_medical_F",12500],			
	["O_Truck_03_transport_F",500000],
	["O_Truck_03_covered_F",750000],
	["O_Truck_03_medical_F",22500],
	["O_Truck_03_device_F",2500000],
	["B_Truck_01_transport_F",625000],
	["B_Truck_01_covered_F",750000],
	["B_Truck_01_medical_F",30000],
	["B_Truck_01_box_F",1000000],	
	["C_Rubberboat",2500],
	["C_Boat_Civil_01_F",11000],
	["B_SDV_01_F",500000],	
	["B_Boat_Transport_01_F",1500],
	["C_Boat_Civil_01_police_F",10000],
	["B_Boat_Armed_01_minigun_F",37500],
	["B_Heli_Light_01_F",75000],
	["O_Heli_Light_02_unarmed_F",100000],
	["I_Heli_Transport_02_F",100000],
	["B_Heli_Transport_01_F",100000],
	["I_Heli_light_03_unarmed_F",100000],	
	["B_G_Offroad_01_armed_F",50000],
	["O_MRAP_02_F",30000],
	["O_MRAP_02_hmg_F",100000],
	["B_MRAP_01_F",30000],
	["B_MRAP_01_hmg_F",100000],
	["I_MRAP_03_F",30000],
	["I_MRAP_03_hmg_F",100000]];
__CONST__(life_garage_sell,life_garage_sell);