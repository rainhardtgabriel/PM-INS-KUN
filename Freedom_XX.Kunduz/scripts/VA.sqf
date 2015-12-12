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
"rhsusf_weap_m1911a1",
"rhs_weap_M320",
"rhsusf_weap_glock17g4",

//LAUNCHER
"tf47_m3maaws",
"tf47_at4_heat",
"tf47_at4_HEDP",
"tf47_at4_HP",

//PRIMARY
"rhs_weap_sr25_ec",
"rhs_weap_m14ebrri",
"rhs_weap_m16a4",
  "rhs_weap_m16a4_grip",
  "rhs_weap_m16a4_carryhandle",
  "rhs_weap_m16a4_carryhandle_grip",
  "rhs_weap_m16a4_carryhandle_grip_pmag",
  "rhs_weap_m16a4_carryhandle_M203",
  "rhs_weap_m16a4_carryhandle_pmag",
"rhs_weap_XM2010",
  "rhs_weap_XM2010_wd",
  "rhs_weap_XM2010_wd",
  "rhs_weap_XM2010_d",
"rhs_weap_m240B",
  "rhs_weap_m240B_CAP",
  "rhs_weap_m240G",
"rhs_weap_m249_pip_L",
  "rhs_weap_m249_pip_L_para",
  "rhs_weap_m249_pip_L_vfg",
  "rhs_weap_m249_pip_S",
  "rhs_weap_m249_pip_S_para",
  "rhs_weap_m249_pip_S_vfg",
"rhs_weap_m4",
  "rhs_weap_m4_grip2",
  "rhs_weap_m4_grip",
  "rhs_weap_m4_carryhandle",
  "rhs_weap_m4_carryhandle_pmag",
  "rhs_weap_m4_m203",
  "rhs_weap_m4_m320",
  "rhs_weap_m4a1_carryhandle",
  "rhs_weap_m4a1_carryhandle_grip2",
  "rhs_weap_m4a1_carryhandle_grip",
  "rhs_weap_m4a1_carryhandle_pmag",
  "rhs_weap_m4a1_carryhandle_m203",
  "rhs_weap_m4a1",
  "rhs_weap_m4a1_grip2",
  "rhs_weap_m4a1_grip",
  "rhs_weap_m4a1_m203",
  "rhs_weap_m4a1_m320",
"RHARD_M4DDRP_F",
"RHARD_M4DDR_F",
"RHARD_M4DDRP_F",
"RHARD_M4DDRPD_F",
"RHARD_M4DDRD_F",
"RHARD_M4DDR_B_F",
"RHARD_M4DDRD_B_F",
"RHARD_M4DDRGL_F",
"RHARD_M4DDRGLD_F",
"RHARD_M4DDRGL_B_F",
"RHARD_M4DDRGLD_B_F",
"RHARD_MK18_F",
"RHARD_MK18E_F",
"RHARD_MK18AFG_F",
"RHARD_MK18AFG_B_F",
"RHARD_MK18AFGD_F",
"RHARD_MK18AFGD_B_F",
"RHARD_MK18D_F",
"RHARD_MK18ED_F",
"RHARD_MK18P_F",
"RHARD_MK18PD_F"
 
 
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
                               
//PISTOL AMMO
"rhsusf_mag_7x45acp_MHP",
"rhsusf_mag_17Rnd_9x19_JHP",
"rhsusf_mag_17Rnd_9x19_FMJ",
 
//RIFLE AMMO
"rhsusf_20Rnd_762x51_m118_special_Mag",
"rhsusf_20Rnd_762x51_m993_Mag",
"rhs_mag_30Rnd_556x45_Mk318_Stanag",
"rhs_mag_30Rnd_556x45_Mk262_Stanag",
"rhs_mag_30Rnd_556x45_M855A1_Stanag",
"rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",
"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow",
"rhs_mag_30Rnd_556x45_M200_Stanag",
"rhsusf_5Rnd_300winmag_xm2010",
"rhsusf_50Rnd_762x51",
"rhsusf_50Rnd_762x51_m993",
"rhsusf_50Rnd_762x51_m80a1epr",
"rhsusf_100Rnd_762x51",
"rhsusf_100Rnd_762x51_m993",
"rhsusf_100Rnd_762x51_m80a1epr",
"rhsusf_200Rnd_556x45_soft_pouch",
"rhsusf_100Rnd_556x45_M200_soft_pouch",
"rhsusf_100Rnd_556x45_soft_pouch",
"rhs_200rnd_556x45_T_SAW",
"rhs_200rnd_556x45_B_SAW",
"rhs_200rnd_556x45_M_SAW",
"rhsusf_8Rnd_00Buck",
"rhsusf_8Rnd_doomsday_Buck",
"rhsusf_8Rnd_Slug",
"rhsusf_8Rnd_HE",
"rhsusf_8Rnd_FRAG",
"rhs_weap_M590_8RD",
"rhs_weap_M590_5RD",
"30Rnd_45ACP_Mag_SMG_01",
"30Rnd_45ACP_Mag_SMG_01_Tracer_Green",
"30Rnd_45ACP_Mag_SMG_01_Tracer_Red",
"30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow",
"20Rnd_556x45_UW_mag",
"30Rnd_556x45_Stanag",
"30Rnd_9x21_Mag", 

