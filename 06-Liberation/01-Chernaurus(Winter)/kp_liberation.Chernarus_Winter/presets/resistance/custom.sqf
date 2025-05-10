/*
    Needed Mods:
    - None

    Optional Mods:
    - None
*/

/* Classnames of the guerilla faction which is friendly or hostile, depending on the civil reputation
Standard loadout of the units will be replaced with a scripted one, which depends on the guerilla strength, after spawn */
KP_liberation_guerilla_units = [
    "I_G_Soldier_AR_F",
    "I_G_engineer_F",
    "I_G_officer_F",
    "I_G_medic_F",
    "I_G_Soldier_F",
    "I_G_Soldier_LAT_F",
    "I_G_Soldier_M_F",
    "I_G_Soldier_SL_F"
];

// Armed vehicles
KP_liberation_guerilla_vehicles = [
    "mti_factions_rebels_Jeep",
    "mti_factions_rebels_AAC_Speeder",
    "mti_factions_rebels_RebelAAT"
];

/* Guerilla Equipment
There are 3 tiers for every category. If the strength of the guerillas will increase, they'll have higher tier equipment. */

/* Weapons - You've to add the weapons as array like
["Weaponclassname","Magazineclassname","magazine amount","optic","tripod"]
You can leave optic and tripod empty with "" */
KP_liberation_guerilla_weapons_1 = [
    ["SFA_B3K2_rifle","SFA_B3k2_mag",4,"",""],
    ["MTI_ACPA","mti_Mag_ACPA",4,"",""],
    ["MTI_ACPR","mti_Mag_ACPR",4,"",""]
];

KP_liberation_guerilla_weapons_2 = [
    ["MTI_Factions_SpaceAK1","75Rnd_762x39_Mag_F",4,"",""],
    ["JLTS_E5","JLTS_E5_mag",4,"SEA_Optic_Holo_Two_Blue",""],
    ["MTI_DC15A_Wood","mti_Mag_DC15A",4,"",""],
    ["MTI_DH17","MTI_Red_Mag_Carbine",4,"",""],
    ["MTI_A280","MTI_Red_Mag_Base",3,"",""]
];

KP_liberation_guerilla_weapons_3 = [
    ["MTI_A280","MTI_Red_Mag_Base",3,"",""],
    ["MTI_Factions_SpacePDW1","MTI_Factions_spacePDW1_mag",4,"",""],
    ["MTI_Factions_SpaceLMG1","MTI_Factions_spaceLMG1_mag",5,"",""],
    ["MTI_DC15A_HP","mti_Mag_DC15A_HP",4,"",""],
    ["SFA_B3K2_rifle","SFA_B3k2_mag",4,"",""],
    ["MTI_ACPA","mti_Mag_ACPA",4,"",""],
    ["MTI_ACPR","mti_Mag_ACPR",4,"",""]
];

// Uniforms
KP_liberation_guerilla_uniforms_1 = [
    "U_C_Poloshirt_blue",
    "U_C_Poloshirt_burgundy",
    "U_C_Poloshirt_salmon",
    "U_C_Poloshirt_redwhite",
    "U_C_Poloshirt_stripped",
    "U_C_Poloshirt_tricolour",
    "U_C_Poor_1",
    "U_C_Man_casual_1_F",
    "U_C_Man_casual_2_F",
    "U_C_Man_casual_3_F",
    "U_C_Man_casual_4_F",
    "U_C_Man_casual_5_F",
    "U_C_Man_casual_6_F",
    "U_Marshal"
];

KP_liberation_guerilla_uniforms_2 = [
    "U_I_C_Soldier_Bandit_1_F",
    "U_I_C_Soldier_Bandit_2_F",
    "U_I_C_Soldier_Bandit_3_F",
    "U_I_C_Soldier_Bandit_4_F",
    "U_I_C_Soldier_Bandit_5_F",
    "U_BG_Guerilla2_1",
    "U_BG_Guerilla2_2",
    "U_BG_Guerilla2_3",
    "U_BG_Guerilla3_1",
    "U_C_HunterBody_grn",
    "U_C_Mechanic_01_F",
    "U_I_C_Soldier_Para_5_F",
    "U_I_G_resistanceLeader_F"
];

