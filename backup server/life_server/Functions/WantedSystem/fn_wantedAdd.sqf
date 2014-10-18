private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
    case "187V": {_type = ["Ueberfahren mit Todesfolge",100000]};
    case "187": {_type = ["Mord",200000]};
    case "901": {_type = ["Gefaengnisflucht",75000]};
    case "261": {_type = ["Vergewaltigung",100000]};
    case "261A": {_type = ["Versuchte Vergewaltigung",50000]};
    case "215": {_type = ["Versuchter Fahrzeugdiebstahl",10000]};
    case "213": {_type = ["Verwenden illegaler Sprengstoff",10000]};
    case "211": {_type = ["Raub",100000]};
    case "207": {_type = ["Entfuehrung",100000]};
    case "207A": {_type = ["Versuchte Entfuehrung",50000]};
    case "487": {_type = ["Autodiebstahl",20000]};
    case "488": {_type = ["Petty Theft",15000]};
    case "480": {_type = ["Fahrerflucht",50000]};
    case "481": {_type = ["Drogenbesitz (s. Bussgeldkatalog)",1]};
    case "482": {_type = ["Versuchter Drogenhandel",100000]};
    case "483": {_type = ["Drogenhandel",100000]};
    case "503": {_type = ["xxx",1]};
    
    case "1": {_type = ["Fahren ohne Fuehrerschein",10000]};
    case "2": {_type = ["Versuchter Fahrzeugdiebstahl",10000]};
    case "3": {_type = ["Fahrzeugdiebstahl",20000]};
    case "4": {_type = ["Fahren ohne Licht",2500]};
    case "5": {_type = ["Ueberhoehte Geschwindigkeit (s. Bussgeldkatalog)",1]};
    case "6": {_type = ["Verursachen eines Unfalls mit Personenschaden",15000]};
    case "7": {_type = ["Handel mit Sprengstoffen (s. Bussgeldkatalog)",1]};
    case "8": {_type = ["Terrorismus",600000]};
    case "9": {_type = ["Behinderung der Polizeiarbeit",7500]};
    case "10": {_type = ["Fuehren von illegalen Fahrzeugen",50000]};
    case "11": {_type = ["Verursachen eines Unfalls",7500]};
    case "12": {_type = ["Fahrerflucht",50000]};
    case "13": {_type = ["fahrlaessige Toetung",100000]};
    case "14": {_type = ["rebellische Uebernahme",200000]};
    case "15": {_type = ["Widerstand gegen die Staatsgewalt",25000]};
    case "16": {_type = ["Missachtung polizeilicher Anweisungen",7500]};
    case "17": {_type = ["Beamtenbeleidigung (s. Bussgeldkatalog)",1]};
    case "18": {_type = ["Anstiftung zu einem Verbrechen (s. Bussgeldkatalog)",1]};
    case "19": {_type = ["Betreten einer Sperrzone",10000]};
    case "20": {_type = ["Mord",200000]};
    case "21": {_type = ["Beschuss von Personen/bemannten Fahrzeugen",20000]};
    case "22": {_type = ["Beschuss mit Personenschaden",75000]};
    case "23": {_type = ["Alkohol-/Drogenhandel",100000]};
    case "24": {_type = ["Besitz legaler Waffen ohne Lizens",10000]};
    case "25": {_type = ["Offenes Tragen von Waffen in Staedten",5000]};
    case "26": {_type = ["Besitz einer illegalen Waffe",50000]};
    case "27": {_type = ["Schusswaffengebrauch",30000]};
    case "28": {_type = ["Entfuehrung",100000]};
    case "29": {_type = ["versuchte Entfuehrung",50000]};
    case "30": {_type = ["Bankraub",150000]};
    case "31": {_type = ["Fluchthilfe",50000]};
    case "32": {_type = ["versuchter Bankraub",75000]};
    case "33": {_type = ["Raub",100000]};
    case "34": {_type = ["versuchter Raub",50000]};
    case "35": {_type = ["Landen innerhalb von Staedten/auf Strassen",20000]};
    case "36": {_type = ["Missachtung der Mindestflughoehe",10000]};
    case "37": {_type = ["Gefaengnisausbruch",75000]};
    case "38": {_type = ["Fliegen ohne Pilotenschein",30000]};
    case "39": {_type = ["Ruhestoerung",5000]};
    case "40": {_type = ["Fliegen ohne Kollisionslichter",10000]};
	case "41": {_type = ["Alkohol-/Drogenbesitz (s. Bussgeldkatalog)",1]};
	case "42": {_type = ["Alkohol-/Drogenkonsum",10000]};
	case "43": {_type = ["Handel mit gestohlenen Fahrzeugen (s. Bussgeldkatalog)",1]};
	case "44": {_type = ["Taschendiebstahl",15000]};
	case "45": {_type = ["versuchter Taschendiebstahl",7500]};
	case "46": {_type = ["Verkehrsbehinderung",2500]};
	case "47": {_type = ["Fahren unter Alkohol-/Drogeneinfluss",20000]};
	case "48": {_type = ["Fliegen unter Alkohol-/Drogeneinfluss",100000]};
	case "49": {_type = ["Befreiung festgesetzter Personen",20000]};
    default {_type = [];};
};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.
_index = [_uid,life_wanted_list] call fnc_index;

if(_index != -1) then
{
    _data = life_wanted_list select _index;
    _crimes = _data select 2;
    _crimes set[count _crimes,(_type select 0)];
    _val = _data select 3;
    life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
}
    else
{
    life_wanted_list set[count life_wanted_list,[_name,_uid,[(_type select 0)],(_type select 1)]];
};