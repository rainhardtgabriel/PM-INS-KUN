/*///////////////////////////////////////////////////////////////////////////
	Service Point Properties
*////////////////////////////////////////////////////////////////////////////

//Time needed to refuel a vehicle  
ZadeServicePoint_Time_Refuel = 30;	// Default = 300

//Time needed to theoretically fully repair a vehicle
ZadeServicePoint_Time_Repair = 30;	// Default = 300

//Time needed to rearm a vehicle 
ZadeServicePoint_Time_Rearm = 30;	// Default = 300

//Time needed to clear the gear of a vehicle 
ZadeServicePoint_Time_Clear = 15;	// Default = 150

//Time Multiplier for Air Vehicles
ZadeServicePoint_AirMultiplier = 1;	// Default = 1

//Code thats beeing called beofre respawn (Vehicle = _this)
ZadeServicePoint_BeforeRespawnCode = {};	// Default = {}

//A List of All Vehices that aren't allowed to load a Loadout 	
ZadeServicePoint_DisallowLoadouts = ["O_Quadbike_01_F","B_G_Quadbike_01_F","B_Plane_CAS_01_F"]; //Default = ["B_Quadbike_01_F","B_G_Quadbike_01_F","B_Plane_CAS_01_F"];


/*///////////////////////////////////////////////////////////////////////////
	Service Point Loadouts
*////////////////////////////////////////////////////////////////////////////

/*
A Loadout is a array containing of:
	0: Remove previous Gear (BOOL)
	1: Loadout Name (STRING)
	2: Loading Time (NUMBER)
	3: Weapons (ARRAY)
	4: Magazines (ARRAY)
	5: Items (ARRAY)
	6: Backpack (ARAAY)

A item/weapon/Magazine/Backpack-Array contains of arrays containing the classname and the amount.
Weapons Example: [["arifle_MX_F",5],["hgun_P07_F",1],["launch_NLAW_F",1]];

Examples:

_Weapons = [["arifle_MX_F",5],["hgun_P07_F",1],["launch_NLAW_F",1]];
_Mags	= [["30Rnd_65x39_caseless_mag",20],["HandGrenade",10],["30Rnd_65x39_caseless_mag_Tracer",20]];
_Items	= [["ItemGPS",1],["MineDetector",1]];
_Backpack = [];
_RandomLoadout = [true,"Random Loadout",120,_Weapons,_Mags,_Items,_Backpack];

_UAV = [false,"UAV Operator",1,[],[],[["B_UavTerminal",1]],[["B_UAV_01_backpack_F",1]]];
*/
//Place for your Loadouts

_UAV = [false,"UAV Operator",1,[],[],[["B_UavTerminal",1]],[["B_UAV_01_backpack_F",1]]];



//A Array containing all Loadouts. You have to add all Loadouts which should be avaliable ingame
ZadeServicePoint_Loadouts = [_uav];

//Dont change this one
if (true) exitWith {};