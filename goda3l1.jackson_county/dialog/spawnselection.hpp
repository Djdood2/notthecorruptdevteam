class life_spawn_selection {
    idd = 38500;
    movingEnable = 0;
    enableSimulation = 1;
 
    class controlsBackground {
      class SpawnBackground: Life_RscPicture
      {
			text = "\A3LRP_Client\spawnmenu.paa";
        idc = -1;
        x = 0.21125 * safezoneW + safezoneX;
        y = -0.017 * safezoneH + safezoneY;
        w = 0.587812 * safezoneW;
        h = 1.012 * safezoneH;
      };
      class MapView: Life_RscMapControl
      {
        idc = 38502;
        maxSatelliteAlpha = 0.75;
        alphaFadeStartScale = 1.15;
        alphaFadeEndScale = 1.29;
 
        x = 0.515469 * safezoneW + safezoneX;
        y = 0.412 * safezoneH + safezoneY;
        w = 0.211406 * safezoneW;
        h = 0.275 * safezoneH;
      };
    };
 
    class controls {
      class SpawnPointList: Life_RscListNBox
      {
        idc = 38510;
        coloumns[] = {0,0,0.9};
        drawSideArrows = 0;
        idcLeft = -1;
        idcRight = -1;
        rowHeight = 0.09;
        font = "PuristaMedium";
        onLBSelChanged = "_this call life_fnc_spawnPointSelected;";
 
        x = 0.309219 * safezoneW + safezoneX;
        y = 0.456 * safezoneH + safezoneY;
        w = 0.174281 * safezoneW;
        h = 0.2112 * safezoneH;
      };
      class spawnButton: Life_RscButtonInvisible
      {
        onButtonClick = "[] call life_fnc_spawnConfirm";
        idc = 1006;
        tooltip = "Click me to to board your flight to Lakeside.";
        text = ""; //--- ToDo: Localize;
        x = 0.65675 * safezoneW + safezoneX;
        y = 0.302 * safezoneH + safezoneY;
        w = 0.0598125 * safezoneW;
        h = 0.022 * safezoneH;
        //colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",0.5};
      };
      class ReturnToLobbyButton: Life_RscButtonInvisible
      {
        onButtonClick = "endmission'memes';";
        idc = 1007;
 
        text = ""; //--- ToDo: Localize;
        x = 0.727906 * safezoneW + safezoneX;
        y = 0.2096 * safezoneH + safezoneY;
        w = 0.0226875 * safezoneW;
        h = 0.0198 * safezoneH;
      };
 
    };
};