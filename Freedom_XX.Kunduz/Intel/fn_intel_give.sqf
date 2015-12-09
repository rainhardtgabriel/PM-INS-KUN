private "_unit";

_unit = _this select 0;

if(!(_unit getVariable["tf47_john_gotIt", false])) then {
	_unit setVariable["tf47_john_gotIt", true, true];
	// Only one Cellphone per unit max
	if (!("ACE_Cellphone" in (items _unit + assignedItems _unit)) && (random 1) >= 0.05) then {
		_unit removeItem "ACE_Tourniquet";
		_unit removeItems  "ACE_Cellphone";
		_unit addItem "ACE_Cellphone";
		
		// Debug
		if(!isMultiplayer) then {
			diag_log str (position _unit); 
		};
	};
};