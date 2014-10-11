if(player distance (getMarkerPos "apple_1") < 50) exitWith
        {
           [] spawn life_fnc_gather;
        };
if(player distance (getMarkerPos "apple_2") < 50) exitWith
        {
           [] spawn life_fnc_gather;
        };
if(player distance (getMarkerPos "apple_3") < 50) exitWith
        {
           [] spawn life_fnc_gather;
        };
if(player distance (getMarkerPos "apple_4") < 50) exitWith
        {
           [] spawn life_fnc_gather;
        };
if(player distance (getMarkerPos "peaches_1") < 50) exitWith
        {
           [] spawn life_fnc_gather;
        };
if(player distance (getMarkerPos "peaches_2") < 50) exitWith
        {
           [] spawn life_fnc_gather;
        };
if(player distance (getMarkerPos "peaches_3") < 50) exitWith
        {
           [] spawn life_fnc_gather;
        };
if(player distance (getMarkerPos "peaches_4") < 50) exitWith
        {
           [] spawn life_fnc_gather;
        };
if(player distance (getMarkerPos "heroin_1") < 50) exitWith
        {
           [] spawn life_fnc_gather;
        };
if(player distance (getMarkerPos "cocaine_1") < 50) exitWith
        {
           [] spawn life_fnc_gather;
        }; 
if(player distance (getMarkerPos "weed_1") < 50) exitWith
        {
           [] spawn life_fnc_gather;
        };
if(player distance (getMarkerPos "trauben_1") < 50) exitWith
        {
           [] spawn life_fnc_gather;
        };
if(player distance (getMarkerPos "zucker_1") < 50) exitWith
        {
           [] spawn life_fnc_gather;
        };
if(player distance (getMarkerPos "getreide_1") < 50) exitWith
        {
           [] spawn life_fnc_gather;
        };
if(player distance (getMarkerPos "hopfen_1") < 50) exitWith
        {
           [] spawn life_fnc_gather;
        }; 
if(player distance (getMarkerPos "tabak_1") < 50) exitWith
        {
           [] spawn life_fnc_gather;
        };
if(player distance (getMarkerPos "lead_1") < 30) exitWith
{
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
}
};
if(player distance (getMarkerPos "iron_1") < 30) exitWith
{
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
}
};
if(player distance (getMarkerPos "salt_1") < 120) exitWith
{
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
}
};
if(player distance (getMarkerPos "sand_1") < 75) exitWith
{
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
}
};
if(player distance (getMarkerPos "diamond_1") < 50) exitWith
{
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
}
};
if(player distance (getMarkerPos "oil_1") < 75) exitWith
{
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
}
};
if(player distance (getMarkerPos "rock_1") < 50) exitWith
{
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
}
};
if(player distance (getMarkerPos "zinn_1") < 50) exitWith
{
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
}
};
if(player distance (getMarkerPos "silber_1") < 50) exitWith
{
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
}
};
if(player distance (getMarkerPos "holz_1") < 50) exitWith
{
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
}
};
if(player distance (getMarkerPos "schwefel_1") < 50) exitWith
{
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
}
};
if(player distance (getMarkerPos "uran_1") < 50) exitWith
{
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
}
};