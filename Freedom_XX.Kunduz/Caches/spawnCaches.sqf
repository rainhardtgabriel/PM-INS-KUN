private ["_allHouses","_house1","_house2"];
_debug = _this select 0;

if !(isServer) then {[[[_debug],"scripts\spawnCaches.sqf"],"BIS_fnc_execVM",false,false] call BIS_fnc_MP;};
if !(isServer) exitWith {true};

if !(isNil "TF_CachesLeft") exitWith {true};

//Initialize Caches TF_CachesLeft = 3;
publicVariable "TF_CachesLeft";

_array = ["Land_jbad_House_9_old","Land_jbad_House_1_old","Land_Jbad_A_Mosque_small_1","Land_jbad_House_3_old","Land_jbad_House_4_old","Land_jbad_House_8_old","Land_jbad_House5","Land_jbad_House_c_11","Land_jbad_House_6_old","Land_Jbad_A_Mosque_small_2","Land_jbad_House_7_old","Land_jbad_House_1","Land_jbad_House_c_5","Land_jbad_House_c_1_v2","Land_jbad_House6","Land_jbad_House_c_1","Land_jbad_House3","Land_jbad_House8","Land_jbad_House_c_2","Land_jbad_House_c_5_v3","Land_jbad_House7","Land_jbad_House_c_5_v1","Land_jbad_House_c_3","Land_jbad_House_c_4","Land_jbad_House_c_5_v2"];
_allHouses = nearestobjects [[4000,4300,0],_array, 5000];

//Get house for 1st Cache
_house1 = _allHouses call BIS_fnc_selectRandom;
while {_house1 distance (getMarkerPos "flagge") < 800} do {
	_house1 = _allHouses call BIS_fnc_selectRandom;
};

//Get house for 2nd Cache
_house2 = _allHouses call BIS_fnc_selectRandom;
while {(_house2 distance (getMarkerPos "flagge") < 800) or (_house2 distance _house1 < 800)} do {
	_house2 = _allHouses call BIS_fnc_selectRandom;
};

//Get house for 3rd Cache
_house3 = _allHouses call BIS_fnc_selectRandom;
while {(_house3 distance (getMarkerPos "flagge") < 800) or (_house3 distance _house1 < 800) or (_house3 distance _house2 < 800)} do {
	_house3 = _allHouses call BIS_fnc_selectRandom;
};

//Get house for 4rd Cache
_house4 = _allHouses call BIS_fnc_selectRandom;
while {(_house4 distance (getMarkerPos "flagge") < 800) or (_house4 distance _house1 < 800) or (_house4 distance _house2 < 800) or (_house4 distance _house3 < 800)} do {
	_house4 = _allHouses call BIS_fnc_selectRandom;
};



//Create Caches
Cache1 = createVehicle ["Box_FIA_Wps_F", (_house1 buildingPos 0), [], 1, "NONE"];
Cache2 = createVehicle ["Box_FIA_Wps_F", (_house2 buildingPos 0), [], 1, "NONE"];
Cache3 = createVehicle ["Box_FIA_Wps_F", (_house3 buildingPos 0), [], 1, "NONE"];
Cache4 = createVehicle ["Box_FIA_Wps_F", (_house4 buildingPos 0), [], 1, "NONE"];

publicVariable "Cache1";
publicVariable "Cache2";
publicVariable "Cache3";
publicVariable "Cache4";

{
	//Empty Caches
	clearWeaponCargoGlobal _x;
	clearMagazineCargoGlobal _x;

	_x addMPEventHandler ["MPHit", {if (isServer and (_this select 2) < 1) then {(_this select 0) setDamage 0;};}];
	_x addMPEventHandler ["MPkilled", {if (isServer) then {[(_this select 0)] call TF_caches_fnc_Destroyed;};}];
	_x enableSimulationGlobal false; 
} forEach [Cache1,Cache2,Cache3,Cache4];


//DEBUG
if (_debug) then {

	for "_i" from 1 to 4 do {
		_marker = createMarker [format ["M_Cache_%1",_i],[0,0]];
		_marker setMarkerShape "ICON";
		_marker setMarkerType "mil_DOT";
		_marker setMarkerColor "ColorRed";
		switch (_i) do {
			case 1: {_marker setMarkerPos [getPos Cache1 select 0, getpos Cache1 select 1]};
			case 2: {_marker setMarkerPos [getPos Cache2 select 0, getpos Cache2 select 1]};
			case 3: {_marker setMarkerPos [getPos Cache3 select 0, getpos Cache3 select 1]};
			case 4: {_marker setMarkerPos [getPos Cache4 select 0, getpos Cache4 select 1]};
		};
	};
};