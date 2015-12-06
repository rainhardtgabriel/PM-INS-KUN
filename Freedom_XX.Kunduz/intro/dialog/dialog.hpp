//////////////////////////////////////////////////////// 
// GUI EDITOR OUTPUT START (by Raini, v1.063, #Meredy)
////////////////////////////////////////////////////////
class intro_dialog
	{
		idd = 5000;
		movingeneable = 0;
		class controls
		{
			class Background: IGUIBack
			{
				idc = 1001;
				x = -0.0207699 * safezoneW + safezoneX;
				y = -0.0722336 * safezoneH + safezoneY;
				w = 1.8 * safezoneW;
				h = 1.8 * safezoneH;
				colorBackground[] = {0.01,0.01,0.01,1};
				colorActive[] = {0.01,0.01,0.01,1};
			};
			class TF47_Logo: RscPicture
			{
				idc = 1002;
				text = "intro\pics\taskforce47.paa";
				x = 0.175163 * safezoneW + safezoneX;
				y = -0.0832381 * safezoneH + safezoneY;
				w = 0.649673 * safezoneW;
				h = 0.594243 * safezoneH;
			};
			class MissionName: RscPicture
			{
				idc = 1003;
				text = "intro\pics\insurgency_kunduz.paa";
				x = 0.280003 * safezoneW + safezoneX;
				y = 0.48596 * safezoneH + safezoneY;
				w = 0.433116 * safezoneW;
				h = 0.286117 * safezoneH;
			};
			class presents_layer: RscStructuredText
			{
				idc = 1004;
				text = "<t align='center'><t color='#ffffff'><t font='TahomaB'>presents</t></t></t>";
				x = 0.427814 * safezoneW + safezoneX;
				y = 0.477991 * safezoneH + safezoneY;
				w = 0.139216 * safezoneW;
				h = 0.044018 * safezoneH;
				colorBackground[] = {0.1,0.1,0.1,0};
				colorActive[] = {0.1,0.1,0.1,0};
			};
			class credits_layer: RscStructuredText
			{
				idc = 1005;
				text = "<t color='#ff0000'><t align='center'><t font='TahomaB'><t shadow='1' shadowColor='#ffffff'>by John Hunter, Mr. W and Mr. Z </t></t></t></t>";
				x = 0.391721 * safezoneW + safezoneX;
				y = 0.775112 * safezoneH + safezoneY;
				w = 0.201089 * safezoneW;
				h = 0.0330135 * safezoneH;
				colorBackground[] = {1,1,1,0};
				colorActive[] = {1,1,1,0};
			};
		};
	};
class mission_dialog
	{
		idd = 5001;
		movingeneable = 0;
		class controls
		{
			class missionbriefing_layer: RscStructuredText
			{
				idc = 1010;
				text = "<t color='#ffffff'><t align='center'><t font='TahomaB'><t size='1.2'> Wilkommen in der Provinz Kunduz, Afghanistan, Soldat!</t></t></t></t><br /><br /><t allign='center'>Die NATO hat Sie hierher verlegt, um die Waffenlager der in der Provinz befindlichen Taliban zu finden und zu zerstören.<br />Zur Erfüllung Ihrer Mission, Kunduz von dem Terror der Taliban zu befreien, haben Sie vom Oberkommando der NATO 100 Tickets zugesichert bekommen.<br />Für jedes zerstörte Waffenlager erhalten wir neue Tickets.<br/>Uns liegen derzeit aber keine Informationen über die genauen Standorte der Waffenlager vor.<br />Ihre Aufgabe ist daher die in der Provinz aktiver werdenden Taliban aufzuspüren und Informationen über den Aufenthalt der Waffenlager zu sammeln.<br/ >Handeln Sie vorsichtig! Der Verlust unserer Einheiten sowie unserer Assets kostet Tickets. Wenn diese verbraucht sind, ist Ihr Auftrag gescheitert und wir müssen die Provinz verlassen.<br/><br/><t align='center'>Weggetreten!</t></t>";
				x = 0.293754 * safezoneW + safezoneX;
				y = 0.224888 * safezoneH + safezoneY;
				w = 0.412491 * safezoneW;
				h = 0.550225 * safezoneH;
				colorText[] = {0.1,0.1,0.1,0.1};
				colorBackground[] = {0,0,0,0};
				colorActive[] = {0,0,0,0};
			};
		};
	};