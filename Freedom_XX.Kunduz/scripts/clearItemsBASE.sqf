/*
@filename: clearItemsBASE.sqf
Author:

	Quiksilver
	
Description:

	Clear items from the base area.
	Activated via addAction on PC terminal at base.
	Linked to file clearItemsBASE_switch.sqf.
	
____________________________________________________________________*/


while {true} do {

private ["_obj", "_rad"];
_obj = _this select 0;    // object center point for radius.
_rad = _this select 1;  //  radius outwards from center point to clear items.
    
_clear = nearestObjects [_obj,["weaponholder"],_rad + 50];
	for "_i" from 0 to count _clear - 1 do {
	deleteVehicle (_clear select _i);
	sleep 0.056;
	};

sleep 420;
};