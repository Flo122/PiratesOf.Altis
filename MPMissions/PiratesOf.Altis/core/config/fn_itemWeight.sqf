/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "oilu": {4};
	case "oilp": {3};
	case "heroinu": {6};
	case "heroinp": {4};
	case "cannabis": {4};
	case "marijuana": {3};
	case "apple": {1};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "turtle": {6};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
	case "copperore": {4};
	case "ironore": {5};
	case "copper_r": {3};
	case "iron_r": {3};
	case "sand": {3};
	case "salt": {3};
	case "salt_r": {1};
	case "glass": {1};
	case "diamond": {5};
	case "diamondc": {2};
	case "cocaine": {6};
	case "cocainep": {4};
	case "spikeStrip": {5};
	case "rock": {6};
	case "cement": {5};
	case "goldbar": {12};
	case "blastingcharge": {15};
	case "boltcutter": {5};
	case "defusekit": {2};
	case "storagesmall": {5};
	case "storagebig": {10};
	case "tracker": {2};
	case "getreideu": {4};
	case "holzu": {6};
	case "hopfenu": {4};
	case "schwefelu": {6};
	case "silberu": {5};
	case "tabaku": {5};
	case "traubenu": {4};
	case "zinnu": {3};
	case "zuckeru": {4};
	case "getreideip": {3};
	case "tabakip": {4};
	case "zuckerip": {3};
	case "eisenp": {4};
	case "getreidep": {2};
	case "holzp": {4};
	case "hopfenp": {3};
	case "schwefelp": {3};
	case "silberp": {3};
	case "tabakp": {3};
	case "traubenp": {2};
	case "zinnp": {1};
	case "zuckerp": {2};
	case "schmuck": {5};
	case "bronze": {4};
	case "pbrau": {6};
	case "kkugel": {7};
	case "spulver": {7};
	case "pkugel": {14};	
	case "speedbomb": {10};
	case "uran1": {6};
	case "uran2": {5};
	case "uran3": {5};
	case "uran4": {4};
	case "uran5": {4};
	case "uranip": {4};
	case "handcuffkey": {1};
	case "mauer": {1};
	case "mauer2": {1};
	case "licht": {1};
	default {1};
};
