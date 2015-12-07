//Arma 3 Medic Box Script by [TF47] Chris (DEV) 

// Usage
// _Handle = this execVM "pathToScriptHere\Scriptnamehere.sqf";

// Settings
_amountMagazine = 30;
_refreshTime = 1800; // refill every 5 minutes

_this allowDamage false;

// Loop forever
while {true} do
{

	// Clear box
	clearWeaponCargo _this;
	clearMagazineCargo _this;
	clearItemCargoGlobal _this;
	clearBackpackCargoGlobal _this;
	
	_this addMagazineCargoGlobal ["UK3CB_BAF_1Rnd_81mm_Mo_shells", _amountMagazine];
	_this addMagazineCargoGlobal ["UK3CB_BAF_100Rnd_127x99_Box", _amountMagazine];
	_this addMagazineCargoGlobal ["UK3CB_BAF_32Rnd_40mm_G_Box", _amountMagazine];
	_this addMagazineCargoGlobal ["UK3CB_BAF_150Rnd_762x51_Box", _amountMagazine];

	// Wait the duration of _refreshTime
	sleep _refreshTime;
};