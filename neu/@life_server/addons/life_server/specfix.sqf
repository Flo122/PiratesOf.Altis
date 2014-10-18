/*
	Fix the Seagull Bug
*/
while {true} do {
    {
        if (count units _x==0) then {
            deleteGroup _x;
            //diag_log ("CUSTOM: GROUP CLEANUP");
        };
    } forEach allGroups;
    sleep 180; // run every 5min
}