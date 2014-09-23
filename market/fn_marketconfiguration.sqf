/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, DEFAULT-WERT, MIN-WERT, MAX-WERT, VERÄNDERUNG BEI AKTION [VERKAUF Multipliziert mit 1, Kauf multipliziert um -1
	//["gold", 1500, 450, 2300, 8, 5],
	["diamondc", 5000, 500, 12000, 1.40, 0.25,
		[ 
			["oilp",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1],
			["cement",1],
			["vodka",1],
			["silberp",1],
			["goldp",1]
		]
	],
	
	["goldp", 4245, 25, 10450, 1.25, 0.5,
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1],
			["oilp",1],
			["vodka",1],
			["cement",1],
			["silberp",1]
		]
	],
	
	["oilp", 2400, 25, 8000, 1.25, 0.5,
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1],
			["cement",1],
			["vodka",1],
			["silberp",1],
			["goldp",1]
		]
	],
	
	["salt_r", 3500, 25, 7000, 0.50, 0.125,
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["oilp",1],
			["glass",1],
			["cement",1],
			["vodka",1],
			["silberp",1],
			["goldp",1]
		]
	],
	
	["silberp", 4310, 25, 7350, 1.25, 0.5,
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1],
			["oilp",1],
			["vodka",1],
			["cement",1],
			["goldp",1]
		]
	],
	
	["iron_r", 1550, 25, 3525, 0.50, 0.125,
		[ 
			["diamondc",1], 
			["oilp",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1],
			["cement",1],
			["vodka",1],
			["silberp",1],
			["goldp",1]
		]
	],
	
	["glass", 2025, 25, 2225, 0.50, 0.125,
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["oilp",1],
			["cement",1],
			["vodka",1],
			["silberp",1],
			["goldp",1]
		]
	],
	
	["vodka", 1000, 25, 5150, 0.50, 0.125,
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1],
			["oilp",1],
			["cement",1],
			["silberp",1],
			["goldp",1]
		]
	],
	
	["cement", 775, 25, 925, 1.25, 0.5,
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1],
			["oilp",1],
			["vodka",1],
			["silberp",1],
			["goldp",1]
		]
	],
	
	["copper_r", 1575, 25, 2175, 0.75, 0.25,
		[ 
			["diamondc",1], 
			["iron_r",1],
			["oilp",1],
			["salt_r",1],
			["glass",1],
			["cement",1],
			["vodka",1],
			["silberp",1],
			["goldp",1]
		]
	],
	
	///////////////////////////////////
	
	["uranp", 11350, 1200, 16600, 3, 0.75,
		[
			["marijuana",1],
			["cocainep",1],
			["methp",1],
			["moonshine",1],
			["heroinp",1],
			["frogslsd",1]
		]
	],
	
	["cocainep", 9500, 50, 17700, 1.25, 0.5,
		[
			["marijuana",1],
			["heroinp",1],
			["methp",1],
			["moonshine",1],
			["uranp",1],
			["frogslsd",1]
		]
	],
	
	["frogslsd", 2250, 50, 2400, 0.75, 0.25,
		[
			["marijuana",1],
			["cocainep",1],
			["methp",1],
			["moonshine",1],
			["heroinp",1],
			["uranp",1]
		]
	],
	
	["heroinp", 9545, 50, 14784, 1.25, 0.5,
		[
			["marijuana",1],
			["cocainep",1],
			["methp",1],
			["moonshine",1],
			["uranp",1],
			["frogslsd",1]
		]
	],
	
	["moonshine", 5175, 50, 9589, 0.50, 0.125,
		[
			["marijuana",1],
			["cocainep",1],
			["methp",1],
			["heroinp",1],
			["uranp",1],
			["frogslsd",1]
		]
	],
	
	["marijuana", 7817, 50, 11974, 0.75, 0.25,
		[
			["heroinp",1],
			["cocainep",1],
			["methp",1],
			["moonshine",1],
			["uranp",1],
			["frogslsd",1]
		]
	],
	
	["methp", 6000, 50, 24285, 1.25, 0.5,
		[
			["marijuana",1],
			["cocainep",1],
			["heroinp",1],
			["moonshine",1],
			["uranp",1],
			["frogslsd",1]
		]
	],
	
	["turtle", 12000, 50, 19000, 0, 0]
		
];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

////////////SYNC PRICES WITH SERVER IF EMPTY
//if(isNil("life_market_prices")) then
//{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	systemChat "Market Prices Generated!";
//};