/*
    Needed Mods:
    - None

    Optional Mods:
    - BWMod
    - RHSUSAF
    - F-15C
    - F/A-18
    - CUP Weapons
    - CUP Vehicles
    - USAF Main Pack
    - USAF Fighters Pack
    - USAF Utility Pack
*/

/*
    --- Support classnames ---
    Each of these should be unique.
    The same classnames for different purposes may cause various unpredictable issues with player actions.
    Or not, just don't try!
*/
FOB_typename = "3AS_Republic_FCP";                                    // This is the main FOB HQ building.
FOB_box_typename = "mti_fortify_Rho_Barracks";                            // This is the FOB as a container.
FOB_truck_typename = "MTI_MUTT_L";                                // This is the FOB as a vehicle.
Arsenal_typename = "mti_arsenal_command";                                   // This is the virtual arsenal as portable supply crates.
Respawn_truck_typename = "MTI_MUTT_I";                        // This is the mobile respawn (and medical) truck.
huron_typename = "MTI_RhoCLass";                       // This is Spartan 01, a multipurpose mobile respawn as a helicopter.
crewman_classname = "mti_armoury_pilot_unit_Trigger";                                         // This defines the crew for vehicles.
pilot_classname = "mti_armoury_pilot_unit_Bow";                                      // This defines the pilot for helicopters.
KP_liberation_little_bird_classname = "MTI_LAATLE_LAG";              // These are the little birds which spawn on the Freedom or at Chimera base.
KP_liberation_boat_classname = "optre_catfish_unarmed_f";                 // These are the boats which spawn at the stern of the Freedom.
KP_liberation_truck_classname = "MTI_MUTT_C";               // These are the trucks which are used in the logistic convoy system.
KP_liberation_small_storage_building = "ContainmentArea_02_sand_F";     // A small storage area for resources.
KP_liberation_large_storage_building = "ContainmentArea_01_sand_F";     // A large storage area for resources.
KP_liberation_recycle_building = "3AS_Repair_Facility";           // The building defined to unlock FOB recycling functionality.
KP_liberation_air_vehicle_building = "lsd_gar_radarDish";             // The building defined to unlock FOB air vehicle functionality.
KP_liberation_heli_slot_building = "Land_HelipadSquare_F";              // The helipad used to increase the GLOBAL rotary-wing cap.
KP_liberation_plane_slot_building = "Land_HelipadCircle_F";             // The hangar used to increase the GLOBAL fixed-wing cap.
KP_liberation_supply_crate = "CargoNet_01_box_F";                       // This defines the supply crates, as in resources.
KP_liberation_ammo_crate = "B_CargoNet_01_ammo_F";                      // This defines the ammunition crates.
KP_liberation_fuel_crate = "CargoNet_01_barrels_F";                     // This defines the fuel crates.

/*
    --- Friendly classnames ---
    Each array below represents one of the 7 pages within the build menu.
    Format: ["vehicle_classname",supplies,ammunition,fuel],
    Example: ["B_APC_Tracked_01_AA_F",300,150,150],
    The above example is the NATO IFV-6a Cheetah, it costs 300 supplies, 150 ammunition and 150 fuel to build.
    IMPORTANT: The last element inside each array must have no comma at the end!
*/
infantry_units = [
    ["mti_armoury_trooper_unit_CR",15,0,0],                                        // Rifleman (Light)
    ["mti_armoury_trooper_unit_CT",20,0,0],                                             // Rifleman
    ["mti_armoury_trooper_unit_CT_EOD",30,0,0],                                         // Rifleman (AT)
    ["JLTS_Clone_P2_DC15AUGL",25,0,0],                                          // Grenadier
    ["JLTS_Clone_P2_AR",25,0,0],                                          // Autorifleman
    ["mti_armoury_commando_unit_base",35,0,0],                                         // Heavygunner
    ["JLTS_Clone_P2_BARC",30,0,0],                                           // Marksman
    ["JLTS_Clone_P2_marksman",40,0,0],                                        // Sharpshooter
    ["JLTS_Clone_P2_AT",50,10,0],                                         // AT Specialist
    ["NCA_republicCloneTrooper_AA",50,10,0],                                         // AA Specialist
    ["JLTS_Clone_P2_medic",30,0,0],                                               // Combat Life Saver
    ["JLTS_Clone_P2_EOD",30,0,0],                                            // Engineer
    ["JLTS_Clone_P2_RTO",30,0,0],                                         // Explosives Specialist
    ["mti_armoury_arc_unit_trooper",20,0,0],                                               // Recon Scout
    ["SEA_Clone_GM_Sniper",70,5,0],                                              // Sniper
    ["SEA_Clone_GM_RTO",20,0,0],                                             // Spotter
    ["mti_armoury_fieldsupport_unit_Trooper",10,0,0],                                                // Crewman
    ["mti_armoury_jumptrooper_unit_Trooper",20,0,0],                                          // Para Trooper
    ["mti_armoury_pilot_unit_Arrow",10,0,0],                                            // Helicopter Crew
    ["mti_armoury_pilot_unit_Bow",10,0,0],                                           // Helicopter Pilot
    ["mti_armoury_pilot_unit_Trigger",10,0,0]                                                // Pilot
];

