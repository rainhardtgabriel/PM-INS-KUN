#define NO_SIDE -1
#define EAST_SIDE 0
#define WEST_SIDE 1
#define INDEP_SIDE 2
#define CIV_SIDE 3
#define NEUTRAL_SIDE 4
#define ENEMY_SIDE 5
#define FRIENDLY_SIDE 6
#define LOGIC_SIDE 7
 
//if (isServer) then {
{
 
        // Grab the parameter that was passed in.
        // The box should have "this execVM <scriptname>" in it's init field.
        //_box = [_this, 0, objNull, [objNull]] call BIS_fnc_param;
        _box = _x;
        // Check if @XLA_FixedArsenal is loaded
 
                [_box, [
 
//PISTOLS
"UK3CB_BAF_L131A1",

//LAUNCHER
"tf47_m3maaws",
"tf47_at4_heat",
"tf47_at4_HEDP",
"tf47_at4_HP",
"UK3CB_BAF_Javelin_Slung_Tube",
"UK3CB_BAF_NLAW_Launcher",

"UK3CB_BAF_L111A1",
"UK3CB_BAF_L134A1",
"UK3CB_BAF_L16",
"UK3CB_BAF_L16_Tripod",
"UK3CB_BAF_Tripod",



//PRIMARY
"UK3CB_BAF_L110A2",
"UK3CB_BAF_L110A2_FIST",
"UK3CB_BAF_L115A3_Desert",
"UK3CB_BAF_L115A3_Desert_Ghillie",
"UK3CB_BAF_L115A3",
"UK3CB_BAF_L115A3_Ghillie",
"UK3CB_BAF_L128A1",
"UK3CB_BAF_L129A1_Grippod",
"UK3CB_BAF_L129A1_FGrip",
"UK3CB_BAF_L129A1_AFG",
"UK3CB_BAF_L129A1",
"UK3CB_BAF_L7A2_FIST",
"UK3CB_BAF_L7A2",
"UK3CB_BAF_L82A1",
"UK3CB_BAF_L85A2",
"UK3CB_BAF_L85A2_RIS_AFG",
"UK3CB_BAF_L85A2_EMAG",
"UK3CB_BAF_L85A2_RIS",
"UK3CB_BAF_L85A2_UGL",
"UK3CB_BAF_L85A2_UGL_HWS",
"UK3CB_BAF_L86A3",
"UK3CB_BAF_L86A2",
"UK3CB_BAF_L92A1",
"UK3CB_BAF_L91A1"
 
 
                ],false, true] call xla_fnc_addVirtualWeaponCargo;
               
                [_box, [
               
//LAUNCHER AMMO
"tf47_m3maaws_HEAT",
"tf47_m3maaws_HEDP",
"tf47_m3maaws_HE",
"tf47_m3maaws_SMOKE",
"tf47_m3maaws_ILLUM",
"tf47_at4_m_HEAT",
"tf47_at4_m_HEDP",
"tf47_at4_m_HP",
"UK3CB_BAF_32Rnd_40mm_G_Box",
"UK3CB_BAF_32Rnd_40mm_G_Box",
"UK3CB_BAF_100Rnd_127x99_Box",
"UK3CB_BAF_1Rnd_81mm_Mo_Flare_white",
"UK3CB_BAF_1Rnd_81mm_Mo_Smoke_white",
"UK3CB_BAF_1Rnd_81mm_Mo_shells", 
"UK3CB_BAF_150Rnd_762x51_Box",

		 
//PISTOL AMMO
"UK3CB_BAF_17Rnd_9mm",
 
//RIFLE AMMO
"UK3CB_BAF_100Rnd",
  "UK3CB_BAF_100Rnd_T",
  "UK3CB_BAF_200Rnd",
  "UK3CB_BAF_200Rnd_T",
  "UK3CB_BAF_L115A3_Mag",
  "UK3CB_BAF_L128A1_Slugs",
  "UK3CB_BAF_L128A1_Pellets",
  "UK3CB_BAF_20Rnd",
  "UK3CB_BAF_20Rnd_T",
  "UK3CB_BAF_75Rnd",
  "UK3CB_BAF_75Rnd_T",
  "UK3CB_BAF_10Rnd_127x99mm",
  "UK3CB_BAF_10Rnd_127x99mm_SLAP",
  "5Rnd_127x108_Mag",
  "5Rnd_127x108_APDS_Mag",
  "UK3CB_BAF_30Rnd",
  "UK3CB_BAF_30Rnd_T",
  "UK3CB_BAF_30Rnd_9mm",

//ULG Ammo
"ACE_HuntIR_M203",
"UK3CB_BAF_1Rnd_HEDP_Grenade_shell",
"1Rnd_HE_Grenade_shell",
"UGL_FlareCIR_F",
"UGL_FlareWhite_F",
"UGL_FlareGreen_F",
"UGL_FlareRed_F",
"UGL_FlareYellow_F",
"1Rnd_Smoke_Grenade_shell",
"1Rnd_SmokeRed_Grenade_shell",
"1Rnd_SmokeGreen_Grenade_shell",
"1Rnd_SmokeYellow_Grenade_shell",
"1Rnd_SmokePurple_Grenade_shell",
"1Rnd_SmokeBlue_Grenade_shell",
"1Rnd_SmokeOrange_Grenade_shell",

//Explosives
"SatchelCharge_Remote_Mag",
"ClaymoreDirectionalMine_Remote_Mag",
"DemoCharge_Remote_Mag",
 
//GRENADES
"rhs_mag_m67",
"ACE_M84",
"rhs_mag_an_m14_th3",
"rhs_mag_m7a3_cs",
"rhs_mag_an_m8hc",
"rhs_mag_m18_green",
"rhs_mag_m18_red",
"rhs_mag_m18_purple",
"rhs_mag_m18_yellow",
"rhs_mag_mk3a2",
"ACE_HandFlare_White",
"ACE_HandFlare_Red",
"ACE_HandFlare_Green",
"ACE_HandFlare_Yellow",
"Chemlight_green",
"Chemlight_red",
"Chemlight_yellow",
"Chemlight_blue",
"B_IR_Grenade",
 
 
//LASER BATTERIES
"Laserbatteries"
 
                ], false, true] call xla_fnc_addVirtualMagazineCargo;
               
                [_box, [
 
//BACKPACKS
"UK3CB_BAF_B_Bergen_MTP_Engineer_H_A",
"UK3CB_BAF_B_Bergen_MTP_Engineer_L_A",
"UK3CB_BAF_B_Bergen_MTP_JTAC_H_A",
"UK3CB_BAF_B_Bergen_MTP_JTAC_L_A",
"UK3CB_BAF_B_Bergen_MTP_Medic_H_A",
"UK3CB_BAF_B_Bergen_MTP_Medic_H_B",
"UK3CB_BAF_B_Bergen_MTP_Medic_L_A",
"UK3CB_BAF_B_Bergen_MTP_Medic_L_B",
"UK3CB_BAF_B_Bergen_MTP_PointMan_H_A",
"UK3CB_BAF_B_Bergen_MTP_PointMan_L_A",
"UK3CB_BAF_B_Bergen_MTP_Radio_H_A",
"UK3CB_BAF_B_Bergen_MTP_Radio_H_B",
"UK3CB_BAF_B_Bergen_MTP_Radio_L_A",
"UK3CB_BAF_B_Bergen_MTP_Radio_L_B",
"UK3CB_BAF_B_Bergen_MTP_Rifleman_H_A",
"UK3CB_BAF_B_Bergen_MTP_Rifleman_H_B",
"UK3CB_BAF_B_Bergen_MTP_Rifleman_H_C",
"UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A",
"UK3CB_BAF_B_Bergen_MTP_Rifleman_L_B",
"UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C",
"UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D",
"UK3CB_BAF_B_Bergen_MTP_Sapper_H_A",
"UK3CB_BAF_B_Bergen_MTP_Sapper_L_A",
"B_UAV_01_backpack_F",
"B_Static_Designator_01_weapon_F",
"B_Parachute",
"ACE_TacticalLadder_Pack",
"ACE_NonSteerableParachute"
 
                ], false, true] call xla_fnc_addVirtualBackpackCargo;
 
 
                [_box, [
//UNIFORM
"UK3CB_BAF_U_CombatUniform_MTP_TShirt",
"UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve",
"UK3CB_BAF_U_CombatUniform_MTP",
"UK3CB_BAF_U_CombatUniform_MTP_RM",
"UK3CB_BAF_U_CombatUniform_MTP_TShirt_RM",
"UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve_RM",
"UK3CB_BAF_U_CrewmanCoveralls_RTR",
"UK3CB_BAF_U_HeliPilotCoveralls_RAF",
"UK3CB_BAF_U_HeliPilotCoveralls_RN",
 
//VESTS
"UK3CB_BAF_V_Osprey",
"UK3CB_BAF_V_Osprey_Belt_A",
"UK3CB_BAF_V_Osprey_Grenadier_A",
"UK3CB_BAF_V_Osprey_Grenadier_B",
"UK3CB_BAF_V_Osprey_Holster",
"UK3CB_BAF_V_Osprey_Marksman_A",
"UK3CB_BAF_V_Osprey_Medic_A",
"UK3CB_BAF_V_Osprey_Medic_B",
"UK3CB_BAF_V_Osprey_Medic_C",
"UK3CB_BAF_V_Osprey_Medic_D",
"UK3CB_BAF_V_Osprey_MG_A",
"UK3CB_BAF_V_Osprey_MG_B",
"UK3CB_BAF_V_Osprey_Rifleman_A",
"UK3CB_BAF_V_Osprey_Rifleman_B",
"UK3CB_BAF_V_Osprey_Rifleman_C",
"UK3CB_BAF_V_Osprey_Rifleman_D",
"UK3CB_BAF_V_Osprey_Rifleman_E",
"UK3CB_BAF_V_Osprey_Rifleman_F",
"UK3CB_BAF_V_Osprey_SL_A",
"UK3CB_BAF_V_Osprey_SL_B",
"UK3CB_BAF_V_Osprey_SL_C",
"UK3CB_BAF_V_Osprey_SL_D",
"UK3CB_BAF_V_Pilot_A",
"V_Chestrig_khk",
"V_Chestrig_rgr",
"V_Rangemaster_belt",
"V_TacVestIR_blk",
 
//HEADGEAR
"UK3CB_BAF_B_Bergen_MTP_SL_H_A",
"UK3CB_BAF_B_Bergen_MTP_SL_L_A",
"UK3CB_BAF_H_CrewHelmet_A",
"UK3CB_BAF_H_CrewHelmet_ESS_A",
"UK3CB_BAF_H_Headset_PRR",
"UK3CB_BAF_H_PilotHelmetHeli_A",
"UK3CB_BAF_H_Mk7_Camo_A",
"UK3CB_BAF_H_Mk7_Camo_B",
"UK3CB_BAF_H_Mk7_Camo_C",
"UK3CB_BAF_H_Mk7_Camo_D",
"UK3CB_BAF_H_Mk7_Camo_E",
"UK3CB_BAF_H_Mk7_Camo_F",
"UK3CB_BAF_H_Mk7_Camo_ESS_A",
"UK3CB_BAF_H_Mk7_Camo_ESS_B",
"UK3CB_BAF_H_Mk7_Camo_ESS_C",
"UK3CB_BAF_H_Mk7_Camo_ESS_D",
"UK3CB_BAF_H_Mk7_Camo_CESS_A",
"UK3CB_BAF_H_Mk7_Camo_CESS_B",
"UK3CB_BAF_H_Mk7_Camo_CESS_C",
"UK3CB_BAF_H_Mk7_Camo_CESS_D",
"UK3CB_BAF_H_Mk7_Net_A",
"UK3CB_BAF_H_Mk7_Net_B",
"UK3CB_BAF_H_Mk7_Net_C",
"UK3CB_BAF_H_Mk7_Net_D",
"UK3CB_BAF_H_Mk7_Net_ESS_A",
"UK3CB_BAF_H_Mk7_Net_ESS_B",
"UK3CB_BAF_H_Mk7_Net_ESS_C",
"UK3CB_BAF_H_Mk7_Net_ESS_D",
"UK3CB_BAF_H_Mk7_Net_CESS_A",
"UK3CB_BAF_H_Mk7_Net_CESS_B",
"UK3CB_BAF_H_Mk7_Net_CESS_C",
"UK3CB_BAF_H_Mk7_Net_CESS_D",
"UK3CB_BAF_H_Mk7_Scrim_A",
"UK3CB_BAF_H_Mk7_Scrim_B",
"UK3CB_BAF_H_Mk7_Scrim_C",
"UK3CB_BAF_H_Mk7_Scrim_D",
"UK3CB_BAF_H_Mk7_Scrim_E",
"UK3CB_BAF_H_Mk7_Scrim_F",
"UK3CB_BAF_H_Mk7_Scrim_ESS_A",
"UK3CB_BAF_H_Mk7_Scrim_ESS_B",
"UK3CB_BAF_H_Mk7_Scrim_ESS_C",
"rhsusf_Bowman",
"rhsusf_bowman_cap",
"H_CrewHelmetHeli_B",
"H_PilotHelmetHeli_B",
"tf47_beret",

//GOOGLES
"rhs_googles_orange",
"rhs_googles_yellow",
"rhs_googles_clear",
"rhs_googles_black",
"G_Bandanna_beast",
"G_B_Diving",
 
//NVGs 
"gpn18",
"rhsusf_ANPVS_14",
"rhsusf_ANPVS_15",
"UK3CB_BAF_HMNVS",

//BINOCULARS
"Rangefinder",
"Binocular",
"Laserdesignator",
"lerca_1200_black",
"lerca_1200_tan",
"Leupold_Mk4",
"ACE_Vector",
"ACE_Yardage450",
"UK3CB_BAF_Soflam_Laserdesignator",
"UK3CB_BAF_Javelin_CLU",
 
                        //MAP
                        "ItemMap",
 
 
                        //GPSs
                        "ItemGPS",
                        "B_UavTerminal",

 
                        //COPASS
                        "ItemCompass",
 
 
                        //RADIOS
                        "tf_anprc152",					
                        "tf_rf7800str",
 
 
                        //WATCHES
                        "ItemWatch",
                        "tf_microdagr",
                        "ACE_Altimeter",
 
                        //ACE Stuff
                        "ACE_Flashlight_KSF1",
                        "ACE_Flashlight_MX991",
                        "ACE_Flashlight_XL50",         
                        "ACE_RangeCard",
                        "ACE_Kestrel4500",
                        "ACE_EarPlugs",
                        "ACE_DefusalKit",
                        "ACE_Clacker",
                        "ACE_DAGR",
                        "ACE_CableTie",
                        "ACE_IR_Strobe_Item",
                        "ACE_ATragMX",
                        "ACE_Tripod",
                        "ACE_SpottingScope",
                        "ACE_Sandbag_empty",
                        "ACE_SpareBarrel",
                        "ACE_RangeTable_82mm",
                        "ACE_microDAGR",
                        "ACE_bodyBag",
                        "ACE_surgicalKit",
                        "ACE_personalAidKit",
                        "ACE_quikclot",
                        "ACE_salineIV_250",
                        "ACE_salineIV_500",
                        "ACE_salineIV",
                        "ACE_bloodIV_250",
                        "ACE_bloodIV_500",
                        "ACE_bloodIV",
                        "ACE_plasmaIV_250",
                        "ACE_plasmaIV_500",
                        "ACE_plasmaIV",
                        "ACE_epinephrine",
                        "ACE_atropine",
                        "ACE_morphine",
                        "ACE_tourniquet",
                        "ACE_elasticBandage",
                        "ACE_packingBandage",
                        "ACE_fieldDressing",
                        "ACE_MapTools",
                        "ACE_wirecutter",
                        "ACE_UAVBattery",
                        "ACE_HuntIR_monitor",
                        "ACE_Banana",
                        "ToolKit",
                        "MineDetector",
 
//ATACHMENTS Pistol
"UK3CB_BAF_Flashlight_L131A1",
"muzzle_snds_L",

//ATACHMENTS Rifle
"rhsusf_acc_LEUPOLDMK4",
"rhsusf_acc_LEUPOLDMK4_2",
"rhsusf_acc_harris_bipod",
"rhsusf_acc_eotech_552",		 
"UK3CB_BAF_Silencer_L115A3",
"UK3CB_BAF_Silencer_L115A3",
"UK3CB_BAF_Silencer_L85",
"UK3CB_BAF_SFFH",
"UK3CB_BAF_Silencer_L91A1",
"UK3CB_BAF_SpecterLDS",
"UK3CB_BAF_SpecterLDS_3D",
"UK3CB_BAF_SpecterLDS_Dot",
"UK3CB_BAF_SpecterLDS_Dot_3D",
"UK3CB_BAF_Eotech",
"UK3CB_BAF_SB31250",
"UK3CB_BAF_SB31250_Desert",
"UK3CB_BAF_SB31250_Desert_Ghillie",
"UK3CB_BAF_SB31250_Ghillie",
"UK3CB_BAF_SUSAT",
"UK3CB_BAF_SUSAT_3D",
"UK3CB_BAF_TA31F",
"UK3CB_BAF_TA31F_3D",
"UK3CB_BAF_TA31F_Hornbill",
"UK3CB_BAF_TA31F_Hornbill_3D",
"UK3CB_BAF_TA648",
"UK3CB_BAF_TA648_308",
"UK3CB_BAF_LLM_IR_Tan",
"UK3CB_BAF_LLM_IR_Black",
"UK3CB_BAF_LLM_Flashlight_Tan",
"UK3CB_BAF_LLM_Flashlight_Black",
"BWA3_optic_EOTech_Mag_Off",
"BWA3_optic_EOTech", 
 
 
//ATTACHMENTS
"tf47_optic_m3maaws"
 
                ], false, true] call xla_fnc_addVirtualItemCargo;
               
                //[_box, [WEST_SIDE,FRIENDLY_SIDE],true,false] call XLA_fnc_addVirtualSideCargo;
                //[_box, ["arifle_Katiba_BASE_F"],true,false] call XLA_fnc_addVirtualWeaponCargo;
 
                // Start the arsenal on it
                _addActionText = "<t color=""#11F22F"">" + "Arsenal";
                ["AmmoboxInit",[_box,false,{true},_addActionText,false]] spawn XLA_fnc_arsenal;
 
} forEach [arsenal1,arsenal2]; //, arsenal2, arsenal3, arsenal4, arsenal5, arsenal6];
//};