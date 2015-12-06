waitUntil { isServer || !isNull player };
cfgTF47 = compile preprocessFileLineNumbers "cfgTF47.sqf";
private "_pathToScripts";
call cfgTF47;

tf47_fnc_vehicleOnEnter     = compileFinal preprocessFileLineNumbers format ["%1vehicleOnEnter.sqf", _pathToScripts];
tf47_fnc_unitMarkerInit     = compileFinal preprocessFileLineNumbers format ["%1unitMarkerInit.sqf", _pathToScripts];
tf47_fnc_vehicleOnSpawn     = compileFinal preprocessFileLineNumbers format ["%1vehicleOnSpawn.sqf", _pathToScripts];

//"rot_trans_spawn_mark_1" setMarkerText format ["%1playerEvents.sqf", _pathToScripts];;

// client event handler
//hint "player eevnts";
execVM format ["%1playerEvents.sqf", _pathToScripts];

// DB Functionality & Ticket System
execVM format ["%1serverEvents.sqf", _pathToScripts];

// Special Markers
execVM format ["%1mapMarkerInit.sqf", _pathToScripts];

[false,"ColorBlufor","ColorGreen","ColorOrange"] call TF47_UMenu_fnc_EnableUMenu;

#include "ZadeServicePoint\include\init.hpp"
