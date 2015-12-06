if (isServer) then {
 
        if ((count (Cache1 getVariable ["TF_IntelMarker",[]]) != 18) or (count (Cache2 getVariable ["TF_IntelMarker",[]]) != 18) or (count (Cache3 getVariable ["TF_IntelMarker",[]]) != 18) or (count (Cache4 getVariable ["TF_IntelMarker",[]]) != 18)) then {
       
                //select random Cache
                _cache = [Cache1,Cache2,Cache3,Cache4] call BIS_fnc_selectRandom;
 
                while {(count (_cache getVariable ["TF_IntelMarker",[]]) == 18) or (isNull _Cache)} do {
                        _cache = [Cache1,Cache2,Cache3,Cache4] call BIS_fnc_selectRandom;
                };
 
                //get a array of all old marker
                _oldMarker = _cache getVariable ["TF_IntelMarker",[]];
 
                //get the next distance related to the count of the old Marker
                _maxdistance = switch (count _oldMarker) do {
                        case (0):  {3000};
                        case (1):  {2500};
                        case (2):  {2000};
                        case (3):  {1800};
                        case (4):  {1600};
                        case (5):  {1400};
                        case (6):  {1200};
                        case (7):  {1000};
                        case (8):  {900};
                        case (9):  {800};
                        case (10): {700};
                        case (11): {600};
                        case (12): {500};
                        case (13): {400};
                        case (14): {300};
                        case (15): {200};
                        case (16): {100};
                        case (17): {50};
                };
 
                _mindistance = switch ((count _oldMarker) + 2) do {
                        case (2):  {2000};
                        case (3):  {1800};
                        case (4):  {1600};
                        case (5):  {1400};
                        case (6):  {1200};
                        case (7):  {1000};
                        case (8):  {900};
                        case (9):  {800};
                        case (10): {700};
                        case (11): {600};
                        case (12): {500};
                        case (13): {400};
                        case (14): {300};
                        case (15): {200};
                        case (16): {100};
                        case (17): {50};
                        default    {0};
                };
 
                //Get random pos
                _pos = [(getPos _cache), _mindistance, _maxdistance, 0, 1, 20, 0] call BIS_fnc_findSafePos;
 
                //CreateMarker
                _marker = createMarker [(format ["M_%1_%2",_cache, (count _oldMarker)]),_pos];
                _marker setMarkerShape "ICON";
                _marker setMarkerType "mil_dot";
                _marker setMarkerText (format ["%1m",_maxdistance]);
 
                //update Variable
                _oldMarker pushBack _marker;
                _cache setVariable ["TF_IntelMarker",_oldMarker];
        };
 
} else {
        [[],"TF_fnc_Intel_create",false,false] call BIS_fnc_MP;
};