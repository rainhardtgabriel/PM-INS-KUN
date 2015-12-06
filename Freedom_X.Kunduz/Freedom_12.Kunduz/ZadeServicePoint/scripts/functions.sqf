////////////////////////////////////////////////////////////////////////////////
/*
 *	Name: ZadeServicePoint_fnc_Playerinit
 *	Author:	DerZade
 *	Description: Initializes all important Stuff for a local player  
 *	
 *	Parameter:
 *		0: Player 
 *		1: Initalize EH? 
 *
 *	Return Value: NONE	
 */
////////////////////////////////////////////////////////////////////////////////
ZadeServicePoint_fnc_Playerinit = {
	private ["_player","_initEH"];
	
	if (!isMultiplayer or !isServer) then {
		_player = _this select 0;
		_initEH = [_this, 1, false] call BIS_fnc_param;
		
		//Add Action to player
		_player addAction ["<t color='#8A0808'>Service Menu</t>",{createDialog 'ZadeServicePoint_ServiceVehicleDialog';},nil,2,true,false,"","[_this] call ZadeServicePoint_fnc_actionCondition"];

		//Initialize the Respawn EH
		if (_initEH) then {
			(_this select 0) addEventHandler ["Respawn",{[(_this select 0)] call ZadeServicePoint_fnc_playerInit;}];
		};
	};
};

////////////////////////////////////////////////////////////////////////////////
/*
 *	Name: ZadeServicePoint_fnc_checkWeapons
 *	Author:	DerZade
 *	Description: Function to check whether a vehicles has any weapons
 *	
 *	Parameter:
 *		0: Vehicle
 *
 *	Return Value:
 *		hasWeapons (BOOL) 
 */
////////////////////////////////////////////////////////////////////////////////
ZadeServicePoint_fnc_checkWeapons = {
	private ["_veh","_turretsconfig","_hasWeap"];

	_veh = _this select 0;
	_turretsconfig = (configFile >> "CfgVehicles" >> (typeOf _veh) >> "Turrets");
	_hasWeap = true; 

	IF (count _turretsconfig == 0) then {
		_hasWeap = false;
	} else {
		_hasWeap = false;
		{	
			if (count (getArray(_x >> "Weapons")) > 0) then {
				_hasWeap = true;
			};
		} forEach ("true" configClasses _turretsconfig);
	};
	IF (count getArray (configFile >> "CfgVehicles" >> (typeOf _veh) >> "Weapons") > 1) then {
		_hasWeap = true;	
	};

	//Return Value
	_hasWeap
};

////////////////////////////////////////////////////////////////////////////////
/*
 *	Name: ZadeServicePoint_fnc_getDamage
 *	Author:	DerZade
 *	Description: Function to get the damage of a vehicle related to its HitPoints
 *	
 *	Parameter:
 *		0: Vehicle 
 *
 *	Return Value: 
 * 		Damage (Number from 1 to 0 or -1 for error)
 */
////////////////////////////////////////////////////////////////////////////////
ZadeServicePoint_fnc_getDamage = {
	private ["_veh","_hitPoints","_wheels","_dam","_wheeldam","_hitdam"];

	_veh = [_this, 0,nil] call BIS_fnc_param;
	_dam = 0;

	if !(isNil "_veh") then {
		//Get all HitPoints
		_wheels = ("configName _x in ['HitLFWheel','HitLF2Wheel','HitRFWheel','HitRF2Wheel','HitLBWheel','HitLMWheel','HitRBWheel','HitRMWheel']"    configClasses (configFile >> "CfgVehicles" >> (typeOf _veh) >> "HitPoints"));
		_hitPoints = ("!(configName _x in ['HitLFWheel','HitLF2Wheel','HitRFWheel','HitRF2Wheel','HitLBWheel','HitLMWheel','HitRBWheel','HitRMWheel'])" configClasses (configFile >> "CfgVehicles" >> (typeOf _veh) >> "HitPoints"));
	
		_hitdam = 0; 
		{
			_hitdam = _dam + (_veh getHitPointDamage (configName _x));
		} forEach _hitPoints;

		_wheeldam = 0;
		{
			_wheeldam = _wheeldam + (_veh getHitPointDamage (configName _x));
		} forEach _wheels;

		_dam = _hitDam;
		if (count _hitPoints > 0) then {
			if (count _wheels > 0) then {
				_wheeldam = _wheeldam / (count _wheels);
				_dam = _dam + _wheeldam;
				_dam = _dam / (count _hitPoints + 1);
			} else {
				_dam = _dam / (count _hitPoints);
			};
		};
	};
	//Return Value
	_dam
};

////////////////////////////////////////////////////////////////////////////////
/*
 *	Name: ZadeServicePoint_fnc_getAmmo
 *	Author:	DerZade
 *	Description: Function to get the ammo of a vehicle 
 *	
 *	Parameter:
 *		0: Vehicle 
 *
 *	Return Value: 
 * 		Ammo (Number from 1 to 0 or -1)	
 */
