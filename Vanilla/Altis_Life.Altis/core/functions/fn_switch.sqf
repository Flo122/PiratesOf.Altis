
if(player distance (getMarkerPos "apple_1" || "apple_2" || "apple_1" || "apple_3" || "apple_4") < 50) exitWith
        {
           [] spawn life_fnc_gather;
        };

if(player distance (getMarkerPos "peaches_1" || "peaches_2" || "peaches_3" || "peaches_4") < 50) exitWith
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
if(player distance (getMarkerPos "lead_1") < 30) exitWith
{
if((!life_action_gathering) && (vehicle player == player) ) then
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
if((!life_action_gathering) && (vehicle player == player) ) then
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
if((!life_action_gathering) && (vehicle player == player) ) then
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
if((!life_action_gathering) && (vehicle player == player) ) then
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
if((!life_action_gathering) && (vehicle player == player) ) then
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
if((!life_action_gathering) && (vehicle player == player) ) then
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
if((!life_action_gathering) && (vehicle player == player) ) then
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