light_vehicles = [
    ["B_Quadbike_01_F",50,0,25],                                        // Quad Bike
    ["MTI_ISP_Base",75,0,50],                                     // Prowler
    ["MTI_Barc",75,40,50],                                      // Prowler (HMG)
    ["MTI_Barc_Sidecar",75,60,50],                                         // Prowler (AT)
    ["MTI_MUTT_I",100,0,50],                                           // Hunter
    ["NCA_AA5Orbak",100,0,50],                                           // Strider
    ["MTI_MUTT_C",100,40,50],                                      // Strider (HMG)
    ["MTI_MUTT_L",100,60,50],                                      // Strider (GMG)
    ["MTI_AV7",600,300,50],                                        // M1025A2
    ["B_Truck_01_transport_F",125,0,75],                                // HEMTT Transport
    ["B_Truck_01_covered_F",125,0,75],                                  // HEMTT Transport (Covered)
    ["B_UGV_01_F",150,0,50],                                            // UGV Stomper
    ["B_UGV_01_rcws_F",150,40,50],                                      // UGV Stomper (RCWS)
    ["optre_catfish_unarmed_f",100,0,25],                                 // Assault Boat
    ["optre_catfish_mg_f",200,80,75],                            // Speedboat Minigun
    ["optre_catfish_gauss_f",200,80,75],                            // Speedboat Minigun
    ["optre_catfish_atgm_f",200,80,75],                            // Speedboat Minigun
    ["optre_catfish_aa_f",200,80,75],                            // Speedboat Minigun
    ["B_SDV_01_F",150,0,50]                                             // SDV
];

heavy_vehicles = [
    ["MTI_PX10_Armored",200,40,100],                                  // M113A3 (M2)
    ["MTI_PX10_R3",200,60,100],                             // M113A3 (Mk19)
    ["MTI_PX10",200,0,100],                           // M113A3 (Medical)
    ["MTI_RX200",300,100,150],                            // IFV-6c Panther
    ["MTI_UTAT",300,150,150],                          // FV-720 Mora
    ["MTI_TX130_Recon",300,225,150],                                    // IFV Puma
    ["MTI_TX130",300,250,175],                                       // AWC 302 Nyx (AA)
    ["WM_M1L",300,250,175],                                       // AWC 302 Nyx (AA)
    ["WM_M1G",300,250,175],                                       // AWC 302 Nyx (AA)
    ["MTI_TX130_Super",400,300,200],                                  // M2A1 Slammer
    ["MTI_Juggernaut",400,350,225],                            // M1A1SA (Tusk I)
    ["MTI_ATTE",500,350,225],                                    // M2A4 Slammer UP
    ["MTI_ATTE_Super",500,500,250],                          // Rhino MGS
    ["mti_factions_imp_ATAT",550,550,250],                       // Rhino MGS UP
    ["MTI_ATAP",600,1250,300]                                   // M4 Scorcher
];