//ULG Ammo
"ACE_HuntIR_M203",
"rhs_mag_M441_HE",
"rhs_mag_M433_HEDP",
"rhs_mag_m4009",
"rhs_mag_m576",
"UGL_FlareCIR_F",
"UGL_FlareWhite_F",
"UGL_FlareGreen_F",
"UGL_FlareRed_F",
"UGL_FlareYellow_F",
 "1Rnd_HE_Grenade_shell",
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
"rhs_mag_m69",
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
"B_AssaultPack_cbr",
"B_AssaultPack_rgr",
"B_AssaultPack_mcamo",
"B_AssaultPack_blk",
"B_UAV_01_backpack_F",
"rhsusf_assault_eagleaiii_ocp",
"rhsusf_assault_eagleaiii_ucp",
"B_Static_Designator_01_weapon_F",
"RHS_M2_Gun_Bag",
"RHS_M2_Tripod_Bag",
"RHS_M2_MiniTripod_Bag",
"RHS_Mk19_Gun_Bag",
"RHS_Mk19_Tripod_Bag",
"tf_rt1523g_big_rhs",
"B_Kitbag_cbr",
"B_Kitbag_cbr",
"B_Kitbag_rgr",
"B_Kitbag_mcamo",
"B_Parachute",
"ACE_TacticalLadder_Pack",
"ACE_NonSteerableParachute"
 
                ], false, true] call xla_fnc_addVirtualBackpackCargo;
 
 
                [_box, [
//UNIFORM
"rhs_uniform_cu_ocp",
"rhs_uniform_cu_ocp_101st",
"rhs_uniform_cu_ocp_10th",
"rhs_uniform_cu_ocp_1stcav",
"rhs_uniform_cu_ocp_82nd",
"rhs_uniform_cu_ucp",
"rhs_uniform_cu_ucp_101st",
"rhs_uniform_cu_ucp_10th",
"rhs_uniform_cu_ucp_1stcav",
"rhs_uniform_cu_ucp_82nd",
"U_B_GhillieSuit",
"U_B_FullGhillie_lsh",
"U_B_FullGhillie_sard",
"U_B_FullGhillie_ard",
"U_B_PilotCoveralls",
"U_B_HeliPilotCoveralls",
 
//VESTS
"rhsusf_iotv_ocp_Grenadier",
"rhsusf_iotv_ocp_Medic",
"rhsusf_iotv_ocp",
"rhsusf_iotv_ocp_Repair",
"rhsusf_iotv_ocp_Rifleman",
"rhsusf_iotv_ocp_SAW",
"rhsusf_iotv_ocp_Squadleader",
"rhsusf_iotv_ocp_Teamleader",
"rhsusf_iotv_ucp_Grenadier",
"rhsusf_iotv_ucp_Medic",
"rhsusf_iotv_ucp_Repair",
"rhsusf_iotv_ucp_Repair",
"rhsusf_iotv_ucp_SAW",
"rhsusf_iotv_ucp_SAW",
"rhsusf_iotv_ucp_Teamleader",
"rhsusf_iotv_ucp",
"V_Chestrig_khk",
"V_Chestrig_rgr",
"V_Rangemaster_belt",
"V_TacVestIR_blk",
						
"lbt_comms_coy",
"lbt_medical_coy",
"lbt_operator_coy",
"lbt_pouchless_coy",
"lbt_tl_coy",
"lbt_weapons_coy",

"lbt_comms_od",
"lbt_medical_od",
"lbt_operator_od",
"lbt_pouchless_od",
"lbt_tl_od",
"lbt_weapons_od",

"JPC_RG",
"JPC_MC_5",
"JPC_MC_4",
"JPC_MC_3",
"JPC_MC_2",
"JPC_MC_1",
"JPC_MC",
"JPC_CB",
 
//HEADGEAR
"rhsusf_ach_helmet_ocp",
"rhsusf_ach_helmet_ESS_ocp",
"rhsusf_ach_helmet_headset_ocp",
"rhsusf_ach_helmet_headset_ess_ocp",
"rhsusf_ach_helmet_camo_ocp",
"rhsusf_ach_helmet_ucp",
"rhsusf_ach_helmet_ESS_ucp",
"rhsusf_ach_helmet_headset_ucp",
"rhsusf_ach_helmet_headset_ess_ucp",
"rhsusf_cvc_green_helmet",
"rhsusf_cvc_green_ess",
"rhsusf_cvc_helmet",
"rhsusf_cvc_ess",
"rhs_Booniehat_ocp",
"rhs_Booniehat_ucp",
"rhsusf_Bowman",
"rhsusf_bowman_cap",
"H_CrewHelmetHeli_B",
"H_PilotHelmetHeli_B",
"rhsusf_mich_bare_norotos",
"rhsusf_mich_bare_norotos_arc",
"rhsusf_mich_bare_norotos_tan",
"rhsusf_mich_bare_norotos_arc_tan",
"rhsusf_opscore_02",
"rhsusf_opscore_01",
"rhsusf_opscore_02_tan",
"rhsusf_opscore_01_tan",
"rhsusf_opscore_04_ocp",
"rhsusf_opscore_03_ocp",
"rhsusf_patrolcap_ocp",
"rhsusf_patrolcap_ucp",
"H_PilotHelmetFighter_B",
"tf47_beret",

"crye_airframe_tan_AF_Empty",
"crye_airframe_blk_AF_Empty",
"crye_airframe_rg_AF_Empty",
"crye_airframe_tan_AF_Pelt",
"crye_airframe_blk_AF_Pelt",
"crye_airframe_rg_AF_Pelt",
"crye_airframe_tan_AF_Empty_NoRails",
"crye_airframe_blk_AF_Empty_NoRails",
"crye_airframe_rg_AF_Empty_NoRails",
"crye_airframe_tan_AF_VAS",
"crye_airframe_blk_AF_VAS",
"crye_airframe_rg_AF_VAS",
"crye_airframe_tan_AF_VAS_cbcover",
"crye_airframe_tan_AF_VAS_cover",
"crye_airframe_tan_AF_VAS_NoRails",
"crye_airframe_blk_AF_VAS_cover",
"crye_airframe_blk_AF_VAS_NoRails",
"crye_airframe_rg_AF_VAS_cover",
"crye_airframe_rg_AF_VAS_NoRails",
"crye_airframe_tan_AF_VAS_rgcover",
"crye_airframe_tan_AF_VAS_Pelt",
"crye_airframe_blk_AF_VAS_Pelt",
"crye_airframe_rg_AF_VAS_Pelt",
"crye_airframe_tan_AF_VAS_Pelt_CBcover",
"crye_airframe_tan_AF_VAS_Pelt_cover",
"crye_airframe_blk_AF_VAS_Pelt_cover",
"crye_airframe_rg_AF_VAS_Pelt_cover",
"crye_airframe_tan_AF_VAS_Pelt_RGcover",

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

//ATACHMENTS Rifle
"rhsusf_acc_SR25S",
"rhsusf_acc_anpeq15side",
"rhsusf_acc_anpeq15",
"rhsusf_acc_anpeq15_light",
"rhsusf_acc_LEUPOLDMK4",
"rhsusf_acc_LEUPOLDMK4_2",
"rhsusf_acc_harris_bipod",
"rhsusf_acc_ACOG2_USMC",
"rhsusf_acc_ACOG3_USMC",
"rhsusf_acc_ACOG_USMC",
"rhsusf_acc_ELCAN",
"rhsusf_acc_ELCAN_pip",
"rhsusf_acc_ACOG",
"rhsusf_acc_ACOG_pip",
"rhsusf_acc_ACOG2",
"rhsusf_acc_ACOG3",
"rhsusf_acc_eotech_552",
"rhsusf_acc_compm4",
"rhsusf_acc_nt4_black",
"rhsusf_acc_nt4_tan",
"rhsusf_acc_SF3P556",
"rhsusf_acc_SFMB556",
"rhsusf_acc_M2010S",
"UK3CB_BAF_SpecterLDS",
"UK3CB_BAF_SpecterLDS_3D",
"UK3CB_BAF_SpecterLDS_Dot",
"UK3CB_BAF_SpecterLDS_Dot_3D",
"UK3CB_BAF_Eotech",
"UK3CB_BAF_TA31F",
"UK3CB_BAF_TA31F_3D",
"UK3CB_BAF_LLM_IR_Tan",
"UK3CB_BAF_LLM_IR_Black",
"UK3CB_BAF_LLM_Flashlight_Tan",
"UK3CB_BAF_LLM_Flashlight_Black",
"rhsusf_acc_M2010S",
"BWA3_optic_EOTech_Mag_Off",
"BWA3_optic_EOTech",
"muzzle_MK18_L",
"muzzle_MK18D_L",
"PEQ15_A3_Top",

 
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