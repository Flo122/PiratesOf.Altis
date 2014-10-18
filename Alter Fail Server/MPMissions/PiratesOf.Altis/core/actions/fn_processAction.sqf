/*
	File: fn_processAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handling for processing an item.
*/
private["_vendor","_type","_itemInfo","_oldItem","_oldItem2","_newItem","_cost","_upp","_hasLicense","_itemName","_oldVal","_oldVal2","_ui","_progress","_pgText","_cP","_error"];
_vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
//Error check
if(isNull _vendor OR _type == "" OR (player distance _vendor > 10)) exitWith {};

_error = false;
//unprocessed item,processed item, cost if no license,Text to display (I.e Processing  (percent) ...",processing 2Items?, (only for processing with 2) second Item.
_itemInfo = switch (_type) do
{
	case "oil": {["oilu","oilp",1000,"Öl verarbeiten",false];};
	case "diamond": {["diamond","diamondc",3500,"Diamanten schleifen",false]};
	case "heroin": {["heroinu","heroinp",2500,"Schlafmohn verarbeiten",false]};
	case "copper": {["copperore","copper_r",800,"Kupfer verarbeiten",false]};
	case "iron": {["ironore","iron_r",950,"Eisen verarbeiten",false]};
	case "sand": {["sand","glass",1450,"Sand verarbeiten",false]};
	case "salt": {["salt","salt_r",1200,"Salz verarbeiten",false]};
	case "cocaine": {["cocaine","cocainep",3000,"Kokain verarbeiten",false]};
	case "marijuana": {["cannabis","marijuana",1950,"Marihuana verarbeiten",false]};
	case "cement": {["rock","cement",650,"Zement mischen",false]};
	case "whiskey": {["getreideu","getreideip",2850,"Ruehre Maische",false]};
	case "zigarren": {["tabaku","tabakip",2750,"Drehe Zigarren",false]};
	case "rum": {["zuckeru","zuckerip",2600,"Brenne Rum",false]};
	case "gusseisen": {["ironore","eisenp",1050,"Gieße Form",false]};
	case "nudeln": {["getreideu","getreidep",1150,"Mahle Mehl",false]};
	case "holz": {["holzu","holzp",500,"Verkohle Holz",false]};
	case "brauer": {["hopfenu","hopfenp",2000,"Braue Bier",false]};
	case "schwefel": {["schwefelu","schwefelp",1850,"Zerkleinere Schwefel",false]};
	case "silber": {["silberu","silberp",2500,"Schmelze Silber",false]};
	case "zigaretten": {["tabaku","tabakp",2750,"Stopfe Zigaretten",false]};
	case "wein": {["traubenu","traubenp",1000,"Keltere Wein",false]};
	case "zinn": {["zinnu","zinnp",700,"Schmelze Zinn",false]};
	case "zucker": {["zuckeru","zuckerp",1150,"Raffiniere Zucker",false]};
	case "bronze": {["zinnp","bronze",6500,"Schmelze Bronze",true,"copper_r"]};
	case "schmuck": {["silberp","schmuck",7000,"Setze Diamanten auf Silber",true,"diamondc"]};
	case "pbrau": {["zuckerip","pbrau",75000,"Mische Brau",true,"getreideip"]};
	case "kkugel": {["eisenp","kkugel",10000,"Gieße Kugel",true,"iron_r"]};
	case "spulver": {["schwefelp","spulver",10000,"Mische Pulver",true,"holzp"]};
	case "pkugel": {["kkugel","pkugel",20000,"Fuelle Kugeln",true,"spulver"]};
	case "uran2": {["uran1","uran2",10000,"Reinige Uran",false]};
	case "uran3": {["uran2","uran3",20000,"Verarbeite Uran",false]};
	case "uran4": {["uran3","uran4",30000,"Reichere Uran an",false]};
	case "uranip": {["uran2","uranip",50000,"Uran verschmutzen",false]};
	default {[]};
};

//Error checking
if(count _itemInfo == 0) exitWith {};

//Setup vars.
_2var = _itemInfo select 4;
_oldItem = _itemInfo select 0;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;

if(_2var) then { _oldItem2 = _itemInfo select 5; };

_hasLicense = missionNamespace getVariable (([_type,0] call life_fnc_licenseType) select 0);
_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
_oldVal = missionNamespace getVariable ([_oldItem,0] call life_fnc_varHandle);

if(_2var) then { _oldVal2 = missionNamespace getVariable ([_oldItem2,0] call life_fnc_varHandle); };

if(_2var) then { 
       if(_oldVal !=_oldVal2) then {
              _error = true;
       };
};
if(_error) exitWith{hint "Bitte benutze die selbe Menge beider Komponenten"};


_cost = _cost * _oldVal;
//Some more checks
if(_oldVal == 0) exitWith {};

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;

life_is_processing = true;

if(_hasLicense) then
{
	while{true} do
	{
		sleep  0.3;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vendor > 10) exitWith {};
	};
	
	if(player distance _vendor > 10) exitWith {hint localize "STR_Process_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	
	if(_2var) then 
	{
		([false,_oldItem2,_oldVal2] call life_fnc_handleInv);
	};
	
	if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
	5 cutText ["","PLAIN"];
	titleText[format[localize "STR_Process_Processed",_oldVal,_itemName],"PLAIN"];
	life_is_processing = false;
}
	else
{
	if(life_cash < _cost) exitWith {hint format["Du benoetigst $%1 um ohne Lizenz zu verarbeiten.",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	
	while{true} do
	{
		sleep  0.9;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vendor > 10) exitWith {};
	};
	
	if(player distance _vendor > 10) exitWith {hint localize "STR_Process_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(life_cash < _cost) exitWith {hint format[localize "STR_Process_License",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	
	
	if(_2var) then 
	{
		([false,_oldItem2,_oldVal2] call life_fnc_handleInv);
	};
	
	if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"];};
	if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
	5 cutText ["","PLAIN"];
	titleText[format[localize "STR_Process_Processed2",_oldVal,_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
	life_cash = life_cash - _cost;
	life_is_processing = false;

};