air_vehicles = [
    ["3AS_Patrol_LAAT_Police",200,0,100],                                    // MH-9 Hummingbird
    ["3AS_Patrol_LAAT_Republic",200,100,100],                   // AH-9 Pawnee
    ["MTI_LAATLE_LAG",225,0,125],                            // WY-55 Hellcat
    ["3AS_Aegis_Shuttle_Civ_F",225,200,125],                   // WY-55 Hellcat (Armed)
    ["3AS_LAAT_Mk2",500,400,200],                  // AH-99 Blackfoot
    ["3AS_LAAT_Mk1",500,500,200],                                           // AH-1Z (Multi-Role)
    ["MTI_LAATc",750,750,250],                                       // AH-64D (Multi-Role)
    ["MTI_LAATle_Gunship",350,200,150],                                       // UH-60M MEV2
    ["MTI_nuclass",275,0,100],                                          // CH-47 Chinook (Armed)
    ["MTI_RhoCLass",275,0,100],                                // CH-49 Mohawk
    ["B_UAV_02_dynamicLoadout_F",400,400,200],                          // MQ-4A Greyhawk
    ["B_T_UAV_03_dynamicLoadout_F",450,500,250],                        // MQ-12 Falcon
    ["MTI_Sentinel_Drone",500,500,200],                                         // UCAV Sentinel
    ["MTI_VwingF",500,400,350],                // A-143 Buzzard
    ["MTI_LAATi_Mk2",1000,800,400],                   // A-164 Wipeout (CAS)
    ["MTI_LAATi_Base",1000,1000,400],                                          // A-10A (CAS)n
    ["MTI_BTLB",1800,2000,500],                                         // F-22A Raptor
    ["MTI_Z95",1800,2250,500],                                   // F-22A Raptor (Heavy)
    ["MTI_Delta7_Base",2250,2000,750],                                // F-35A Lightning II
    ["MTI_arc_170",1500,1750,450],                             // F/A-181 Black Wasp II
    ["MTI_arc_170_multiSeat",1500,1750,450],                     // F/A-181 Black Wasp II (Stealth)
    ["MTI_LAATs",750,1500,500],                               // V-44 X Blackfish (Armed)
    ["B_T_VTOL_01_infantry_F",750,0,500],                               // V-44 X Blackfish (Infantry)
    ["B_T_VTOL_01_vehicle_F",750,0,500]                                 // V-44 X Blackfish (Vehicle)
];

static_vehicles = [
    ["MTI_HeavyRepeater",25,40,0],                                             // Mk30A HMG .50
    ["NCA_EWeb",25,40,0],                                        // Mk30 HMG .50 (Raised)
    ["B_HMG_01_A_F",35,40,0],                                           // Mk30 HMG .50 (Autonomous)
    ["3AS_HeavyRepeater_Armoured",35,60,0],                                             // Mk32A GMG 20mm
    ["3AS_StationaryTurret",35,60,0],                                        // Mk32 GMG 20mm (Raised)
    ["B_GMG_01_A_F",45,60,0],                                           // Mk32 GMG 20mm (Autonomous)
    ["MTI_AA_Static",50,100,0],                                         // Static Titan Launcher (AT)
    ["MTI_Keeradak_Base",50,100,0],                                         // Static Titan Launcher (AA)
    ["MTI_Mortar",80,150,0],                                         // Mk6 Mortar
    ["mti_mortar_turret",100,200,0],                                          // M119A2
    ["MTI_Keeradak_UAV",250,500,0]                                     // MIM-145 Defender
];

