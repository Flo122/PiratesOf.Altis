#include "player_sys.sqf"

class playerSettings {

	idd = playersys_DIALOG;
	movingEnable = true;
	enableSimulation = true;
	
	class controlsBackground {
	
	class life_RscTitleBackground:life_RscText {
			idc = -1;
			x = 0.1;
			y = 0.2;
			w = 0.8;
			h = (1 / 25);
		};
		
		class MainBackground:life_RscPicture {
			idc = -1;
			text = "icons\tablet.paa";
			y = -0.310;
			x = -0.150;
			w = 1.3;
			h = 1.7;
		};
		
		class Title : life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = -1;
			text = "$STR_PM_Title";
			x = 0.1;
			y = 0.2;
			w = 0.8;
			h = (1 / 25);
		};
		
		class moneyStatusInfo : Life_RscStructuredText
		{
			idc = 2015;
			sizeEx = 0.020;
			text = "";
			x = 0.085;
			y = 0.305;
			w = 0.3; h = 0.6;
		};
		
		class PlayersName : Title {
			idc = carry_weight;
			style = 1;
			text = "";
		};
	};
	
	class controls {
	
		class itemList : life_RscListBox 
		{
			idc = item_list;
			sizeEx = 0.030;
			colorBackground[] = {0, 0, 0, 0,};
			
			x = 0.62.050; y = 0.31;
			w = 0.275; h = 0.180;
		};
		
		class moneyEdit : Life_RscEdit 
		{
			idc = 2018;
			
			text = "1";
			sizeEx = 0.030;
			x = 0.13; y = 0.45;
			w = 0.13; h = 0.03;
		};
		
		class NearPlayers : Life_RscCombo 
		{
			idc = 2022;
		
			x = 0.13; y = 0.50;
			w = 0.13; h = 0.03;
		};
		
		class moneyDrop : Life_RscButtonMenu
		{
			idc = 2001;
			colorBackground[] = {0, 0, 0, 0,};
			onButtonClick = "[] call life_fnc_giveMoney";
			sizeEx = 0.025;
			x = 0.1; y = 0.55;
			w = 0.17; h = 0.034;
		};
		
		class itemEdit : Life_RscEdit {
		
		idc = item_edit;
		
		text = "1";
		sizeEx = 0.030;
		x = 0.66; y = 0.59;
		w = 0.240; h = 0.03;
		
		};
		class iNearPlayers : Life_RscCombo
		{
			idc = 2023;
			
			x = 0.66; y = 0.64;
			w = 0.240; h = 0.03;
		};
		/*
		Disabled till it can be redone
		class moneyInput: life_RscCombo {
			
			idc = money_value;
			
			x  = 0.02; y = 0.402;
			w = .1; h = .030;
		};
		*/
		
		class DropButton : life_RscButtonMenu {
			
			idc = 2002;
			colorBackground[] = {0, 0, 0, 0};
			onButtonClick = "[] call life_fnc_giveItem;";
			
			x = 0.821;
			y = 0.695;
			w = (3.27 / 40);
			h = 0.0275;
			
		};
		
		class UseButton : life_RscButtonMenu {
			
			colorBackground[] = {0, 0, 0, 0};
			onButtonClick = "[] call life_fnc_useItem;";
			
			x = 0.721;
			y = 0.695;
			w = (3.27 / 40);
			h = 0.0275;
			
		};
		
		class RemoveButton : life_RscButtonMenu {
			
			colorBackground[] = {0, 0, 0, 0};
			onButtonClick = "[] call life_fnc_removeItem;";
			
			x = 0.621;
			y = 0.695;
			w = (3.27 / 40);
			h = 0.0275;
			
		};
		/*
		Disabled till it can be redone
		class DropcButton : life_RscButtonMenu {

			text = "Drop Money";
			onButtonClick = "[] execVM 'player_system\money_fnc.sqf'";
			
			x = 0.13; y = 0.4;
			w = 0.135; h = 0.05;
			
		};
		*/
		
		class ButtonClose : life_RscButtonMenu {
			idc = -1;
			//shortcuts[] = {0x00050000 + 2};
			colorBackground[] = {0, 0, 0, 0};
			onButtonClick = "closeDialog 0;";
			x = 0.53 + (6.30 / 19.8) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.805 - (1 / 25);
			w = (2.5 / 40);
			h = (3 / 40);
		};
		
		class ButtonSettings : life_RscButtonMenu {
			idc = -1;
			colorBackground[] = {0, 0, 0, 0};
			onButtonClick = "[] call life_fnc_settingsMenu;";
			x = -0.225 + (6.30 / 19.8) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.805 - (1 / 25);
			w = (2.5 / 40);
			h = (3 / 40);
		};
		
		class ButtonMyGang : Life_RscButtonMenu {
			idc = 2011;
			colorBackground[] = {0, 0, 0, 0};
			onButtonClick = "if(isNil ""life_action_gangInUse"") then {if(isNil {(group player) getVariable ""gang_owner""}) then {createDialog ""Life_Create_Gang_Diag"";} else {[] spawn life_fnc_gangMenu;};};";
			x = -0.030 + (6.30 / 19.8) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.805 - (1 / 25);
			w = (2.5 / 40);
			h = (3 / 40);
		};
		
		class Licenses_Menu : Life_RscControlsGroup
		{
			idc = -1;
			w = 0.28;
			h = 0.38;
			x = 0.30;
			y = 0.32;
			
			class Controls
			{
				class Life_Licenses : Life_RscStructuredText
				{
					idc = 2014;
					sizeEx = 0.020;
					text = "";
					x = 0;
					y = 0;
					w = 0.27; h = 0.65;
				};
			};
		};
		
		class ButtonGangList : Life_RscButtonMenu {
			idc = 2012;
			colorBackground[] = {0, 0, 0, 0};
			onButtonClick = "[] call life_fnc_wantedMenu";
			x = 0.19 + (6.30 / 19.8) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.805 - (1 / 25);
			w = (2.5 / 40);
			h = (3 / 40);
		};
	
		class ButtonKeys : Life_RscButtonMenu {
			idc = 2013;
			colorBackground[] = {0, 0, 0, 0};
			onButtonClick = "createDialog ""Life_key_management"";";
			x = 0.30 + (6.30 / 19.8) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.805 - (1 / 25);
			w = (2.5 / 40);
			h = (3 / 40);
		};
		
		class ButtonCell : Life_RscButtonMenu {
			idc = 2014;
			colorBackground[] = {0, 0, 0, 0};
			onButtonClick = "[] call life_fnc_cellphone2;"; 
			x = -0.125 + (6.25 / 19.8) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.805 - (1 / 25);
			w = (2.5 / 40);
			h = (3 / 40);
		};
		
		class ButtonAdminMenu : Life_RscButtonMenu {
			idc = 2021;
			text = "$STR_PM_AdminMenu";
			onButtonClick = "createDialog ""life_admin_menu"";";
			x = 0.001 + (3.10 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.6;
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class ButtonSyncData : life_RscButtonMenu {
			idc = -1;
			colorBackground[] = {0, 0, 0, 0};
			onButtonClick = "[] call SOCK_fnc_syncData;";
			x = 0.43 + (6.30 / 19.8) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.805 - (1 / 25);
			w = (2.5 / 40);
			h = (3 / 40);
		};

		class ButtonWantedAdd : Life_RscButtonMenu {
			idc = 9800;
			text = "Wanted +";
			onButtonClick = "createDialog ""life_wantedadd2"";";
			x = 0.001 + (3.10 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.7;
			w = (6.25 / 40);
			h = (1 / 25);
		};

    	class ButtonMarket : Life_RscButtonMenu {
            idc = -1;
			colorBackground[] = {0, 0, 0, 0};
            onButtonClick = "[] spawn life_fnc_openMarketView;";
			x = 0.08 + (6.30 / 19.8) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.805 - (1 / 25);
			w = (2.5 / 40);
			h = (3 / 40);
    	};
	};
};