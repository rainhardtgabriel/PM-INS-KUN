_cache = _this select 0;

//Folgende Zeile drin lassen, dass sie wirklich kaputt geht
_cache enableSimulationGlobal true;


//kann gelöscht werden nur test hint
["Cache Destroyed","hint",true,false] call BIS_fnc_MP;

["tf47_changetickets", [WEST, 2, 20]] call CBA_fnc_globalEvent;

cacheCount = cacheCount + 1;
publicVariable "cacheCount";

if(cacheCount >= 4) then {
    ["end1", "BIS_fnc_endMission",true,false] call BIS_fnc_MP;
};

//Intel löschen 
{
    deleteMarker _x;
} forEach (_cache getVariable ["TF_IntelMarker",[]]);