buildings = [
    ["Land_Cargo_House_V1_F",0,0,0],
    ["Land_Cargo_Patrol_V1_F",0,0,0],
    ["Land_Cargo_Tower_V1_F",0,0,0],
    ["3AS_Double_GAR_Stand",0,0,0],
    ["3AS_Small_GAR_Stand",0,0,0],
    ["MTI_Flag_SOB",0,0,0],
    ["3AS_Flag_GAR",0,0,0],
    ["3AS_Flag_Jedi",0,0,0],
    ["Land_Medevac_house_V1_F",0,0,0],
    ["3AS_Short_Wall_Bunker",0,0,0],
    ["3AS_Small_Sen_Stand",0,0,0],
    ["3AS_BoxBarricade2",0,0,0],
    ["3AS_BoxBarricade3",0,0,0],
    ["3AS_BoxBarricade7",0,0,0],
    ["Land_PortableLight_single_F",0,0,0],
    ["Land_PortableLight_double_F",0,0,0],
    ["land_3AS_light_s_imp",0,0,0],
    ["land_3AS_fob_light_imp_off",0,0,0],
    ["land_3as_Light_Prop",0,0,0],
    ["land_3AS_gar_tall",0,0,0],
    ["3AS_Pad_GAR_Prop",0,0,0],                                     // Strictly aesthetic - as in it does not increase helicopter cap!
    ["Land_HelipadRescue_F",0,0,0],                                     // Strictly aesthetic - as in it does not increase helicopter cap!
    ["PortableHelipadLight_01_blue_F",0,0,0],
    ["PortableHelipadLight_01_green_F",0,0,0],
    ["PortableHelipadLight_01_red_F",0,0,0],
    ["3AS_chair_s",0,0,0],
    ["3AS_chair_t",0,0,0],
    ["3AS_chair_sr",0,0,0],
    ["3AS_Holotable_GAR",0,0,0],
    ["3AS_Terminal_Data_GAR",0,0,0],
    ["land_3AS_Tent",0,0,0],
    ["land_3AS_Tent_Med",0,0,0],
    ["land_3AS_Tent_Green",0,0,0],
    ["Land_PaperBox_open_full_F",0,0,0],
    ["Land_PaperBox_closed_F",0,0,0],
    ["Land_DieselGroundPowerUnit_01_F",0,0,0],
    ["Land_ToolTrolley_02_F",0,0,0],
    ["Land_WeldingTrolley_01_F",0,0,0],
    ["Land_Workbench_01_F",0,0,0],
    ["Land_GasTank_01_blue_F",0,0,0],
    ["Land_GasTank_01_khaki_F",0,0,0],
    ["Land_GasTank_01_yellow_F",0,0,0],
    ["Land_GasTank_02_F",0,0,0],
    ["Land_BarrelWater_F",0,0,0],
    ["Land_BarrelWater_grey_F",0,0,0],
    ["Land_WaterBarrel_F",0,0,0],
    ["Land_WaterTank_F",0,0,0],
    ["Land_BagFence_Round_F",0,0,0],
    ["Land_BagFence_Short_F",0,0,0],
    ["Land_BagFence_Long_F",0,0,0],
    ["Land_BagFence_Corner_F",0,0,0],
    ["Land_BagFence_End_F",0,0,0],
    ["Land_BagBunker_Small_F",0,0,0],
    ["Land_BagBunker_Large_F",0,0,0],
    ["Land_BagBunker_Tower_F",0,0,0],
    ["3as_hbarrier_1",0,0,0],
    ["3as_hbarrier_3",0,0,0],
    ["3as_hbarrier_5",0,0,0],
    ["3as_hbarrier_big",0,0,0],
    ["3as_hbarrier_big4",0,0,0],
    ["3as_hbarrier_big6",0,0,0],
    ["3as_hbarrier_big_corner",0,0,0],
    ["3as_hbarrierWall_corner",0,0,0],
    ["3as_hbarrierWall_corner3",0,0,0],
    ["3as_hbarrierWall_Corridor",0,0,0],
    ["3as_hbarrierWall_CorridorWalk",0,0,0],
    ["3as_hbarrier_watchtower",0,0,0],
    ["3as_hbarricade",0,0,0],
    ["3as_hbarrier_bunker",0,0,0],
    ["3as_hbarrierwall_4r",0,0,0],
    ["3as_hbarrierWall_6",0,0,0],
    ["land_3as_GuardShack",0,0,0],
    ["3as_hbarrierWall_cornerinv3",0,0,0],
    ["3AS_sq_table_c",0,0,0],
    ["3AS_Sign_Stand_Triangle",0,0,0],
    ["3AS_Sign_Stand_Octagon_Medical",0,0,0],
    ["Land_Sign_WarningMilitaryVehicles_F",0,0,0],
    ["land_3as_Hedgehog",0,0,0],
    ["Land_ClutterCutter_large_F",0,0,0]
];

