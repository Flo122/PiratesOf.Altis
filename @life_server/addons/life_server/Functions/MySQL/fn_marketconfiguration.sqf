private["_queryResult","_query","_item","_itemprice","_oilpPrice","_iron_rPrice","_diamondcPrice","_copper_rPrice","_salt_rPrice","_glassPrice","_cementPrice","_turtlePrice","_marijuanaPrice","_cocainepPrice","_heroinpPrice","_goldbarPrice"];


_query = format["SELECT resource, price FROM resources"];
waitUntil{sleep (random 0.3); !DB_Async_Active};
_queryResult = [_query,2,true] call DB_fnc_asyncCall;
_rows = call compile format["%1",_queryResult]; //compile data
diag_log "------------- Market Query Request -------------";
diag_log format["Query: %1",_query];
diag_log format["Result: %1",_rows];
diag_log "------------------------------------------------";

//* _rows should look like this now: [["oilp","1000"],["diamond","2000"]];

{
	_item = (_x select 0); //on the first run = "oilp", second run = "diamond")
	_itemprice = (_x select 1); //on the first run = "1000", second run = "2000") //* Note: _price is a STRING now! 
	
	//diag_log format["%1-price %2 generated",_item,_itemprice];	
	if(_item == "oilp") then {_oilpPrice = _itemprice}; // The right price should be assigned SO many if Statements omg Mah Fingers 
	if(_item == "iron_r") then {_iron_rPrice = _itemprice};
	if(_item == "diamondc") then {_diamondcPrice = _itemprice};
	if(_item == "copper_r") then {_copper_rPrice = _itemprice}; 
	if(_item == "salt_r") then {_salt_rPrice = _itemprice}; 
	if(_item == "glass") then {_glassPrice = _itemprice}; 
	if(_item == "cement") then {_cementPrice = _itemprice};
	if(_item == "turtle") then {_turtlePrice = _itemprice}; 
	if(_item == "marijuana") then {_marijuanaPrice = _itemprice}; 
	if(_item == "cocainep") then {_cocainepPrice = _itemprice}; 
	if(_item == "heroinp") then {_heroinpPrice = _itemprice}; 
	if(_item == "bronze") then {_goldbarPrice = _itemprice}; 
	if(_item == "getreidep") then {_goldbarPrice = _itemprice};
	if(_item == "schmuck") then {_goldbarPrice = _itemprice};
	if(_item == "uran5") then {_goldbarPrice = _itemprice};
	if(_item == "traubenp") then {_goldbarPrice = _itemprice};
	if(_item == "zuckerp") then {_goldbarPrice = _itemprice};
	if(_item == "zinnp") then {_goldbarPrice = _itemprice};
	if(_item == "tabakp") then {_goldbarPrice = _itemprice};
	if(_item == "hopfenp") then {_goldbarPrice = _itemprice};
	if(_item == "holzp") then {_goldbarPrice = _itemprice};
	if(_item == "schwefelp") then {_goldbarPrice = _itemprice};
	if(_item == "goldbar") then {_goldbarPrice = _itemprice};

} forEach _rows; 

