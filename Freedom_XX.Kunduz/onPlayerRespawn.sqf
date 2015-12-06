if(typeOf (_this select 0) == "rhsusf_army_ocp_medic" || typeOf (_this select 0) == "rhsusf_navy_marpat_d_medic" || typeOf (_this select 0) == "UK3CB_BAF_HeliMedic_MTP" || typeOf (_this select 0) == "UK3CB_BAF_Medic_MTP" || typeOf (_this select 0) == "BWA3_CombatLifeSaver_Tropen")  then {
    (_this select 0) addAction["<t color='#FF0000'>HLW/CPR</t>", "scripts\cpr.sqf", _this select 0];
};

//private ["_unit","_marker"];
//_unit = _this select 0;

//_marker = Switch (faction _unit) do {
//	case "rhs_faction_usarmy_d":{"respawn_west"}; 
//	case "rhs_faction_usarmy_w":{"respawn_west"}; 
//	case "rhs_faction_usmc_d":{"respawn_west"}; 
//	case "rhs_faction_usn":{"respawn_west"}; 
//	case "UK3CB_BAF_Faction_Army_MTP" :{"respawn_west_1"}; 
//	case "BWA3_Faction":{"respawn_west_1"};
//};
//
//_Unit setPos (getMarkerPos _marker);

