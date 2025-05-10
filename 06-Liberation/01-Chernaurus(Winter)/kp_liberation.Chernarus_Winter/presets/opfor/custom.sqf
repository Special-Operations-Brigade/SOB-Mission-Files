/*
    Needed Mods:
    - None

    Optional Mods:
    - None
*/

// Enemy infantry classes
opfor_officer = "mti_factions_cis_TS";                                          // Officer
opfor_squad_leader = "mti_factions_cis_OOM_Commander";                                  // Squad Leader
opfor_team_leader = "mti_factions_cis_B1_SL";                                   // Team Leader
opfor_sentry = "mti_factions_cis_OOM_Security";                                      // Rifleman (Lite)
opfor_rifleman = "mti_factions_cis_B1_E5";                                         // Rifleman
opfor_rpg = "mti_factions_cis_B1_AT";                                          // Rifleman (LAT)
opfor_grenadier = "mti_factions_cis_B1_Heavy";                                     // Grenadier
opfor_machinegunner = "mti_factions_cis_B1_Support";                                 // Autorifleman
opfor_heavygunner = "mti_factions_cis_B2";                                  // Heavy Gunner
opfor_marksman = "mti_factions_cis_B1_Sniper";                                       // Marksman
opfor_sharpshooter = "mti_factions_cis_B1_Sniper";                                // Sharpshooter
opfor_sniper = "mti_factions_cis_BX_Sniper";                                            // Sniper
opfor_at = "mti_factions_cis_B1_AT_Heavy";                                            // AT Specialist
opfor_aa = "mti_factions_cis_B1_AA_Heavy";                                            // AA Specialist
opfor_medic = "mti_factions_cis_OOM_Security";                                              // Combat Life Saver
opfor_engineer = "mti_factions_cis_OOM_Flamer";                                        // Engineer
opfor_paratrooper = "mti_factions_cis_OOM_Marine";                                   // Paratrooper