life_market_resources = [

	//Schema: SHORTNAME, DEFAULT-WERT, MIN-WERT, MAX-WERT, VERÄNDERUNG BEI AKTION [VERKAUF Multipliziert mit 1, Kauf multipliziert um -1
	//["gold", 1500, 450, 2300, 8, 5],
	["hopfenp", 3540, 1770, 5310, 4.00, 1,
		[ 
			["bronze",1],
			["iron_r",1],
			["glass",1],
			["eisenp",1],
			["holzp",1],
			["copper_r",1],
			["getreidep",1],
			["oilp",1],
			["salt_r",1],
			["schmuck",1],
			["schwefelp",1],
			["silberp",1],
			["uran5",1],
			["traubenp",1],
			["cement",1],
			["tabakp",1],
			["zinnp",1],
			["zuckerp",1]
		]
	],
	
	["bronze", 13375, 7412, 22237, 1.25, 0.5,
		[ 
			["hopfenp",1], 
			["iron_r",1],
			["glass",1],
			["eisenp",1],
			["holzp",1],
			["copper_r",1],
			["getreidep",1],
			["oilp",1],
			["salt_r",1],
			["schmuck",1],
			["schwefelp",1],
			["silberp",1],
			["uran5",1],
			["traubenp",1],
			["cement",1],
			["tabakp",1],
			["zinnp",1],
			["zuckerp",1]
		]
	],
	
	["iron_r", 3017, 1508, 4525, 1.25, 0.5,
		[ 
			["hopfenp",1], 
			["bronze",1],
			["glass",1],
			["eisenp",1],
			["holzp",1],
			["copper_r",1],
			["getreidep",1],
			["oilp",1],
			["salt_r",1],
			["schmuck",1],
			["schwefelp",1],
			["silberp",1],
			["uran5",1],
			["traubenp",1],
			["cement",1],
			["tabakp",1],
			["zinnp",1],
			["zuckerp",1]
		]
	],
	
	["glass", 3368, 1684, 5052, 0.50, 0.125,
		[ 
			["hopfenp",1], 
			["bronze",1],
			["iron_r",1],
			["eisenp",1],
			["holzp",1],
			["copper_r",1],
			["getreidep",1],
			["oilp",1],
			["salt_r",1],
			["schmuck",1],
			["schwefelp",1],
			["silberp",1],
			["uran5",1],
			["traubenp",1],
			["cement",1],
			["tabakp",1],
			["zinnp",1],
			["zuckerp",1]
		]
	],
	
	["eisenp", 3153, 1576, 4729, 1.25, 0.5,
		[ 
			["hopfenp",1], 
			["bronze",1],
			["iron_r",1],
			["glass",1],
			["holzp",1],
			["copper_r",1],
			["getreidep",1],
			["oilp",1],
			["salt_r",1],
			["schmuck",1],
			["schwefelp",1],
			["silberp",1],
			["uran5",1],
			["traubenp",1],
			["cement",1],
			["tabakp",1],
			["zinnp",1],
			["zuckerp",1]
		]
	],
	
	["holzp", 3248, 1624, 4872, 0.50, 0.125,
		[ 
			["hopfenp",1], 
			["bronze",1],
			["iron_r",1],
			["glass",1],
			["eisenp",1],
			["copper_r",1],
			["getreidep",1],
			["oilp",1],
			["salt_r",1],
			["schmuck",1],
			["schwefelp",1],
			["silberp",1],
			["uran5",1],
			["traubenp",1],
			["cement",1],
			["tabakp",1],
			["zinnp",1],
			["zuckerp",1]
		]
	],
	
	["copper_r", 3746, 1873, 5619, 0.50, 0.125,
		[ 
			["hopfenp",1], 
			["bronze",1],
			["iron_r",1],
			["glass",1],
			["eisenp",1],
			["holzp",1],
			["getreidep",1],
			["oilp",1],
			["salt_r",1],
			["schmuck",1],
			["schwefelp",1],
			["silberp",1],
			["uran5",1],
			["traubenp",1],
			["cement",1],
			["tabakp",1],
			["zinnp",1],
			["zuckerp",1]
		]
	],
	
	["getreidep", 3210, 1605, 4815, 0.50, 0.125,
		[ 
			["hopfenp",1], 
			["bronze",1],
			["iron_r",1],
			["glass",1],
			["eisenp",1],
			["holzp",1],
			["copper_r",1],
			["oilp",1],
			["salt_r",1],
			["schmuck",1],
			["schwefelp",1],
			["silberp",1],
			["uran5",1],
			["traubenp",1],
			["cement",1],
			["tabakp",1],
			["zinnp",1],
			["zuckerp",1]
		]
	],
	
	["oilp", 2571, 1285, 3865, 1.25, 0.5,
		[ 
			["hopfenp",1], 
			["bronze",1],
			["iron_r",1],
			["glass",1],
			["eisenp",1],
			["holzp",1],
			["copper_r",1],
			["getreidep",1],
			["salt_r",1],
			["schmuck",1],
			["schwefelp",1],
			["silberp",1],
			["uran5",1],
			["traubenp",1],
			["cement",1],
			["tabakp",1],
			["zinnp",1],
			["zuckerp",1]
		]
	],
	
	["salt_r", 4759, 2379, 7138, 0.75, 0.25,
		[ 
			["hopfenp",1], 
			["bronze",1],
			["iron_r",1],
			["glass",1],
			["eisenp",1],
			["holzp",1],
			["copper_r",1],
			["getreidep",1],
			["oilp",1],
			["schmuck",1],
			["schwefelp",1],
			["silberp",1],
			["uran5",1],
			["traubenp",1],
			["cement",1],
			["tabakp",1],
			["zinnp",1],
			["zuckerp",1]
		]
	],
	
	["schmuck", 14825, 7412, 22237, 0.75, 0.25,
		[ 
			["hopfenp",1], 
			["bronze",1],
			["iron_r",1],
			["glass",1],
			["eisenp",1],
			["holzp",1],
			["copper_r",1],
			["getreidep",1],
			["oilp",1],
			["salt_r",1],
			["schwefelp",1],
			["silberp",1],
			["uran5",1],
			["traubenp",1],
			["cement",1],
			["tabakp",1],
			["zinnp",1],
			["zuckerp",1]
		]
	],
	
	["schwefelp", 3222, 1611, 4833, 0.75, 0.25,
		[ 
			["hopfenp",1], 
			["bronze",1],
			["iron_r",1],
			["glass",1],
			["eisenp",1],
			["holzp",1],
			["copper_r",1],
			["getreidep",1],
			["oilp",1],
			["salt_r",1],
			["schmuck",1],
			["silberp",1],
			["uran5",1],
			["traubenp",1],
			["cement",1],
			["tabakp",1],
			["zinnp",1],
			["zuckerp",1]
		]
	],
	
	["silberp", 3966, 1983, 5949, 0.75, 0.25,
		[ 
			["hopfenp",1], 
			["bronze",1],
			["iron_r",1],
			["glass",1],
			["eisenp",1],
			["holzp",1],
			["copper_r",1],
			["getreidep",1],
			["oilp",1],
			["salt_r",1],
			["schmuck",1],
			["schwefelp",1],
			["uran5",1],
			["traubenp",1],
			["cement",1],
			["tabakp",1],
			["zinnp",1],
			["zuckerp",1]
		]
	],
	
	["uran5", 24144, 12072, 36216, 0.75, 0.25,
		[ 
			["hopfenp",1], 
			["bronze",1],
			["iron_r",1],
			["glass",1],
			["eisenp",1],
			["holzp",1],
			["copper_r",1],
			["getreidep",1],
			["oilp",1],
			["salt_r",1],
			["schmuck",1],
			["schwefelp",1],
			["silberp",1],
			["traubenp",1],
			["cement",1],
			["tabakp",1],
			["zinnp",1],
			["zuckerp",1]
		]
	],
	
	["traubenp", 4006, 2003, 6009, 0.75, 0.25,
		[ 
			["hopfenp",1], 
			["bronze",1],
			["iron_r",1],
			["glass",1],
			["eisenp",1],
			["holzp",1],
			["copper_r",1],
			["getreidep",1],
			["oilp",1],
			["salt_r",1],
			["schmuck",1],
			["schwefelp",1],
			["silberp",1],
			["uran5",1],
			["cement",1],
			["tabakp",1],
			["zinnp",1],
			["zuckerp",1]
		]
	],
	
	["cement", 3342, 1671, 5013, 0.75, 0.25,
		[ 
			["hopfenp",1], 
			["bronze",1],
			["iron_r",1],
			["glass",1],
			["eisenp",1],
			["holzp",1],
			["copper_r",1],
			["getreidep",1],
			["oilp",1],
			["salt_r",1],
			["schmuck",1],
			["schwefelp",1],
			["silberp",1],
			["uran5",1],
			["traubenp",1],
			["tabakp",1],
			["zinnp",1],
			["zuckerp",1]
		]
	],
	
	["tabakp", 4577, 2288, 6865, 0.75, 0.25,
		[ 
			["hopfenp",1], 
			["bronze",1],
			["iron_r",1],
			["glass",1],
			["eisenp",1],
			["holzp",1],
			["copper_r",1],
			["getreidep",1],
			["oilp",1],
			["salt_r",1],
			["schmuck",1],
			["schwefelp",1],
			["silberp",1],
			["uran5",1],
			["traubenp",1],
			["cement",1],
			["zinnp",1],
			["zuckerp",1]
		]
	],
	
	["zinnp", 3274, 1637, 4911, 0.75, 0.25,
		[ 
			["hopfenp",1], 
			["bronze",1],
			["iron_r",1],
			["glass",1],
			["eisenp",1],
			["holzp",1],
			["copper_r",1],
			["getreidep",1],
			["oilp",1],
			["salt_r",1],
			["schmuck",1],
			["schwefelp",1],
			["silberp",1],
			["uran5",1],
			["traubenp",1],
			["cement",1],
			["tabakp",1],
			["zuckerp",1]
		]
	],
	
	["zuckerp", 4565, 2282, 6847, 0.75, 0.25,
		[ 
			["hopfenp",1], 
			["bronze",1],
			["iron_r",1],
			["glass",1],
			["eisenp",1],
			["holzp",1],
			["copper_r",1],
			["getreidep",1],
			["oilp",1],
			["salt_r",1],
			["schmuck",1],
			["schwefelp",1],
			["silberp",1],
			["uran5",1],
			["traubenp",1],
			["cement",1],
			["tabakp",1],
			["zinnp",1]
		]
	],
	
	///////////////////////////////////
	
	["heroinp", 4527, 2263, 6790, 3, 0.75,
		[
			["marijuana",1],
			["kkugel",1],
			["cocainep",1],
			["pbrau",1],
			["pkugel",1],
			["zuckerip",1],
			["uranip",1],
			["spulver",1],
			["getreideip",1],
			["tabakip",1]
		]
	],
	
	["marijuana", 4365, 2182, 6547, 1.25, 0.5,
		[
			["heroinp",1],
			["kkugel",1],
			["cocainep",1],
			["pbrau",1],
			["pkugel",1],
			["zuckerip",1],
			["uranip",1],
			["spulver",1],
			["getreideip",1],
			["tabakip",1]
		]
	],
	
	["kkugel", 13987, 6993, 20980, 0.75, 0.25,
		[
			["heroinp",1],
			["marijuana",1],
			["cocainep",1],
			["pbrau",1],
			["pkugel",1],
			["zuckerip",1],
			["uranip",1],
			["spulver",1],
			["getreideip",1],
			["tabakip",1]
		]
	],
	
	["cocainep", 5348, 2674, 8022, 1.25, 0.5,
		[
			["heroinp",1],
			["marijuana",1],
			["kkugel",1],
			["pbrau",1],
			["pkugel",1],
			["zuckerip",1],
			["uranip",1],
			["spulver",1],
			["getreideip",1],
			["tabakip",1]
		]
	],
	
	["pbrau", 24701, 12350, 37051, 0.50, 0.125,
		[
			["heroinp",1],
			["marijuana",1],
			["kkugel",1],
			["cocainep",1],
			["pkugel",1],
			["zuckerip",1],
			["uranip",1],
			["spulver",1],
			["getreideip",1],
			["tabakip",1]
		]
	],
	
	["pkugel", 62727, 31363, 94090, 0.75, 0.25,
		[
			["heroinp",1],
			["marijuana",1],
			["kkugel",1],
			["cocainep",1],
			["pbrau",1],
			["zuckerip",1],
			["uranip",1],
			["spulver",1],
			["getreideip",1],
			["tabakip",1]
		]
	],
	
	["zuckerip", 4922, 2461, 7383, 1.25, 0.5,
		[
			["heroinp",1],
			["marijuana",1],
			["kkugel",1],
			["cocainep",1],
			["pbrau",1],
			["pkugel",1],
			["uranip",1],
			["spulver",1],
			["getreideip",1],
			["tabakip",1]
		]
	],
	
	["uranip", 12598, 6299, 18897, 1.25, 0.5,
		[
			["heroinp",1],
			["marijuana",1],
			["kkugel",1],
			["cocainep",1],
			["pbrau",1],
			["pkugel",1],
			["zuckerip",1],
			["spulver",1],
			["getreideip",1],
			["tabakip",1]
		]
	],
	
	["spulver", 11408, 5704, 17112, 1.25, 0.5,
		[
			["heroinp",1],
			["marijuana",1],
			["kkugel",1],
			["cocainep",1],
			["pbrau",1],
			["pkugel",1],
			["zuckerip",1],
			["uranip",1],
			["getreideip",1],
			["tabakip",1]
		]
	],
	
	["getreideip", 4244, 2122, 6366, 1.25, 0.5,
		[
			["heroinp",1],
			["marijuana",1],
			["kkugel",1],
			["cocainep",1],
			["pbrau",1],
			["pkugel",1],
			["zuckerip",1],
			["uranip",1],
			["spulver",1],
			["tabakip",1]
		]
	],
	
	["tabakip", 3977, 1988, 5965, 1.25, 0.5,
		[
			["heroinp",1],
			["marijuana",1],
			["kkugel",1],
			["cocainep",1],
			["pbrau",1],
			["pkugel",1],
			["zuckerip",1],
			["uranip",1],
			["spulver",1],
			["getreideip",1]
		]
	],
	
	["turtle", 10077, 5038, 15115, 0, 0]
		
];
publicVariable "life_market_resources";

diag_log "------------- Life Market Resources -------------";
diag_log format["Result: %1",life_market_resources];
diag_log "------------------------------------------------";

life_market_shortnames = [];

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";

life_market_prices = [];
{
	life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
}
foreach life_market_resources;
	
publicVariable "life_market_prices";

systemChat "Market Prices Generated!";