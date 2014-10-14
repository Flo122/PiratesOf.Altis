_resourceZones = ["apple_1","apple_2","apple_3","apple_4","peaches_1","peaches_2","peaches_3","peaches_4","heroin_1","cocaine_1","weed_1","trauben_1","zucker_1","getreide_1","hopfen_1","tabak_1"];
//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 50) exitWith { [] spawn life_fnc_gather; };
} foreach _resourceZones;

_resourceZones2 = ["lead_1","iron_1","salt_1","sand_1","diamond_1","oil_1","rock_1","zinn_1","silber_1","holz_1","schwefel_1","uran_1"];
//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 50) then { 
		if((!life_action_inUse) && (vehicle player == player) ) then
		{
				{
					_str = [_x] call life_fnc_varToStr;
					_val = missionNameSpace getVariable _x;
					if(_val > 0 ) then
						{
						if( _str == "Pickaxe" || _str == "Spitzhacke" || _str == "Pioche" || _str == "Piccone" ) then
							{
							[] spawn life_fnc_pickAxeUse;
							};
						};
				} foreach life_inv_items;
		};
	};
} foreach _resourceZones2;