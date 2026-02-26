// *** FRIENDLIES ***
GRLIB_west_modder = "pSiKO";

// GRLIB_color_friendly = "ColorBLUFOR";
// GRLIB_color_friendly_bright = "ColorBlue";

// GRLIB_color_enemy = "ColorOPFOR";
// GRLIB_color_enemy_bright = "ColorRED";

// Default classname: scripts\shared\default_classnames.sqf
// Advanced definition: scripts\shared\classnames.sqf

huron_typename = "mti_armoury_vehicles_laatc_base";
FOB_typename = "land_3as_FOBBuilding2Lb";
FOB_Man = "mti_factions_sob_unit_CT_SL";
FOB_box_typename = "mti_armoury_vehicles_itt_base";
FOB_truck_typename = "mti_armoury_vehicles_itt_base";
respawn_truck_typename = "B_Truck_01_medical_F";
ammo_truck_typename = "B_Truck_01_ammo_F";
fuel_truck_typename = "B_Truck_01_fuel_F";
repair_truck_typename = "B_Truck_01_Repair_F";
repair_sling_typename = "B_Slingload_01_Repair_F";
fuel_sling_typename = "B_Slingload_01_Fuel_F";
ammo_sling_typename = "B_Slingload_01_Ammo_F";
medic_sling_typename = "B_Slingload_01_Medevac_F";
pilot_classname = "mti_armoury_equipment_pilot_unit_Arrow";
crewman_classname = "mti_factions_sob_unit_FS";
uavs_terminal_typename = "B_UavTerminal";
blufor_flag = "3AS_Flag_GAR";

chimera_vehicle_overide = [
  ["B_Heli_Light_01_F", "mti_armoury_vehicles_laatle_unarmed"],
  ["B_Heli_Transport_01_F", "mti_armoury_vehicles_laati_mk2"]
];

// [CLASSNAME, MANPOWER, AMMO, FUEL, RANK]
infantry_units_west = [
	["Alsatian_Random_F",0,0,0,GRLIB_perm_max],
	["Fin_random_F",0,0,0,0],
	["mti_factions_sob_unit_CT",1,0,0,0],
	["mti_factions_sob_unit_CT_Medic",1,0,0,0],
	["mti_factions_sob_unit_CT_Demo",1,0,0,0],
	["mti_factions_sob_unit_CT_Gren",1,0,0,GRLIB_perm_inf],
	["mti_factions_sob_unit_CT_Marksman",1,0,0,GRLIB_perm_inf],
	["mti_factions_sob_unit_CT_AT",1,0,0,0],
	["mti_factions_sob_unit_ARC_Sniper",1,0,0,GRLIB_perm_inf],
	["mti_factions_sob_unit_CT_MG",1,0,0,GRLIB_perm_inf],
	["mti_factions_sob_unit_ARC",1,0,0,GRLIB_perm_log],
	["mti_factions_sob_unit_RC",1,0,0,GRLIB_perm_log],
	["mti_factions_sob_unit_RC_Sniper",1,0,0,GRLIB_perm_log],
	["mti_factions_sob_unit_RC_Launcher",1,0,0,GRLIB_perm_log],
	["mti_factions_sob_unit_JT_EWS",1,0,0,GRLIB_perm_log],
	["mti_factions_sob_unit_JT_Sniper",1,0,0,GRLIB_perm_log],
	["mti_factions_sob_unit_JT",1,0,0,GRLIB_perm_log],
	[crewman_classname,1,0,0,GRLIB_perm_inf],
	[pilot_classname,1,0,0,GRLIB_perm_log]
];

units_loadout_overide = [
	"B_Medic_F"
];

light_vehicles = [
	["mti_armoury_vehicles_barc_base",1,5,1,0],
	["B_Boat_Transport_01_F",1,5,1,0],
	["C_Boat_Transport_02_F",2,25,2,GRLIB_perm_log],
	["B_Boat_Armed_01_minigun_F",5,30,5,GRLIB_perm_log],
	["B_SDV_01_F",5,30,5,GRLIB_perm_log],
	["mti_armoury_vehicles_barc_sidecar",1,5,1,0],
	["mti_armoury_vehicles_isp_base",1,10,1,0],
	["mti_armoury_vehicles_mutt_i",1,10,5,0],
	["mti_armoury_vehicles_mutt_l",1,50,5,GRLIB_perm_inf],
	["mti_armoury_vehicles_bug_base",1,10,3,GRLIB_perm_inf],
	["mti_armoury_vehicles_itt_base",1,15,7,0],
	["mti_armoury_vehicles_px10_armored",2,25,12,0],
	["mti_armoury_vehicles_tx223_base",5,100,12,GRLIB_perm_inf],
	["B_Truck_01_transport_F",5,30,15,GRLIB_perm_log],
	["B_Truck_01_covered_F",5,30,15,GRLIB_perm_tank],
	["I_Truck_02_transport_F",5,30,15,GRLIB_perm_log],
	["I_Truck_02_covered_F",5,30,15,GRLIB_perm_tank],
	["B_UGV_01_F",5,50,5,GRLIB_perm_inf],
	["B_UGV_01_rcws_F",5,250,5,GRLIB_perm_tank]
];

