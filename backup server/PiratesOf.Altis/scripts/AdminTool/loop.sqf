while {true} do
{
  waitUntil {alive vehicle player};
 [] execVM "scripts\AdminTool\activate.sqf";


  waitUntil {!alive player};
};