support_vehicles = [
    [Arsenal_typename,0,0,0],
    [Respawn_truck_typename,200,0,100],
    [FOB_box_typename,300,500,0],
    [FOB_truck_typename,300,500,75],
    [KP_liberation_small_storage_building,0,0,0],
    [KP_liberation_large_storage_building,0,0,0],
    [KP_liberation_recycle_building,250,0,0],
    [KP_liberation_air_vehicle_building,1000,0,0],
    [KP_liberation_heli_slot_building,250,0,0],
    [KP_liberation_plane_slot_building,500,0,0],
    ["ACE_medicalSupplyCrate_advanced",50,0,0],
    ["ACE_Box_82mm_Mo_HE",50,40,0],
    ["ACE_Box_82mm_Mo_Smoke",50,10,0],
    ["ACE_Box_82mm_Mo_Illum",50,10,0],
    ["ACE_Wheel",10,0,0],
    ["ACE_Track",10,0,0],
    ["USAF_missileCart_W_AGM114",50,150,0],                             // Missile Cart (AGM-114)
    ["USAF_missileCart_AGMMix",50,150,0],                               // Missile Cart (AGM-65 Mix)
    ["USAF_missileCart_AGM1",50,150,0],                                 // Missile Cart (AGM-65D)
    ["USAF_missileCart_AGM2",50,150,0],                                 // Missile Cart (AGM-65E)
    ["USAF_missileCart_AGM3",50,150,0],                                 // Missile Cart (AGM-65K)
    ["USAF_missileCart_AA1",50,150,0],                                  // Missile Cart (AIM-9M/AIM-120)
    ["USAF_missileCart_AA2",50,150,0],                                  // Missile Cart (AIM-9X/AIM-120)
    ["USAF_missileCart_GBU12_green",50,150,0],                          // Missile Cart (GBU12 Green)
    ["USAF_missileCart_GBU12_maritime",50,150,0],                       // Missile Cart (GBU12 Maritime)
    ["USAF_missileCart_GBU12",50,150,0],                                // Missile Cart (GBU12)
    ["USAF_missileCart_Gbu31",50,150,0],                                // Missile Cart (GBU31)
    ["USAF_missileCart_GBU39",50,150,0],                                // Missile Cart (GBU39)
    ["USAF_missileCart_Mk82",50,150,0],                                 // Missile Cart (Mk82)
    ["CUP_B_TowingTractor_NATO",50,0,25],                               // Towing Tractor
    ["B_APC_Tracked_01_CRV_F",500,250,350],                             // CRV-6e Bobcat
    ["B_Truck_01_Repair_F",325,0,75],                                   // HEMTT Repair
    ["B_Truck_01_fuel_F",125,0,275],                                    // HEMTT Fuel
    ["B_Truck_01_ammo_F",125,200,75],                                   // HEMTT Ammo
    ["rhsusf_M977A4_REPAIR_BKIT_usarmy_wd",325,0,75],                   // M977A4 Repair
    ["rhsusf_M978A4_BKIT_usarmy_wd",125,0,275],                         // M978A4 Fuel
    ["rhsusf_M977A4_AMMO_BKIT_usarmy_wd",125,200,75],                   // M977A4 Ammo
    ["B_Slingload_01_Repair_F",275,0,0],                                // Huron Repair
    ["B_Slingload_01_Fuel_F",75,0,200],                                 // Huron Fuel
    ["B_Slingload_01_Ammo_F",75,200,0]                                  // Huron Ammo
];

/*
    --- Squads ---
    Pre-made squads for the commander build menu.
    These shouldn't exceed 10 members.
*/

// Light infantry squad.
blufor_squad_inf_light = [
    "mti_armoury_trooper_unit_CS",
    "mti_armoury_trooper_unit_CT",
    "mti_armoury_trooper_unit_CT",
    "mti_armoury_trooper_unit_CT_EOD",
    "JLTS_Clone_P2_DC15AUGL",
    "JLTS_Clone_P2_AR",
    "JLTS_Clone_P2_AR",
    "JLTS_Clone_P2_AR",
    "JLTS_Clone_P2_medic",
    "JLTS_Clone_P2_EOD"
];

// Heavy infantry squad.
blufor_squad_inf = [
    "mti_armoury_trooper_unit_CS",
    "mti_armoury_trooper_unit_CT_EOD",
    "mti_armoury_trooper_unit_CT_EOD",
    "JLTS_Clone_P2_DC15AUGL",
    "JLTS_Clone_P2_AR",
    "JLTS_Clone_P2_AR",
    "mti_armoury_commando_unit_base",
    "JLTS_Clone_P2_marksman",
    "JLTS_Clone_P2_medic",
    "JLTS_Clone_P2_EOD"
];

