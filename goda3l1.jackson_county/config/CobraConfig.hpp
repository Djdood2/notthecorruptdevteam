//to do
//move all of my shit to this sexy master config
//example: 	
//_loot = getArray (missionConfigFile >> "CobraConfig" >> "Gold" >> "data"); will the type of loot for the fed
class CobraConfig {
	///Amount of gold stored upon server restart/locked vault..
	class Gold {
		data[] = {
			{"gold", 25},
			{"condom", 1}
		};
	};
};