heavy_vehicles = [
	["mti_armoury_vehicles_tx130_recon",15,1000,35,GRLIB_perm_tank],
	["mti_armoury_vehicles_rx_base",15,1500,35,GRLIB_perm_air],
	["mti_armoury_vehicles_tx130_super",15,3500,35,GRLIB_perm_max],
	["mti_armoury_vehicles_tx130_base",15,3000,35,GRLIB_perm_max],
	["mti_armoury_vehicles_atap_base",15,4500,30,GRLIB_perm_max],
	["mti_armoury_vehicles_atte_base",20,5000,30,GRLIB_perm_max],
	["mti_armoury_vehicles_jug_base",20,6000,30,GRLIB_perm_max]
];

air_vehicles = [
	["mti_armoury_drones_prowler_1500",0,10,0,GRLIB_perm_log],
	["mti_armoury_drones_delivery_base",0,30,0,GRLIB_perm_tank],
	["mti_armoury_drones_sentinel_base",5,1000,5,GRLIB_perm_air],
	["GX_B_MQ8B_UAV_RECON_SEATED",5,1500,10,GRLIB_perm_max],
	["GX_B_MQ8B_UAV_ARMED",5,2000,15,GRLIB_perm_max],
	["C_Plane_Civil_01_F",1,50,5,GRLIB_perm_air],
	["mti_armoury_vehicles_laatle_unarmed",1,50,15,GRLIB_perm_log],
	["mti_armoury_vehicles_laatle_gunship",1,150,15,GRLIB_perm_tank],
	["mti_armoury_vehicles_laati_mk2",10,1700,35,GRLIB_perm_air],
	["mti_armoury_vehicles_laati_mk1",10,2000,35,GRLIB_perm_tank],
	["mti_armoury_vehicles_laatc_base",10,1300,40,GRLIB_perm_air],
	["mti_armoury_vehicles_nuclass_nuclass",10,1400,40,GRLIB_perm_air],
	["TKE_Ext_Frigate_BLU",20,2500,40,GRLIB_perm_max],
	["mti_armoury_vehicles_arc170_single_seat",10,2250,30,GRLIB_perm_air],
	["mti_armoury_vehicles_z95_base",20,3000,50,GRLIB_perm_max],
	["mti_armoury_vehicles_delta_base",20,4500,50,GRLIB_perm_max],
	["mti_armoury_vehicles_bltb_y_wing",20,2000,50,GRLIB_perm_max]
];

blufor_air = [
	"mti_armoury_vehicles_laati_mk2",
	"mti_armoury_vehicles_z95_base",
	"mti_armoury_vehicles_arc170_single_seat",
	"mti_armoury_vehicles_laati_mk2"
];

static_vehicles = [
	["3AS_HeavyRepeater_Unarmoured",0,10,0,GRLIB_perm_inf],
	["3AS_HeavyRepeater_Armoured",0,10,0,GRLIB_perm_log],
	["mti_armoury_statics_bactatank_bactatank",0,20,0,GRLIB_perm_inf],
	["B_GMG_01_high_F",0,20,0,GRLIB_perm_log],
	["3AS_Keeradak_F",0,150,0,GRLIB_perm_tank],
	["B_static_AT_F",0,150,0,GRLIB_perm_tank],
	["3AS_Republic_Mortar",0,500,0,GRLIB_perm_tank],
	["B_SAM_System_01_F",10,1500,0,GRLIB_perm_air],
	["B_SAM_System_02_F",10,1500,0,GRLIB_perm_air],
	["B_AAA_System_01_F",10,1500,0,GRLIB_perm_max]
];