KP_liberation_guerilla_uniforms_3 = [
    "WM_ParaMilitary_WD_Short",
    "WM_ParaMilitary_WD_Shirt",
    "WM_ParaMilitary_WD_Shirt_Rolled",
    "WM_ParaMilitary_WD_TeeJacket",
    "WM_ParaMilitary_WD_Tee",
    "WM_ParaMilitary_WD",
    "WM_ParaMilitary_Short",
    "WM_ParaMilitary_Shirt",
    "WM_ParaMilitary_Urban_Shirt"
];

// Vests
KP_liberation_guerilla_vests_1 = [
    "V_LegStrapBag_coyote_F",
    "V_LegStrapBag_olive_F",
    "V_LegStrapBag_black_F",
    "V_Pocketed_coyote_F",
    "V_Pocketed_olive_F",
    "V_Pocketed_black_F",
    "V_BandollierB_cbr",
    "V_BandollierB_rgr",
    "V_BandollierB_khk",
    "V_BandollierB_oli",
    "V_BandollierB_blk",
    "V_BandollierB_ghex_F"
];

KP_liberation_guerilla_vests_2 = [
    "V_Chestrig_rgr",
    "V_Chestrig_khk",
    "V_Chestrig_oli",
    "V_Chestrig_blk",
    "V_HarnessO_brn",
    "V_HarnessO_gry",
    "V_HarnessO_ghex_F",
    "V_HarnessOGL_brn",
    "V_HarnessOGL_gry",
    "V_HarnessOGL_ghex_F"
];

KP_liberation_guerilla_vests_3 = [
    "V_TacVest_brn",
    "V_TacVest_khk",
    "V_TacVest_oli",
    "V_TacVest_blk",
    "V_I_G_resistanceLeader_F",
    "V_TacVest_camo",
    "V_TacChestrig_grn_F",
    "V_TacChestrig_cbr_F",
    "V_TacChestrig_oli_F"
];

// Headgear
KP_liberation_guerilla_headgear_1 = [
    "",
    "",
    "",
    "",
    "H_Hat_brown",
    "H_Hat_grey",
    "H_Hat_tan",
    "H_Hat_checker",
    "H_Hat_camo",
    "H_Bandanna_surfer",
    "H_Bandanna_surfer_grn",
    "H_Bandanna_surfer_blk",
    "H_Hat_Safari_olive_F",
    "H_Hat_Safari_sand_F",
    "H_Construction_basic_black_F",
    "H_Helmet_Skate",
    "H_Cap_blu",
    "H_Cap_grn",
    "H_Cap_tan",
    "H_Cap_oli",
    "H_Cap_red",
    "H_Cap_blk"
];

KP_liberation_guerilla_headgear_2 = [
    "H_Bandanna_blu",
    "H_Bandanna_sand",
    "H_Bandanna_gry",
    "H_Bandanna_camo",
    "H_Bandanna_cbr",
    "H_Bandanna_sgg",
    "H_Bandanna_khk",
    "H_Cap_blu",
    "H_Cap_grn",
    "H_Cap_tan",
    "H_Cap_oli",
    "H_Cap_red",
    "H_Cap_blk",
    "H_Cap_blk_Raven",
    "H_MilCap_dgtl"
];

KP_liberation_guerilla_headgear_3 = [
    "mti_factions_rebels_helmet_Rebel_Base",
    "LST_Merc_Helmet_Sirys",
    "H_Shemag_olive",
    "TKE_FCFHelm",
    "H_Booniehat_oli",
    "H_Booniehat_tan",
    "H_Booniehat_dgtl",
    "H_Booniehat_tna_F",
    "TKE_FCrewHelmMD",
    "H_PASGT_basic_white_F"
];

// Facegear. Applies for tier 2 and 3.
KP_liberation_guerilla_facegear = [
    "",
    "",
    "",
    "G_Bandanna_shades",
    "G_Bandanna_beast",
    "G_Bandanna_tan",
    "G_Bandanna_khk",
    "G_Bandanna_oli",
    "G_Bandanna_aviator",
    "G_Bandanna_blk"
];