// Enemy vehicles used by secondary objectives.
opfor_mrap = "mti_factions_cishuman_Rawl";                                             // Ifrit
opfor_mrap_armed = "mti_factions_cishuman_Rawl";                                   // Ifrit (HMG)
opfor_transport_helo = "mti_factions_cis_hmp_transport";                   // Mi-290 Taru (Bench)
opfor_transport_truck = "mti_factions_cis_SAC_Trade";                         // Tempest Transport (Covered)
opfor_ammobox_transport = "O_T_Truck_03_covered_ghex_F";                     // Tempest Transport (Open) -> Has to be able to transport resource crates!
opfor_fuel_truck = "OPTRE_m1015_mule_fuel_ins";                                 // Tempest Fuel
opfor_ammo_truck = "OPTRE_m1015_mule_ammo_ins";                                 // Tempest Ammo
opfor_fuel_container = "Land_Pod_Heli_Transport_04_fuel_F";             // Taru Fuel Pod
opfor_ammo_container = "Land_Pod_Heli_Transport_04_ammo_F";             // Taru Ammo Pod
opfor_flag = "3AS_Flag_CIS";                                             // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
militia_squad = [
    "mti_factions_cis_B1_Support",                                                     // Rifleman (Lite)
    "mti_factions_cis_B1_E5",                                                     // Rifleman (Lite)
    "mti_factions_cis_B1_SBB3",                                                     // Rifleman
    "mti_factions_cishuman_unit_Rifleman_AT",                                                     // Rifleman
    "mti_factions_cishuman_unit_Missile_AT",                                                 // Rifleman (AT)
    "mti_factions_cishuman_unit_MG",                                                  // Autorifleman
    "mti_factions_cishuman_unit_Rifleman_Sniper",                                                   // Marksman
    "mti_factions_cis_B1_Sniper",                                               // Medic
    "mti_factions_cishuman_unit_Rifleman_AA"                                                    // Engineer
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
militia_vehicles = [
    "mti_factions_cishuman_Rawl",
    "mti_factions_cishuman_IFRIT_Sniper",
    "mti_factions_cis_AAT_CIS",
    "mti_factions_cishuman_Rat",
    "mti_factions_cis_GAT_Light",
    "mti_factions_cis_GAT_Light_Olive",
    "mti_factions_cishuman_Rat2"
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
opfor_vehicles = [
    "mti_factions_cis_AAT_CIS",                                                  // Ifrit (HMG)
    "mti_factions_cis_AAT_Green",                                                  // Ifrit (GMG)
    "mti_factions_cis_n99",                                                  // Ifrit (GMG)
    "mti_factions_cis_Raptor_AT",                                                    // Qilin (AT)
    "mti_factions_cis_MTT",                                        // BTR-K Kamysh
    "mti_factions_cis_GAT",                                        // BTR-K Kamysh
    "mti_factions_cis_AAT_Woodland",                                            // ZSU-39 Tigris
    "mti_factions_cis_AAT_Arid",                                            // ZSU-39 Tigris
    "mti_factions_cis_Raptor_Base",                                                // T-100 Varsuk
    "mti_factions_cis_AAT_H",                                                // T-100 Varsuk
    "mti_factions_cis_AAT_Super",
    "mti_factions_cis_AAT_F",
    "mti_factions_cis_AAT_Super_F",
    "mti_factions_cis_AAT_Super_D",
    "mti_factions_deathwatch_Mythosaur"                                                // T-140K Angara
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
    "mti_factions_cishuman_Rawl",                                                  // Ifrit (HMG)
    "mti_factions_cishuman_Rawl",                                                  // Ifrit (HMG)
    "mti_factions_cishuman_Rat",                                                    // Qilin (AT)
    "mti_factions_cis_ast",                                          // MSE-3 Marid
    "mti_factions_cis_AAT_CIS",
    "mti_factions_cishuman_Rat2"
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
    "mti_factions_cishuman_Rawl",                                                  // Ifrit (HMG)
    "mti_factions_cishuman_IFRIT_GMG",                                                  // Ifrit (GMG)
    "mti_factions_cishuman_Rawl_Flamer",                                                  // Ifrit (GMG)
    "mti_factions_cishuman_Rat",                                                    // Qilin (AT)
    "mti_factions_cis_MTT",                                           // Tempest Transport
    "mti_factions_cis_PAC_Trade",                                             // Tempest Transport (Covered)
    "mti_factions_cis_n99",                                        // BTR-K Kamysh
    "mti_factions_cis_n99",                                        // BTR-K Kamysh
    "mti_factions_cis_GAT_AA",                                            // ZSU-39 Tigris
    "mti_factions_cis_GAT_AA",                                            // ZSU-39 Tigris
    "mti_factions_cis_AAT_CIS",                                                // T-100 Varsuk
    "mti_factions_cis_AAT_Woodland",                                                // T-100 Varsuk
    "mti_factions_cis_AAT_H",                                                // T-140 Angara
    "mti_factions_cis_AAT_Super",                                               // T-140K Angara
    "mti_factions_cis_hmp_transport",                                 // Po-30 Orca (Armed)
    "mti_factions_cis_hmp_transport",                                 // Po-30 Orca (Armed)
    "mti_factions_cis_hmp_transport",                                      // Mi-290 Taru (Bench)
    "mti_factions_cis_hmp_transport"                                 // Mi-48 Kajman
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
    "mti_factions_cishuman_Rawl",                                                  // Ifrit (HMG)
    "mti_factions_cishuman_Rawl",                                                  // Ifrit (HMG)
    "mti_factions_cis_SAC_Trade",                                           // Tempest Transport
    "mti_factions_cis_PAC_Trade",                                          // MSE-3 Marid
    "mti_factions_cis_n99",                                        // BTR-K Kamysh
    "mti_factions_cis_GAT_AA",                                            // ZSU-39 Tigris
    "mti_factions_cis_hmp_transport",                                 // Po-30 Orca (Armed)
    "mti_factions_cis_hmp_transport"                                       // Mi-290 Taru (Bench)
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.    */
opfor_troup_transports = [
    "mti_factions_cis_MTT",                                           // Tempest Transport
    "mti_factions_cishuman_Rat",                                             // Tempest Transport (Covered)
    "mti_factions_cishuman_Rat2",                                          // MSE-3 Marid
    "mti_factions_cis_MAF_Trans",
    "mti_factions_cis_Dropship",
    "mti_factions_cis_hmp_transport"                                  // Po-30 Orca (Armed)
];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
    "mti_factions_cis_hmp_transport",                                      // Mi-290 Taru (Bench)
    "mti_factions_cis_hmp_gunship",                                 // Po-30 Orca (Armed)
    "mti_factions_cis_hmp_gunship_black"                                 // Mi-48 Kajman
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
    "mti_factions_cis_Vulture_Base",                                  // To-199 Neophron (CAS)
    "mti_factions_cis_Vulture_S",                                              // To-201 Shikra
    "mti_factions_cis_Vulture_CAS"
];
