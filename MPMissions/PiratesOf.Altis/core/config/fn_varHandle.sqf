/*
	File: fn_varHandle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handler for getting a variables name, short name, etc.
*/
private["_var","_mode"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_var == "" OR _mode == -1) exitWith {""};

switch (_mode) do
{
	case 0:
	{
		switch (_var) do
		{
			case "Handschuhe": {"life_inv_Handschuhe"};
			case "Skalpel": {"life_inv_Skalpel"};
			case "kidney": {"life_inv_kidney"};
			case "oilu": {"life_inv_oilu"};
			case "oilp": {"life_inv_oilp"};
			case "heroinu": {"life_inv_heroinu"};
			case "heroinp": {"life_inv_heroinp"};
			case "cannabis": {"life_inv_cannabis"};
			case "marijuana": {"life_inv_marijuana"};
			case "apple": {"life_inv_apple"};
			case "water": {"life_inv_water"};
			case "rabbit": {"life_inv_rabbit"};
			case "salema": {"life_inv_salema"};
			case "ornate": {"life_inv_ornate"};
			case "mackerel": {"life_inv_mackerel"};
			case "tuna": {"life_inv_tuna"};
			case "mullet": {"life_inv_mullet"};
			case "catshark": {"life_inv_catshark"};
			case "turtle": {"life_inv_turtle"};
			case "fishing": {"life_inv_fishingpoles"};
			case "coffee": {"life_inv_coffee"};
			case "turtlesoup": {"life_inv_turtlesoup"};
			case "donuts": {"life_inv_donuts"};
			case "fuelE": {"life_inv_fuelE"};
			case "fuelF": {"life_inv_fuelF"};
			case "money": {"life_cash"};
			case "pickaxe": {"life_inv_pickaxe"};
			case "copperore": {"life_inv_copperore"};
			case "ironore": {"life_inv_ironore"};
			case "iron_r": {"life_inv_ironr"};
			case "copper_r": {"life_inv_copperr"};
			case "salt": {"life_inv_salt"};
			case "salt_r": {"life_inv_saltr"};
			case "sand": {"life_inv_sand"};
			case "glass": {"life_inv_glass"};
			case "tbacon": {"life_inv_tbacon"};
			case "lockpick": {"life_inv_lockpick"};
			case "handcuffkey": {"life_inv_handcuffkey"};
			case "redgull": {"life_inv_redgull"};
			case "peach": {"life_inv_peach"};
			case "diamond": {"life_inv_diamond"};
			case "diamondc": {"life_inv_diamondr"};
			case "cocaine": {"life_inv_coke"};
			case "cocainep": {"life_inv_cokep"};
			case "spikeStrip": {"life_inv_spikeStrip"};
			case "cement": {"life_inv_cement"};
			case "rock": {"life_inv_rock"};
			case "goldbar": {"life_inv_goldbar"};
			case "blastingcharge": {"life_inv_blastingcharge"};
			case "boltcutter": {"life_inv_boltcutter"};
			case "defusekit": {"life_inv_defusekit"};
			case "storagesmall": {"life_inv_storagesmall"};
			case "storagebig": {"life_inv_storagebig"};
			case "tracker": {"life_inv_tracker"};
			case "getreideu": {"life_inv_getreideu"};
			case "holzu": {"life_inv_holzu"};
			case "hopfenu": {"life_inv_hopfenu"};
			case "schwefelu": {"life_inv_schwefelu"};
			case "silberu": {"life_inv_silberu"};
			case "tabaku": {"life_inv_tabaku"};
			case "traubenu": {"life_inv_traubenu"};
			case "zinnu": {"life_inv_zinnu"};
			case "zuckeru": {"life_inv_zuckeru"};
			case "getreideip": {"life_inv_getreideip"};
			case "tabakip": {"life_inv_tabakip"};
			case "zuckerip": {"life_inv_zuckerip"};
			case "eisenp": {"life_inv_eisenp"};
			case "getreidep": {"life_inv_getreidep"};
			case "holzp": {"life_inv_holzp"};
			case "hopfenp": {"life_inv_hopfenp"};
			case "schwefelp": {"life_inv_schwefelp"};
			case "silberp": {"life_inv_silberp"};
			case "tabakp": {"life_inv_tabakp"};
			case "traubenp": {"life_inv_traubenp"};
			case "zinnp": {"life_inv_zinnp"};
			case "zuckerp": {"life_inv_zuckerp"};
			case "bronze": {"life_inv_bronze"};
			case "schmuck": {"life_inv_schmuck"};
			case "pbrau": {"life_inv_pbrau"};
			case "kkugel": {"life_inv_kkugel"};
			case "spulver": {"life_inv_spulver"};
			case "pkugel": {"life_inv_pkugel"};
			case "speedbomb": {"life_inv_speedbomb"};
			case "uran1": {"life_inv_uran1"};
			case "uran2": {"life_inv_uran2"};
			case "uran3": {"life_inv_uran3"};
			case "uran4": {"life_inv_uran4"};
			case "uran5": {"life_inv_uran5"};
			case "uranip": {"life_inv_uranip"};
			case "mauer": {"life_inv_mauer"};
			case "mauer2": {"life_inv_mauer2"};
			case "licht": {"life_inv_licht"};
			case "fuelPipe": {"life_inv_fuelPipe"};
			case "fuelManipulator": {"life_inv_fuelManipulator"};
			};
	};
	
	case 1:
	{
		switch (_var) do
		{
			case "life_inv_Handschuhe": {"Handschuhe"}; 
			case "life_inv_Skalpel": {"Skalpel"}; 
			case "life_inv_kidney": {"kidney"}; 
			case "life_inv_oilu": {"oilu"};
			case "life_inv_oilp": {"oilp"};
			case "life_inv_heroinu": {"heroinu"};
			case "life_inv_heroinp": {"heroinp"};
			case "life_inv_cannabis": {"cannabis"};
			case "life_inv_marijuana": {"marijuana"};
			case "life_inv_apple": {"apple"};
			case "life_inv_water": {"water"};
			case "life_inv_rabbit": {"rabbit"};
			case "life_inv_salema": {"salema"};
			case "life_inv_ornate": {"ornate"};
			case "life_inv_mackerel": {"mackerel"};
			case "life_inv_tuna": {"tuna"};
			case "life_inv_mullet": {"mullet"};
			case "life_inv_catshark": {"catshark"};
			case "life_inv_turtle": {"turtle"};
			case "life_inv_fishingpoles": {"fishing"};
			case "life_inv_coffee": {"coffee"};
			case "life_inv_turtlesoup": {"turtlesoup"};
			case "life_inv_donuts": {"donuts"};
			case "life_inv_fuelE": {"fuelE"};
			case "life_inv_fuelF": {"fuelF"};
			case "life_cash": {"money"};
			case "life_inv_pickaxe": {"pickaxe"};
			case "life_inv_copperore": {"copperore"};
			case "life_inv_ironore": {"ironore"};
			case "life_inv_ironr": {"iron_r"};
			case "life_inv_copperr": {"copper_r"};
			case "life_inv_sand": {"sand"};
			case "life_inv_salt": {"salt"};
			case "life_inv_glass": {"glass"};
			case "life_inv_redgull": {"redgull"};
			case "life_inv_lockpick": {"lockpick"};
			case "life_inv_handcuffkey": {"handcuffkey"};
			case "life_inv_tbacon": {"tbacon"};
			case "life_inv_peach": {"peach"};
			case "life_inv_diamond": {"diamond"};
			case "life_inv_diamondr": {"diamondc"};
			case "life_inv_saltr": {"salt_r"};
			case "life_inv_coke": {"cocaine"};
			case "life_inv_cokep": {"cocainep"};
			case "life_inv_spikeStrip": {"spikeStrip"};
			case "life_inv_cement": {"cement"};
			case "life_inv_rock": {"rock"};
			case "life_inv_goldbar": {"goldbar"};
			case "life_inv_blastingcharge": {"blastingcharge"};
			case "life_inv_boltcutter": {"boltcutter"};
			case "life_inv_defusekit": {"defusekit"};
			case "life_inv_storagesmall": {"storagesmall"};
			case "life_inv_storagebig": {"storagebig"};
			case "life_inv_tracker": {"tracker"};
			case "life_inv_getreideu": {"getreideu"};
			case "life_inv_holzu": {"holzu"};
			case "life_inv_hopfenu": {"hopfenu"};
			case "life_inv_schwefelu": {"schwefelu"};
			case "life_inv_silberu": {"silberu"};
			case "life_inv_tabaku": {"tabaku"};
			case "life_inv_traubenu": {"traubenu"};
			case "life_inv_zinnu": {"zinnu"};
			case "life_inv_zuckeru": {"zuckeru"};
			case "life_inv_getreideip": {"getreideip"};
			case "life_inv_tabakip": {"tabakip"};
			case "life_inv_zuckerip": {"zuckerip"};
			case "life_inv_eisenp": {"eisenp"};
			case "life_inv_getreidep": {"getreidep"};
			case "life_inv_holzp": {"holzp"};
			case "life_inv_hopfenp": {"hopfenp"};
			case "life_inv_schwefelp": {"schwefelp"};
			case "life_inv_silberp": {"silberp"};
			case "life_inv_tabakp": {"tabakp"};
			case "life_inv_traubenp": {"traubenp"};
			case "life_inv_zinnp": {"zinnp"};
			case "life_inv_zuckerp": {"zuckerp"};
			case "life_inv_bronze": {"bronze"};
			case "life_inv_schmuck": {"schmuck"};
			case "life_inv_pbrau": {"pbrau"};
			case "life_inv_spulver": {"spulver"};
			case "life_inv_kkugel": {"kkugel"};
			case "life_inv_pkugel": {"pkugel"};
			case "life_inv_speedbomb": {"speedbomb"};
			case "life_inv_zipties": {"zipties"};
			case "life_inv_uran1": {"uran1"};
			case "life_inv_uran2": {"uran2"};
			case "life_inv_uran3": {"uran3"};
			case "life_inv_uran4": {"uran4"};
			case "life_inv_uran5": {"uran5"};
			case "life_inv_uranip": {"uranip"};
			case "life_inv_mauer": {"mauer"};
			case "life_inv_mauer2": {"mauer2"};
			case "life_inv_licht": {"licht"};
			case "life_inv_fuelManipulator": {"fuelManipulator"};
			case "life_inv_fuelPipe": {"fuelPipe"};
		};
	};
};