// AT specialists squad.
blufor_squad_at = [
    "mti_armoury_trooper_unit_CS",
    "mti_armoury_trooper_unit_CT",
    "mti_armoury_trooper_unit_CT",
    "JLTS_Clone_P2_AT",
    "JLTS_Clone_P2_AT",
    "JLTS_Clone_P2_AT",
    "JLTS_Clone_P2_medic",
    "mti_armoury_trooper_unit_CT"
];

// AA specialists squad.
blufor_squad_aa = [
    "mti_armoury_trooper_unit_CS",
    "mti_armoury_trooper_unit_CT",
    "mti_armoury_trooper_unit_CT",
    "NCA_republicCloneTrooper_AA",
    "NCA_republicCloneTrooper_AA",
    "NCA_republicCloneTrooper_AA",
    "JLTS_Clone_P2_medic",
    "mti_armoury_trooper_unit_CT"
];

// Force recon squad.
blufor_squad_recon = [
    "B_recon_TL_F",
    "mti_armoury_arc_unit_trooper",
    "mti_armoury_arc_unit_trooper",
    "mti_armoury_arc_unit_trooper",
    "mti_armoury_arc_unit_trooper",
    "mti_armoury_arc_unit_trooper",
    "mti_armoury_arc_unit_trooper",
    "mti_armoury_arc_unit_trooper",
    "mti_armoury_arc_unit_trooper",
    "mti_armoury_arc_unit_trooper"
];

// Paratroopers squad (The units of this squad will automatically get parachutes on build)
blufor_squad_para = [
    "mti_armoury_jumptrooper_unit_Trooper",
    "mti_armoury_jumptrooper_unit_Trooper",
    "mti_armoury_jumptrooper_unit_Trooper",
    "mti_armoury_jumptrooper_unit_Trooper",
    "mti_armoury_jumptrooper_unit_Trooper",
    "mti_armoury_jumptrooper_unit_Trooper",
    "mti_armoury_jumptrooper_unit_Trooper",
    "mti_armoury_jumptrooper_unit_Trooper",
    "mti_armoury_jumptrooper_unit_Trooper",
    "mti_armoury_jumptrooper_unit_Trooper"
];

/*
    --- Elite vehicles ---
    Classnames below have to be unlocked by capturing military bases.
    Which base locks a vehicle is randomized on the first start of the campaign.
*/
elite_vehicles = [
    "MTI_ATTE_Super",                                                    // Mk.V SOCOM
    "mti_factions_imp_ATAT",                                          // M1A1SA (Tusk I)
    "MTI_ATTE",                                                  // M2A4 Slammer UP
    "MTI_Delta7_Base",                                   // M1A2SEPv1 (Tusk II)
    "MTI_arc_170",                                              // MBT Leopard 2A6M
    "MTI_Sentinel_Drone",                                                  // M4 Scorcher
    "MTI_BTLB",                                               // M109A6
    "MTI_Juggernaut",                                                  // M5 Sandstorm MLRS
    "MTI_TX130_Super",                                // AH-99 Blackfoot
    "MTI_ATAP",                                                     // AH-64D (Multi-Role)
    "MTI_RX200",                                         // UH Tiger RMK (Universal)
    "MTI_Z95",                                        // MQ-4A Greyhawk
    "B_T_UAV_03_dynamicLoadout_F",                                      // MQ-12 Falcon
    "B_UAV_05_F",                                                       // UCAV Sentinel
    "MTI_AV7",                                  // A-164 Wipeout (CAS)
    "MTI_Keeradak_UAV",                                             // A-149 Gryphon
    "mti_mortar_turret",                                                          // A-10A (CAS)
    "MTI_MUTT_L",                                                         // MQ-9 Reaper
    "WM_M1L",                                                         // A-10C Thunderbolt II
    "MTI_LAATs",
    "optre_catfish_gauss_f",
    "MTI_LAATle_Gunship",                                     // F/A-181 Black Wasp II (Stealth)
    "B_T_VTOL_01_armed_F"                                               // V-44 X Blackfish (Armed)
];
