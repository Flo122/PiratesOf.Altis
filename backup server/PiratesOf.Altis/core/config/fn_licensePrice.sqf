/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "cair": {15000}; //Cop Pilot License cost
	case "sek": {35000}; //Swat License cost
	case "sek_s": {35000};
	case "cg": {8000}; //Coast guard license cost
	case "mair": {15000};
	case "driver": {500}; //Drivers License cost
	case "truck": {20000}; //Truck license cost
	case "pilot": {25000}; //Pilot/air license cost
	case "boat": {1000}; //Boating license cost
	case "dive": {2000}; //Diving license cost
	case "gun": {10000}; //Firearm/gun license cost	
	case "rebel": {250000}; //Rebel license cost	
	case "donator": {1};
	case "home": {1000000};
	case "heroin": {25000}; //Heroin processing license cost
	case "marijuana": {19500}; //Marijuana processing license cost
	case "cocaine": {30000};
	case "oil": {10000}; //Oil processing license cost
	case "diamond": {35000};
	case "copper": {8000};
	case "iron": {9500};
	case "sand": {14500};
	case "salt": {12000};
	case "cement": {6500};
	case "brauer": {12000};
	case "chemie": {12000};
	case "nudeln": {12000};
	case "kaffee": {12000};
	case "wein": {12000};
	case "zigaretten": {12000};
	case "zucker": {12000};
	case "whiskey": {12000};
	case "zigarren": {12000};
	case "rum": {12000};
	case "aluminium": {12000};
	case "holz": {12000};
	case "schwefel": {12000};
	case "silber": {12000};
	case "silizium": {12000};
	case "zinn": {12000};
	case "plastik": {12000};
	case "gusseisen": {12000};
	case "handy": {12000};
	case "bronze": {12000};
	case "schmuck": {12000};
	case "pbrau": {12000};
	case "kkugel": {12000};
	case "pkugel": {12000};
	case "spulver": {12000};
};