////////////////////////////////////////////////////////////////////////////////
ZadeServicePoint_fnc_getAmmo = {
	private ["_veh","_allturrets","_ammo","_dam","_turretsconfig","_subclass","_count","_maxammo","_checkedmags","_mags","_curAmmo"];

	_veh = _this select 0;

//GET MAXIMAL AMMO
	_allturrets = [];
	_ammo = 0;
	_dam = 0;
	_turretsconfig = (configFile >> "CfgVehicles" >> (typeOf _veh) >> "Turrets");
	if (!(isNil "_veh")) then {
		//Get all Turret
		{
		  	_turret = _x;
		  	_allturrets = _allturrets + [_turret];

		  	//Get Sub Classes of Turret
		  	{
		  		_subclass = _x;
		  		_subclass = configName _subclass;
		  		//IF SubClass == class Turrets
		  		if (_subclass == "Turrets") then {
		  			{
						_turret = _x;
					  	_allturrets = _allturrets + [_turret];
		  			} forEach ("true" configClasses _x);
		  		};
			} forEach ("true" configClasses _x);
		
		} forEach ("true" configClasses _turretsconfig);

		//Get All Ammo of turrets
		{
			{
				_count = getNumber (configFile >> "CfgMagazines" >> _x >> "Count");
				_ammo = _ammo + _count;
			} forEach (getArray (_x >> "magazines"));
		} forEach _allturrets;

		//Get all Ammo of Driver
		{
				_count = getNumber (configFile >> "CfgMagazines" >> _x >> "Count");
				_ammo = _ammo + _count;
		} forEach (getArray (configFile >> "CfgVehicles" >> (typeOf _veh) >> "magazines"));
	};
	_maxammo = _ammo;

//GET CURRENT AMMO
	_ammo = 0;

	_allturrets = allTurrets [_veh, false];
	_allturrets = _allturrets + [[-1]];

	{
		_turret = _x;
		_checkedmags = [];
		_mags = (_veh MagazinesTurret _turret);

		{
			_mag = _x;
			_count = _veh magazineTurretAmmo [_mag,_turret];

			if (_mag in _checkedmags) then {
				_count = getNumber (configFile >> "CfgMagazines" >> _mag >> "Count");
			};
			
			_checkedmags = _checkedmags + [_mag];
			_ammo = _ammo + _count;
		} forEach  _mags;
	
	} forEach _allTurrets;
	_curammo = _ammo;

//CHECK WEAPONS
	_hasWeap = [_veh] call ZadeServicePoint_fnc_checkWeapons;
	

	_ammo = -1;

	if (_maxAmmo != 0) then {
		_ammo = _curAmmo / _maxAmmo;
	};

	if (!_hasWeap) then {
		_ammo = -1;
	};

	//Return Value
	_ammo
};

////////////////////////////////////////////////////////////////////////////////
/*
 *	Name: ZadeServicePoint_fnc_actionCondition
 *	Author:	DerZade
 *	Description: Function to chekc if a unit should get the ServiceMenu-Action
 *	
 *	Parameter:
 *		0: Caller 
 *
 *	Return Value: 
 *		Should Get Action?  (BOOL)
 */
////////////////////////////////////////////////////////////////////////////////
ZadeServicePoint_fnc_actionCondition = {
	private ["_player","_veh","_shouldgetAction"];

	_player = _this select 0;
	_veh = vehicle _player;
	_shouldgetAction = true;

	//Check Basic stuff
	if (_veh == _player or (driver _veh) != _player or (getpos (_veh) select 2) > 2 or count ZadeServicePoint_Trigger == 0) then {_shouldgetAction = false;};

	//Check for a trigger
	if (_shouldgetAction) then {
		_shouldgetAction = false;
		{
			if (_veh in list _x) then {
				//Check Classes
				{
					if (_veh isKindOf _x) then {
						_shouldgetAction = true;
					};
				} forEach (_x getVariable "ZadeServicePoint_Classes");
			};
		} forEach ZadeServicePoint_Trigger;
	};

	//Return Value
	_shouldgetAction
};

////////////////////////////////////////////////////////////////////////////////
/*
 *	Name: ZadeServicePoint_fnc_rearmVehicle
 *	Author:	DerZade
 *	Description: Function to fully rearm a vehicle (thanks BI)
 *	
 *	Parameter:
 *		0: Vehicle 
 *
 *	Return Value: NONE
 */
////////////////////////////////////////////////////////////////////////////////
ZadeServicePoint_fnc_rearmVehicle = {

	_veh = _this select 0;

	//Remove all Magazines from all Turrets
	{
		_turret = _x;
		{
			_veh removeMagazineTurret [_x,_turret];
		} forEach (_veh magazinesTurret _x); //all magazines of the current turret 

	} forEach ((allTurrets _veh) + [[-1]]); //all turrets of the vehicle

	//Add normal amount of magazines to driver
	{
		_veh addMagazineTurret [_x,[-1]];
	} forEach (getArray (configFile >> "CfgVehicles" >> (typeOf _veh) >> "magazines")); //All magazines of the driver

	//Add normal amount of magazines to all other turrets
	{
		_parentindex = _forEachIndex;
		{
			_veh addMagazineTurret [_x,[_parentindex]];
		} forEach (getArray (_x >> "magazines"));

		//Check if there are any Sub-Turrets
		if (isClass (_x >> "Turrets")) then {
			{
				_childindex = _forEachIndex;
				{
					_veh addMagazineTurret [_x, [_parentindex,_childindex]]
				} forEach (getArray (_x >> "Magazines"));
			} forEach ("true" configClasses (_x >> "Turrets")); //All Sub-Turrets
		};
	} forEach ("true" configClasses (configFile >> "CfgVehicles" >> (typeOf _veh) >> "Turrets")); //All Main-Turrets of _veh

	_veh setVehicleAmmo 1;

};

publicVariable "ZadeServicePoint_fnc_Playerinit";
publicVariable "ZadeServicePoint_fnc_checkWeapons";
publicVariable "ZadeServicePoint_fnc_getDamage";
publicVariable "ZadeServicePoint_fnc_getAmmo";
publicVariable "ZadeServicePoint_fnc_actionCondition";
publicVariable "ZadeServicePoint_fnc_rearmVehicle";