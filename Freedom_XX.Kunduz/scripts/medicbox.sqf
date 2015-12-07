//Arma 3 Medic Box Script by [TF47] Chris (DEV) 

// Usage
// _Handle = this execVM "pathToScriptHere\Scriptnamehere.sqf";

// Settings
_amountItem = 50;
_refreshTime = 600; // refill every 5 minutes

_this allowDamage false;

// Loop forever
while {true} do
{

	// Clear box
	clearWeaponCargo _this;
	clearMagazineCargo _this;
	clearItemCargoGlobal _this;
	clearBackpackCargoGlobal _this;
	
	_this addItemCargoGlobal ["ACE_personalAidKit", _amountItem];
	_this addItemCargoGlobal ["ACE_atropine", _amountItem];
	_this addItemCargoGlobal ["ACE_fieldDressing", _amountItem];
	_this addItemCargoGlobal ["ACE_elasticBandage", _amountItem];
	_this addItemCargoGlobal ["ACE_quikclot", _amountItem];
	_this addItemCargoGlobal ["ACE_bloodIV", _amountItem];
	_this addItemCargoGlobal ["ACE_bloodIV_500", _amountItem];
	_this addItemCargoGlobal ["ACE_bloodIV_250", _amountItem];
	_this addItemCargoGlobal ["ACE_bodyBag", _amountItem];
	_this addItemCargoGlobal ["ACE_epinephrine", _amountItem];
	_this addItemCargoGlobal ["ACE_morphine", _amountItem];
	_this addItemCargoGlobal ["ACE_packingBandage", _amountItem];
	_this addItemCargoGlobal ["ACE_plasmaIV", _amountItem];
	_this addItemCargoGlobal ["ACE_plasmaIV_500", _amountItem];
	_this addItemCargoGlobal ["ACE_plasmaIV_250", _amountItem];
	_this addItemCargoGlobal ["ACE_salineIV", _amountItem];
	_this addItemCargoGlobal ["ACE_salineIV_500", _amountItem];
	_this addItemCargoGlobal ["ACE_salineIV_250", _amountItem];
	_this addItemCargoGlobal ["ACE_surgicalKit", _amountItem];
	_this addItemCargoGlobal ["ACE_tourniquet", _amountItem];

	
	// Wait the duration of _refreshTime
	sleep _refreshTime;
};