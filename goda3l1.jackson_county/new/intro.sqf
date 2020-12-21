waitUntil {alive player};

cutText ["Setting up player, please wait!","BLACK OUT",0];
waituntil {!isnull (finddisplay 46)};
cutText ["","PLAIN",0];

lastPressed = 0;

introCam = "camera" camCreate [position loadingCar select 0, position loadingCar select 1, 7]; 
introCam camSetTarget loadingCar; 
introCam cameraEffect ["Internal", "BACK"]; 
showCinemaBorder false;
introCam camCommit 0; 

_dialog = createDialog "an_intro";
if (!_dialog) then {
	hint "Failed to create dialog retrying in 3 seconds!";
	diag_log "Failed";
	sleep 3;
	_dialog = createDialog "an_intro";
};

stopKeys = (findDisplay 420) displaySetEventHandler ["KeyDown","if((_this select 1) isEqualTo 1) then {true}"];
_text = format ["<br />Level %2<br /><t size=""2.5"">%1</t>", profileName, zCFxTiwLFG];
((findDisplay 420) displayCtrl 2202) ctrlSetStructuredText parseText _text;

ctrlShow [1101, false];
ctrlShow [1001, false];
ctrlShow [2201, false];

((findDisplay 420) displayCtrl 1600) ctrlSetEventHandler ["ButtonClick", "[1600] call fn_introButtonPress"];
((findDisplay 420) displayCtrl 1601) ctrlSetEventHandler ["ButtonClick", "[1601] call fn_introButtonPress"];
((findDisplay 420) displayCtrl 1602) ctrlSetEventHandler ["ButtonClick", "[1602] call fn_introButtonPress"];
((findDisplay 420) displayCtrl 1603) ctrlSetEventHandler ["ButtonClick", "[1603] call fn_introButtonPress"];
((findDisplay 420) displayCtrl 1605) ctrlSetEventHandler ["ButtonClick", "[1605] call fn_introButtonPress"];
((findDisplay 420) displayCtrl 1604) ctrlSetEventHandler ["ButtonClick", "[1604] call fn_introButtonPress"];

fn_introButtonPress = {
	introidd = _this select 0;
	if (introidd == lastPressed) then {
		ctrlShow [1101, false];
		ctrlShow [1001, false];
		ctrlShow [2201, false];
	} else {
		switch(introidd) do {
			case 1600: {
				closedialog 420;
				introCam cameraEffect ["Terminate", "BACK"];
				1 cutText ["", "BLACK IN", 5];
				[] call life_fnc_spawnMenu;
			};
			case 1601:
			{
				((findDisplay 420) displayCtrl 1101) ctrlSetStructuredText parseText "<t size=""4"" color=""#000000"">Changelog</t><br/><t size=""2"" color=""#000000""><t underline='true' size='2.7'>Changelog 3.18</t><br/>Released 14th March. Added 2 new vehicles and fixed some minor bugs.</t>";
				ctrlShow [1101, true];
				ctrlShow [1001, true];
				ctrlShow [2201, true];
			};
			case 1602:
			{
				((findDisplay 420) displayCtrl 1101) ctrlSetStructuredText parseText "<t size=""4"" color=""#000000"">About Lakeside</t><br/><t size=""2"" color=""#000000"">Welcome to the land of Lakeside, Lakeside is a fictional part of the United States and so has similar laws, enforced by the Lakeside Police Department.</t>";
				ctrlShow [1101, true];
				ctrlShow [1001, true];
				ctrlShow [2201, true];
			};
			case 1603:
			{
				((findDisplay 420) displayCtrl 1101) ctrlSetStructuredText parseText "<t size=""4"" color=""#000000"">Staff</t><br/><t size=""2"" color=""#000000"">This server is part of <a href='http:/armaliferp.co.uk'>ALRP</a> and so the staff from all of our servers carry over onto here. If you have any issues or concerns please go to our ""Requesting staff"" channels near the top of the server.</t>";
				ctrlShow [1101, true];
				ctrlShow [1001, true];
				ctrlShow [2201, true];
			};
			case 1604:
			{
				((findDisplay 420) displayCtrl 1101) ctrlSetStructuredText parseText "<t size=""4"" color=""#000000"">Credits</t>
				<br/><t size=""2"" color=""#000000"">ALRP uses mods and content from a variety of different sources.
				<br />
				<br /><t underline='true'>Lakeside Map</t>
					<br />A2 Author: Falcos
					<br />A3 Porter/Author: Schultz
					<br />Edited by: ALRP
				<br /><t underline='true'>Jonzie Mega Mod Pack</t>
					<br />Author: Jonzie
				<br /><t underline='true'>Ivory Car Pack</t>
					<br />Author: Ivory
					<br /><t underline='true'>KA Weapon Pack</t>
					<br />Author: KICKASS
					<br /><t underline='true'>TRYK Pack</t>
					<br />Authors: teriyaki and zabb
					<br /><t underline='true'>TAC Vests</t>
					<br />Author: zabb
					<br /><t underline='true'>HLC Weapons Pack</t>
					<br />Author: toadie2k
					<br /><t underline='true'>FHQ Firearms and Weapons Pack  </t>
					<br />Author: Alwarren
					<br /><t underline='true'>Australian Buildings</t>
					<br />Author: mattaust
					<br />
					<br />
				<br /><t underline='true'>Special Thanks To:</t>
					<br />Optix - For providing us with a selection of cool content and helping us with a huge amount of problems.
					<br />Red - For supplying ALRP with a huge amount of custom cars that are of the best quality.
					<br />
				</t>";
				ctrlShow [1101, true];
				ctrlShow [1001, true];
				ctrlShow [2201, true];
			};
			case 1605:
			{
				((findDisplay 420) displayCtrl 1101) ctrlSetStructuredText parseText "<t size=""4"" color=""#000000"">Supporters</t><br/><t size=""2"" color=""#000000"">I'd also like to give a special thanks to the following supporters of ALRP!
					<br />
					<br /><t underline='true'>Development Support</t>
					<br />Optix
					<br />Red
					<br />J.Abruzzi
					<br /><t underline='true'>Content Creators</t>
					<br />PsiSyndicate
					<br />Cadan Pearce
					<br />Jounie
				</t>";
				ctrlShow [1101, true];
				ctrlShow [1001, true];
				ctrlShow [2201, true];
			};
		};
		lastPressed = introidd;
	};
};
 
while {true} do { 
	introCam camSetPos [position loadingCar select 0, (position loadingCar select 1) + 5, 5]; 
	introCam camCommit 10; 

	waitUntil { camCommitted introCam; };
	sleep 3;

	introCam camSetPos [(position loadingCar select 0) + 2, (position loadingCar select 1) + 5, 5]; 
	introCam camCommit 5; 
	
	waitUntil { camCommitted introCam; };
	sleep 3;

	introCam camSetPos [(position loadingCar select 0) + -5, (position loadingCar select 1) + 5, 5]; 
	introCam camCommit 10; 

	waitUntil { camCommitted introCam; };
	sleep 3;

	introCam camSetPos [(position loadingCar select 0) + 5, (position loadingCar select 1) - 2, 5]; 
	introCam camCommit 10; 

	waitUntil { camCommitted introCam; };
	sleep 3;
	
	introCam camSetPos [(position loadingCar select 0) - 2, (position loadingCar select 1) - 5, 5]; 
	introCam camCommit 10; 
	
	waitUntil { camCommitted introCam; };
	sleep 3;
};