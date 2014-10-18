waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in ["76561197978126241"]) then {
	sleep 30;
	player addaction [("<t color=""#FF0000"">" + ("Admin Menu") +"</t>"),"scripts\AdminTool\Admin-Pfad.sqf","",5,false,true,"",""];
};