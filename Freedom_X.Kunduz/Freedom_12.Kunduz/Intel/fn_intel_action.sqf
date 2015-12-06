//ACTION: this addAction ["INTEL",TF_fnc_intel_action];
 
_caller = _this select 1;
 
_items = (uniformItems _caller) + (vestItems _caller) + (backpackItems _caller);
 
if ((count (Cache1 getVariable ["TF_IntelMarker",[]]) == 18) and (count (Cache2 getVariable ["TF_IntelMarker",[]]) == 18) and (count (Cache3 getVariable ["TF_IntelMarker",[]]) == 18) and (count (Cache4 getVariable ["TF_IntelMarker",[]]) == 18)) then {
        if (player == _caller) then {
                hint parseText "<t color='#0101DF'>You cant gather furter intel.<br/><br/>Du kannst keine weitere Intel mehr sammeln.</t>";
        };
} else {
       
        if ("ACE_Cellphone" in _items) then {
 
                _caller removeItem "ACE_Cellphone";
                [[],"TF_fnc_Intel_create",false,false] call BIS_fnc_MP;
                if (player == _caller) then {
                        hint parseText "<t color='#40FF00'>You have handed in one Cellphone.<br/><br/>Du hast ein Handy abgegeben.</t>";
                };
       
        } else {
                if (player == _caller) then {
                        hint parseText "<t color='#FF0000'>You need to have a cellphone in your inventory, to do this.<br/><br/>Du musst ein Handy haben, um dies zu machen.</t>";
                };     
        };
 
};