// *** Static Weapon with AI ***
static_vehicles_AI = [
	"B_SAM_System_01_F",
	"B_SAM_System_02_F",
	"B_AAA_System_01_F"
];

support_vehicles_west = [
	["mti_armoury_vehicles_mutt_c",5,150,5,GRLIB_perm_inf],
	["B_G_Van_01_fuel_F",5,130,40,GRLIB_perm_inf],
	["mti_armoury_vehicles_mutt_l",15,2000,50,GRLIB_perm_max]
];

//buildings_west_overide = true;
buildings_west = [
	["Land_Cargo_Tower_V1_F",0,0,0,GRLIB_perm_tank],
	["Land_Cargo_House_V1_F",0,0,0,GRLIB_perm_inf],
	["Land_Cargo_Patrol_V1_F",0,0,0,GRLIB_perm_log]
];

// Vehicle preset inventory
vehicle_preset_inventory_west = [
	["LandVehicle", [PAR_AidKit]],
	["Air", []],
	["Ship_F", []],
	["mti_armoury_vehicles_barc_base", ["mti_armoury_mag_thermal_det",PAR_AidKit,PAR_AidKit]],
	["mti_armoury_vehicles_mutt_l", ["ToolKit",PAR_AidKit]],
	//["C_Van_01_transport_F", ["B_BergenC_Base","V_CarrierRigKBT_01_Olive_F","arifle_AKM_F","30Rnd_762x39_Mag_F","30Rnd_762x39_Mag_F"]],
	[medic_truck_typename, [PAR_Medikit,PAR_AidKit,PAR_AidKit,PAR_AidKit,PAR_AidKit]]
];

// Boats
boats_west = [
	"B_Boat_Transport_01_F",
	"B_Boat_Armed_01_minigun_F"
];

blufor_squad_inf_light = [
	"mti_factions_sob_unit_CT_SL",
	"mti_factions_sob_unit_CT_Medic",
	"mti_factions_sob_unit_CT_Gren",
	"mti_factions_sob_unit_CT_MG",
	"mti_factions_sob_unit_CT",
	"mti_factions_sob_unit_CT"
];
blufor_squad_inf = [
	"mti_factions_sob_unit_CT_SL",
	"mti_factions_sob_unit_CT_Medic",
	"mti_factions_sob_unit_CT_Marksman",
	"mti_factions_sob_unit_CT_MG",
	"mti_factions_sob_unit_CT_MG",
	"mti_factions_sob_unit_CT"
];
blufor_squad_at = [
	"mti_factions_sob_unit_CT_SL",
	"mti_factions_sob_unit_CT_Medic",
	"mti_factions_sob_unit_CT_AT",
	"mti_factions_sob_unit_CT_AT",
	"mti_factions_sob_unit_CT_Demo",
	"mti_factions_sob_unit_CT"
];

blufor_squad_aa = [
	"mti_factions_sob_unit_RC_SL",
	"mti_factions_sob_unit_RC_Medic",
	"mti_factions_sob_unit_RC_Launcher",
	"mti_factions_sob_unit_RC_Launcher",
	"mti_factions_sob_unit_RC",
	"mti_factions_sob_unit_RC"
];
blufor_squad_mix = [
	"mti_factions_sob_unit_RC_SL",
	"mti_factions_sob_unit_JT_SL",
	"mti_factions_sob_unit_ARC_Medic",
	"mti_factions_sob_unit_ARC_EWS_Bowcaster",
	"mti_factions_sob_unit_RC_Launcher",
	"mti_factions_sob_unit_CT_AT",
	"mti_factions_sob_unit_CT"
];

squads = [
	[blufor_squad_inf_light,10,300,0,GRLIB_perm_max],
	[blufor_squad_inf,20,400,0,GRLIB_perm_max],
	[blufor_squad_at,25,600,0,GRLIB_perm_max],
	[blufor_squad_aa,25,600,0,GRLIB_perm_max],
	[blufor_squad_mix,25,600,0,GRLIB_perm_max]
];

// Everything the AI troups should be able to resupply from
ai_resupply_sources_west = [
  "mti_armoury_vehicles_mutt_l"
];

// Everything the AI troups should be able to healing from
ai_healing_sources_west = [
	"mti_armoury_vehicles_mutt_l"
];

vehicle_rearm_sources_west = [
	"mti_armoury_vehicles_mutt_l"
];

GRLIB_vehicle_whitelist_west = [
];

GRLIB_vehicle_blacklist_west = [
];
