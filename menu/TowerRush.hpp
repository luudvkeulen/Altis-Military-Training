class TowerRush_dialog
{
	idd=-1;
	movingenable=false;
	
	class controls
	{
		class TowerRush_BigBox: BOX
		{
			idc = 1800;
			text = ""; //--- ToDo: Localize;
			x = 0.4 * safezoneW + safezoneX;
			y = 0.4 * safezoneH + safezoneY + 0.038;
			w = 0.15 * safezoneW;
			h = 0.1 * safezoneH;
		};
		class TowerRush_TopBar: TopBar
		{
			idc = 1800;
			text = ""; //--- ToDo: Localize;
			x = 0.4 * safezoneW + safezoneX;
			y = 0.4 * safezoneH + safezoneY;
			w = 0.15 * safezoneW;
			h = 0.025 * safezoneH;
		};

		class TowerRush_TopBarText: TopBar_Text
		{
			idc = 1000;
			text = "Tower Rush"; //--- ToDo: Localize;
			x = 0.4 * safezoneW + safezoneX;
			y = 0.4 * safezoneH + safezoneY;
			w = 0.180469 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class TowerRush_text: RscText
		{
			idc = 1000;
			text = "Choose a side:"; //--- ToDo: Localize;
			x = 0.4 * safezoneW + safezoneX + 0.04;
			y = 0.4 * safezoneH + safezoneY + 0.05;
			w = 0.159844 * safezoneW;
			h = 0.022 * safezoneH;
			
		};
		class TowerRush_Defend: RscButton
		{
			idc = 1600;
			text = "Defend"; //--- ToDo: Localize;
			x = 0.41 * safezoneW + safezoneX;
			y = 0.4 * safezoneH + safezoneY + 0.1;
			w = 0.057 * safezoneW;
			h = 0.025 * safezoneH;
			action = "closeDialog 0; [""defence""] execVM ""towerrush.sqf"";";
		}; 
		class TowerRush_Attack: RscButton1
		{
			idc = 1601;
			text = "Attack"; //--- ToDo: Localize;
			x = 0.41 * safezoneW + safezoneX + 0.12;
			y = 0.4 * safezoneH + safezoneY + 0.1;
			w = 0.057 * safezoneW;
			h = 0.025 * safezoneH;
			action = "closeDialog 0;[""attack""] execVM ""towerrush.sqf"";";
		};
	};
};