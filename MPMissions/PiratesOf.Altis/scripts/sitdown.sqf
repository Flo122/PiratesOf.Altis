//////////////////////////////////////////////////////////////////////////
//                            Script Made By                            //
//                                MacRae                                //
//                                                                      //
//                                                                      //
//1.Place a Camping Chair on the map.                                   //
//                                                                      //
//2.Add this to the Camping chair Init:                                 //
//this addAction ["<t color='#0099FF'>Sit Down</t>","Chair\sitdown.sqf"]//
//                              4D6163526165                            //
//////////////////////////////////////////////////////////////////////////

if (life_sit) exitWith {hint "Du sitzt bereits"};
_chair = _this select 0; 
_unit = _this select 1; 

[[_unit, "HubSittingChairUC_idle1"], "MAC_fnc_switchMove"] spawn BIS_fnc_MP; 
_unit setpos [((getpos _chair select 0)+0), ((getpos _chair select 1)+0),((getpos _chair select 2) +0)];
_unit setDir ((getDir _chair) - 180); 
standup = _unit addaction ["<t color='#ffffff'>Aufstehen</t>","scripts\standup.sqf"];
_unit setpos [getpos _unit select 0, getpos _unit select 1,((getpos _unit select 2) +1)];
life_sit = true;


