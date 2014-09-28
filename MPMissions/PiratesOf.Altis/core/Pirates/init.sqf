/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
_handle = [] spawn compile PreprocessFileLineNumbers "core\Pirates\gambling\configuration.sqf";
diag_log "::Pirates Client:: Initialization Variables gambling";
waitUntil {scriptDone _handle};

_handle = [] spawn compile PreprocessFileLineNumbers "core\Pirates\gambling\functions.sqf";
diag_log "::Pirates Client:: Initialization Functions gambling";
waitUntil {scriptDone _handle};


_handle = [] spawn compile PreprocessFileLineNumbers "core\Pirates\fuelchanger\configuration.sqf";
diag_log "::Pirates Client:: Initialization Variables fuelchanger";
waitUntil {scriptDone _handle};

_handle = [] spawn compile PreprocessFileLineNumbers "core\Pirates\fuelchanger\functions.sqf";
diag_log "::Pirates Client:: Initialization Functions fuelchanger";
waitUntil {scriptDone _handle};
