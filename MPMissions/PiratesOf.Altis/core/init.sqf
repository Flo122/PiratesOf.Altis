#include <macro.h>
/*
	Master client initialization file
*/
life_firstSpawn = true;
life_session_completed = false;
private["_handle","_timeStamp"];
0 cutText["Setting up client, please wait...","BLACK FADED"];
0 cutFadeOut 9999999;
_timeStamp = diag_tickTime;
diag_log "------------------------------------------------------------------------------------------------------";
diag_log "--------------------------------- Starting Altis Life Client Init ----------------------------------";
diag_log "------------------------------------------------------------------------------------------------------";
waitUntil {!isNull player && player == player}; //Wait till the player is ready
//Setup initial client core functions
diag_log "::Life Client:: Initialization Variables";
[] call compile PreprocessFileLineNumbers "core\configuration.sqf";
diag_log "::Life Client:: Variables initialized";
diag_log "::Life Client:: Setting up Eventhandlers";
[] call life_fnc_setupEVH;
diag_log "::Life Client:: Eventhandlers completed";
diag_log "::Life Client:: Setting up user actions";
[] call life_fnc_setupActions;
diag_log "::Life Client:: User actions completed";
diag_log "::Life Client:: Waiting for server functions to transfer..";
waitUntil {(!isNil {TON_fnc_clientGangLeader})};
diag_log "::Life Client:: Received server functions.";
0 cutText ["Waiting for the server to be ready...","BLACK FADED"];
0 cutFadeOut 99999999;
diag_log "::Life Client:: Waiting for the server to be ready..";
waitUntil{!isNil "life_server_isReady"};
waitUntil{(life_server_isReady OR !isNil "life_server_extDB_notLoaded")};
if(!isNil "life_server_extDB_notLoaded") exitWith {
	diag_log "::Life Client:: Server did not load extDB";
	999999 cutText ["The server-side extension extDB was not loaded into the engine, report this to the server admin.","BLACK FADED"];
	999999 cutFadeOut 99999999;
};
[] call SOCK_fnc_dataQuery;
waitUntil {life_session_completed};
0 cutText["Finishing client setup procedure","BLACK FADED"];
0 cutFadeOut 9999999;

//diag_log "::Life Client:: Group Base Execution";
[] spawn life_fnc_escInterupt;

switch (playerSide) do
{
	case west:
	{
		_handle = [] spawn life_fnc_initCop;
		waitUntil {scriptDone _handle};
	};
	
	case civilian:
	{
		//Initialize Civilian Settings
		_handle = [] spawn life_fnc_initCiv;
		waitUntil {scriptDone _handle};
	};
	
	case independent:
	{
		//Initialize Medics and blah
		_handle = [] spawn life_fnc_initMedic;
		waitUntil {scriptDone _handle};
	};
		
	case east:
	{
		//Initialize APH and blah
		_handle = [] spawn life_fnc_initAPH;
		waitUntil {scriptDone _handle};
	};
	
	case sideLogic:
    {
        _handle = [] spawn life_fnc_initZeus;
        waitUntil {scriptDone _handle};
    };
};

player setVariable["restrained",false,true];
player setVariable["Escorting",false,true];
player setVariable["transporting",false,true];
player setVariable["missingOrgan",false,true];//sets variables to false on start
player setVariable["hasOrgan",false,true];
diag_log "Past Settings Init";
[] execFSM "core\fsm\client.fsm";
diag_log "Executing client.fsm";
waitUntil {!(isNull (findDisplay 46))};
diag_log "Display 46 Found";
(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call life_fnc_keyHandler"];
player addRating 99999999;
diag_log "------------------------------------------------------------------------------------------------------";
diag_log format[" End of Altis Life Client Init :: Total Execution Time %1 seconds ",(diag_tickTime) - _timeStamp];
diag_log "------------------------------------------------------------------------------------------------------";
life_sidechat = true;
[[player,life_sidechat,playerSide],"TON_fnc_managesc",false,false] spawn life_fnc_MP;
0 cutText ["","BLACK IN"];
[] call life_fnc_hudSetup;
LIFE_ID_PlayerTags = ["LIFE_PlayerTags","onEachFrame","life_fnc_playerTags"] call BIS_fnc_addStackedEventHandler;
LIFE_ID_RevealObjects = ["LIFE_RevealObjects","onEachFrame","life_fnc_revealObjects"] call BIS_fnc_addStackedEventHandler;
[] call life_fnc_settingsInit;
player setVariable["steam64ID",getPlayerUID player];
player setVariable["realname",profileName,true];
life_fnc_moveIn = compileFinal
"
	player moveInCargo (_this select 0);
";

__CONST__(life_paycheck,life_paycheck); //Make the paycheck static.

life_fnc_garageRefund = compileFinal
"
	_price = _this select 0;
	_unit = _this select 1;
	if(_unit != player) exitWith {};
	life_atmcash = life_atmcash + _price;
";

[] execVM "core\init_survival.sqf";
[] execVM "core\fn_addKey.sqf";

_handle = [] spawn compile PreprocessFileLineNumbers "core\Pirates\init.sqf";
diag_log "::Pirates Client:: Initialization";
waitUntil {scriptDone _handle};
diag_log "::Pirates Client:: initialized";
//Delte Illegal Markes for cops
if(playerSide == west) then {
{_x setMarkerAlphaLocal 0} forEach ["Dealer_1","Dealer_1_4","Dealer_1_3","heroin_p","beruf_1_2","heroin_area","beruf_1","beruf_1_1_2_1_3","beruf_1_1_2_1_1","beruf_2_10","weed_1","turle_dealer","Weed_p_1","beruf_2","cocaine_1","beruf_1_1_2_1_2","cocaine processing","beruf_1_1","chop_shop_3","turle_dealer_1","sellgoldbars","sellgoldbars_1","chop_shop_1","chop_shop_4","chop_shop_2","heroin_1","coke_area","Rebelop_2_1","grenze","beruf_1_1_2_1_4","turtle_1_name_1","turtle_2","turtle_1_name","turtle_1","turtle_1_name_2","turtle_3","beruf_1_1_2_1_2_3","beruf_1_1_2_1_2_1","cp_1_1","Weed_p_1_1"];
};

//Delte Cop Markes for civs
if(playerSide == civilian) then {
{_x setMarkerAlphaLocal 0} forEach ["cp_1","cp_2","gefahrenzone_1","schießplatz_1","cop_spawn_4"];
};

//Update Clothing
[] spawn
{
	sleep 1;
	[] call life_fnc_updateClothing;
};

[] spawn life_fnc_fatigueReset;
[] spawn life_fnc_autoSave;
