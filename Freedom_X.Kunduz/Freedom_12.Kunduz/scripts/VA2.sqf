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
                        "BWA3_P8",
                        "BWA3_MP7",
 
                        //LAUNCHER
                        "BWA3_Pzf3",
                        "BWA3_RGW90",
                        "tf47_m3maaws",
                       
                        //PRIMARY
                        "BWA3_G27",
                        "BWA3_G27_Tan",
                        "BWA3_G27_AG",
                        "BWA3_G27_AG_Tan",
                        "BWA3_G28_Standard",
                        "BWA3_G28_Assault",
                        "BWA3_G36",
                        "BWA3_G36_LMG",
                        "BWA3_G36_AG",
                        "BWA3_G36K",
                        "BWA3_G36K_AG",
						"BWA3_MG4",
						"BWA3_MG5",
						"BWA3_MG5_Tan",
                        "BWA3_G82"
 
 
                ],false, true] call xla_fnc_addVirtualWeaponCargo;
               
                [_box, [
               
                        //LAUNCHER AMMO
                        "tf47_m3maaws_HEAT",
                        "tf47_m3maaws_HEDP",
                        "tf47_m3maaws_HE",
                        "tf47_m3maaws_SMOKE",
                        "tf47_m3maaws_ILLUM",
                        "BWA3_Pzf3_IT",
                        "BWA3_RGW90_HH",
                               
                        //PISTOL AMMO
                        "BWA3_15Rnd_9x19_P8",
                        "BWA3_40Rnd_46x30_MP7_SD",
                        "BWA3_40Rnd_46x30_MP7",
 
                        //RIFLE AMMO
						
                        "BWA3_20Rnd_762x51_G28",
                        "BWA3_20Rnd_762x51_G28_Tracer",
                        "BWA3_20Rnd_762x51_G28_Tracer_Dim",
                        "BWA3_20Rnd_762x51_G28_SD",
                        "BWA3_20Rnd_762x51_G28_AP",
                        "BWA3_10Rnd_762x51_G28",
                        "BWA3_10Rnd_762x51_G28_Tracer",
                        "BWA3_10Rnd_762x51_G28_Tracer_Dim",
                        "BWA3_10Rnd_762x51_G28_SD",
                        "BWA3_10Rnd_762x51_G28_AP",
                        "BWA3_10Rnd_762x51_G28_LR",
                        "BWA3_30Rnd_556x45_G36",
                        "BWA3_30Rnd_556x45_G36_Tracer",
                        "BWA3_30Rnd_556x45_G36_Tracer_Dim",
                        "BWA3_30Rnd_556x45_G36_SD",
                        "BWA3_30Rnd_556x45_G36_AP",
                        "BWA3_100Rnd_556x45_G36",
                        "BWA3_100Rnd_556x45_G36_Tracer",
						"BWA3_120Rnd_762x51",
						"BWA3_200Rnd_556x45",
                        "BWA3_10Rnd_127x99_G82_Tracer_Dim",
                        "BWA3_10Rnd_127x99_G82_AP",
                        "BWA3_10Rnd_127x99_G82_AP_Tracer",
                        "BWA3_10Rnd_127x99_G82_Raufoss",
                        "BWA3_10Rnd_127x99_G82_Raufoss_Tracer",
                        "BWA3_10Rnd_127x99_G82_Raufoss_Tracer_Dim",
                        "BWA3_10Rnd_127x99_G82_SD",
                        "BWA3_10Rnd_127x99_G82",
					
					
					
                        //ULG Ammo
                        "ACE_HuntIR_M203",
                        "1Rnd_HE_Grenade_shell",
                        "1Rnd_Smoke_Grenade_shell",
                        "1Rnd_SmokeRed_Grenade_shell",
                        "1Rnd_SmokeGreen_Grenade_shell",
                        "1Rnd_SmokeYellow_Grenade_shell",
                        "1Rnd_SmokePurple_Grenade_shell",
                        "1Rnd_SmokeBlue_Grenade_shell",
                        "1Rnd_SmokeOrange_Grenade_shell",
                        "UGL_FlareWhite_F",
                        "UGL_FlareGreen_F",
                        "UGL_FlareRed_F",
 
 
                        //Explosives
                        "SatchelCharge_Remote_Mag",
                        "ClaymoreDirectionalMine_Remote_Mag",
                        "DemoCharge_Remote_Mag",
 
                        //GRENADES
                        "BWA3_DM51A1",
                        "BWA3_DM25",
                        "BWA3_DM32_Orange",
                        "BWA3_DM32_Yellow",
                        "ACE_M84",
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
                        "BWA3_AssaultPack_Tropen",
                        "BWA3_FieldPack_Tropen",
                        "BWA3_PatrolPack_Tropen",
                        "tf_rt1523g_big_bwmod_tropen",
                        "BWA3_Kitbag_Tropen",
                        "BWA3_Kitbag_Tropen_Medic",
                        "B_AssaultPack_cbr",
                        "B_AssaultPack_rgr",
                        "B_AssaultPack_blk",
                        "B_UAV_01_backpack_F",
                        "B_Static_Designator_01_weapon_F",
                        "B_Kitbag_cbr",
                        "B_Kitbag_rgr",
                        "B_Parachute",
						"B_Mortar_01_support_F",
						"B_Mortar_01_weapon_F",
                        "ACE_TacticalLadder_Pack",
                        "ACE_NonSteerableParachute"
 
                ], false, true] call xla_fnc_addVirtualBackpackCargo;
 
 
                [_box, [
                        //UNIFORM
                        "U_B_FullGhillie_lsh",
                        "U_B_FullGhillie_sard",
                        "U_B_FullGhillie_ard",
                        "BWA3_Uniform_Tropen",
                        "BWA3_Uniform2_Tropen",
                        "BWA3_Uniform_idz_Tropen",
                        "BWA3_Uniform2_idz_Tropen",
                        "BWA3_Uniform3_idz_Tropen",
                        "BWA3_Uniform_Crew_Tropen",
 
 
 
                        //VESTS
                        "V_Chestrig_khk",
                        "V_Chestrig_rgr",
                        "V_Rangemaster_belt",
                        "V_TacVestIR_blk",
                        "BWA3_Vest_Tropen",
                        "BWA3_Vest_Grenadier_Tropen",
                        "BWA3_Vest_Leader_Tropen",
                        "BWA3_Vest_Marksman_Tropen",
                        "BWA3_Vest_Autorifleman_Tropen",
                        "BWA3_Vest_Medic_Tropen",
                        "BWA3_Vest_Rifleman1_Tropen",
						"lbt_comms_coy",
						"lbt_medical_coy",
						"lbt_operator_coy",
						"lbt_pouchless_coy",
						"lbt_tl_coy",
						"lbt_weapons_coy",
						
 
                        //HEADGEAR
                        "H_CrewHelmetHeli_B",
                        "H_PilotHelmetHeli_B",
                        "tf47_beret",
                        "BWA3_Beret_PzGren",
                        "BWA3_Beret_Pz",
                        "BWA3_Booniehat_Tropen",
                        "BWA3_CrewmanKSK_Tropen_Headset",
                        "BWA3_CrewmanKSK_Tropen",
                        "BWA3_M92_Tropen",     
                        "BWA3_MICH_Tropen",
                        "BWA3_OpsCore_Tropen_Camera",
                        "BWA3_OpsCore_Tropen_Patch",
                        "BWA3_OpsCore_Tropen",
                        "H_caf_ag_paktol_01",
                        "H_caf_ag_paktol_02",
                        "H_caf_ag_paktol_03",
                        "H_caf_ag_paktol_04",
 
                                //GOOGLES
                        "BWA3_G_Combat_Clear",
                        "BWA3_G_Combat_Orange",
                        "BWA3_G_Combat_Black",
 
                        //NVGs 
						"gpn18",
						"rhsusf_ANPVS_15",
 
                        //BINOCULARS
                        "Rangefinder",
                        "Binocular",
                        "Laserdesignator",
                        "ACE_Vector",
                        "ACE_Yardage450",
                        "BWA3_Vector",
						"UK3CB_BAF_Soflam_Laserdesignator",
 
                        //MAP
                        "ItemMap",
 
                        //GPSs
                        "ItemGPS",
                        "B_UavTerminal",
                        "BWA3_ItemNaviPad",
 
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
                        "BWA3_optic_Aimpoint",
                        "BWA3_optic_EOTech",
                        "BWA3_optic_EOTech_tan",
                        "BWA3_optic_RSAS",
                        "BWA3_acc_LLM01_irlaser",
                        "BWA3_muzzle_snds_MP7",
 
 
                        //ATACHMENTS Rifle
                        "BWA3_optic_Aimpoint",
                        "BWA3_optic_EOTech",
                        "BWA3_optic_EOTech_tan",
                        "BWA3_optic_EOTech_tan_Mag_Off",
                        "BWA3_optic_EOTech_Mag_Off",
                        "BWA3_optic_RSAS",
                        "BWA3_optic_20x50",
                        "BWA3_optic_Shortdot",
                        "BWA3_optic_24x72",
                        "BWA3_optic_ZO4x30",
                        "BWA3_acc_VarioRay_irlaser",
                        "BWA3_acc_LLM01_irlaser",
                        "acc_flashlight",
                        "BWA3_muzzle_snds_G28",
                        "BWA3_muzzle_snds_G36",
						"BWA3_optic_NSV600",
						"BWA3_optic_IRV600",
						"BWA3_optic_NSV80",
						"UK3CB_BAF_SpecterLDS",
						"UK3CB_BAF_SpecterLDS_3D",
						"UK3CB_BAF_SpecterLDS_Dot",
						"UK3CB_BAF_SpecterLDS_Dot_3D",
						"rhsusf_acc_eotech_552",
 
                        //ATTACHMENTS
                        "tf47_optic_m3maaws",
                        "BWA3_optic_NSA80"
 
                ], false, true] call xla_fnc_addVirtualItemCargo;
               
                //[_box, [WEST_SIDE,FRIENDLY_SIDE],true,false] call XLA_fnc_addVirtualSideCargo;
                //[_box, ["arifle_Katiba_BASE_F"],true,false] call XLA_fnc_addVirtualWeaponCargo;
 
                // Start the arsenal on it
                _addActionText = "<t color=""#11F22F"">" + "Arsenal";
                ["AmmoboxInit",[_box,false,{true},_addActionText,false]] spawn XLA_fnc_arsenal;
 
} forEach [arsenal1,arsenal2]; //, arsenal2, arsenal3, arsenal4, arsenal5, arsenal6];
//};