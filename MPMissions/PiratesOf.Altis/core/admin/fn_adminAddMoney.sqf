/**
*	addMoney(NUMBER value)
*
*/

private ["_money"];

if((call life_adminlevel) < 1) exitWith {};

_money = _this select 0;

if(_money <= 0) exitWith
{
	hint "Fehlerhafter Geldbetrag fn_adminAddMoney";
};

//Give money
life_cash_pirates = life_cash_pirates + _money;

//Hint + Infos
hint format["Du hast $%1 ercheatet.", _money];


//Additional info
sleep 2;

hintSilent format["Aktueller Geldbetrag: $%1", [life_cash_pirates] call life_fnc_numberText];

