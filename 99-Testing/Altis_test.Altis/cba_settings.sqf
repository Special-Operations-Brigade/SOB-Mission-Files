// 21st Auxiliary Assets
force NCA_core_broadcastHVTDeath = 0;
NCA_core_quickMarkActionEnabled = true;
NCA_core_quickMarkChannel = 1;
NCA_core_quickMarkColor = "ColorBlack";
NCA_core_quickMarkInteractColors = "['ColorBlack', 'ColorBlue', 'ColorRed', 'ColorGreen']";
NCA_core_useAIThinkOnlyLocal = false;
NCA_equipment_lowlightDefaultBrightnessSetting = 2.5;
force NCA_equipment_satelliteAntennaRadius = 5;
NCA_radios_playLrAnimation = true;
NCA_radios_playSrAnimation = true;
force NCA_vehicles_allowTextureSwitching = true;
NCA_vehicles_disableAutoVectoring = false;
NCA_vehicles_easyEjection = true;

// 3AS
force TAS_fullShieldTime = 30;
TAS_fusioncutter_deCrewSimple = true;
force TAS_fusioncutter_heavyAug = 50;
force TAS_fusioncutter_largeList = "[""3AS_MTT"",""3AS_ATT_Red"",""3AS_GAT""]";
force TAS_fusioncutter_randomFail = 10;
force TAS_fusioncutter_rateFast = 1;
force TAS_fusioncutter_rateFull = 1;
force TAS_fusioncutter_ratesplice = 1;
force TAS_fusioncutter_timeDoor = "30";
force TAS_fusioncutter_timeWreck = "180";
force TAS_jetcoolset = 1;
force TAS_jetfuelset = 1;
force TAS_jetheatset = 1;
force TAS_jetsoundvol = 0.6;
force TAS_lcLoadDist = 20;
force TAS_lcLoadSpeed = 10;
force TAS_shieldTime = 30;
force TAS_SquadShieldTime = 180;

// 3AS Shields
force TAS_DroidekaDisabledShieldTime = 0.75;
force TAS_DroidekaShieldsRegenDisabled = true;

// A3TI
A3TI_ACE_JAVELIN = false;
A3TI_ALLOW_TANK_DRIVER = false;
A3TI_ALLOW_VANILLA_TI = true;
A3TI_ENABLE_ZEUS = true;
A3TI_HD_VISION_FIGHTER = false;
A3TI_HD_VISION_LANDVEH = true;
A3TI_HD_VISION_SHIP = false;
A3TI_HD_VISION_UAV = true;
A3TI_REMOVE_FILMGRAIN_RHS = true;

// Aaren's Blast Effect
tracer_illuminate_list = "";
tracer_illuminate_sim = true;
tracer_SUB_sim = false;

// ACE Advanced Ballistics
force ace_advanced_ballistics_ammoTemperatureEnabled = false;
force ace_advanced_ballistics_barrelLengthInfluenceEnabled = false;
force ace_advanced_ballistics_bulletTraceEnabled = true;
force ace_advanced_ballistics_enabled = false;
force ace_advanced_ballistics_muzzleVelocityVariationEnabled = false;
force ace_advanced_ballistics_simulationInterval = 0.05;

// ACE Advanced Fatigue
ace_advanced_fatigue_enabled = true;
ace_advanced_fatigue_enableStaminaBar = true;
ace_advanced_fatigue_fadeStaminaBar = true;
ace_advanced_fatigue_loadFactor = 1;
ace_advanced_fatigue_performanceFactor = 1;
ace_advanced_fatigue_recoveryFactor = 1;
ace_advanced_fatigue_terrainGradientFactor = 1;

// ACE Advanced Throwing
force ace_advanced_throwing_enabled = true;
force ace_advanced_throwing_enablePickUp = true;
force ace_advanced_throwing_enablePickUpAttached = true;
ace_advanced_throwing_enableTempWindInfo = true;
force ace_advanced_throwing_showMouseControls = true;
force ace_advanced_throwing_showThrowArc = true;

// ACE Advanced Vehicle Damage
force ace_vehicle_damage_enableCarDamage = false;
force ace_vehicle_damage_enabled = false;

// ACE AI
force ace_ai_assignNVG = true;

// ACE Arsenal
force ace_arsenal_allowDefaultLoadouts = true;
force ace_arsenal_allowSharedLoadouts = true;
force ace_arsenal_camInverted = false;
ace_arsenal_defaultToFavorites = false;
force ace_arsenal_enableIdentityTabs = false;
ace_arsenal_enableModIcons = 1;
ace_arsenal_EnableRPTLog = false;
ace_arsenal_favoritesColor = [0.0293119,0.576074,0.801543];
force ace_arsenal_fontHeight = 4.5;
force ace_arsenal_loadoutsSaveFace = false;
force ace_arsenal_loadoutsSaveInsignia = true;
force ace_arsenal_loadoutsSaveVoice = false;
ace_arsenal_showUnavailableItems = 0;

// ACE Artillery
force ace_artillerytables_advancedCorrections = false;
force ace_artillerytables_disableArtilleryComputer = false;
force ace_mk6mortar_airResistanceEnabled = false;
force ace_mk6mortar_allowCompass = true;
force ace_mk6mortar_allowComputerRangefinder = true;
force ace_mk6mortar_useAmmoHandling = false;

// ACE Captives
force ace_captives_allowHandcuffOwnSide = true;
force ace_captives_allowSurrender = true;
force ace_captives_requireSurrender = 1;
force ace_captives_requireSurrenderAi = false;

// ACE Casings
force ace_casings_enabled = false;
force ace_casings_maxCasings = 250;

// ACE Common
force ace_common_allowFadeMusic = true;
force ace_common_checkExtensions = false;
force ace_common_checkPBOsAction = 0;
force ace_common_checkPBOsCheckAll = true;
force ace_common_checkPBOsWhitelist = "[[""Core"",""3AS_OST"",""A3Data"",""A3_Functions_F"",""A3_Functions_F_EPA"",""A3_Functions_F_EPC"",""babe_EM_UI"",""brg_africa"",""CUP_A10_Data"",""CUP_Air2_Data"",""CUP_Air3_Data"",""CUP_Air_Data"",""CUP_Air_d_baf_Data"",""CUP_Air_e_Data"",""CUP_Air_pmc_Data"",""CUP_CA_animals2"",""CA_animals2"",""CUP_Buildings2_Data"",""CUP_Buildings2_Ind_Cementworks_Data"",""CUP_Buildings_Data"",""CUP_Ca_acr_Data"",""CUP_Ca_e_Data"",""CUP_Ca_pmc_Data"",""CUP_Characters2_Data"",""CUP_Cti_buildings_Data"",""CUP_CA_Data"",""CUP_Data_baf_Data"",""CUP_dbe1_data"",""CUP_Hotfix_Data"",""CUP_L39_Data"",""CUP_CALanguage"",""CALanguage"",""CUP_CALanguage_ACR"",""CALanguage_ACR"",""CUP_CALanguage_missions"",""CALanguage_missions"",""CUP_CALanguage_missions_e"",""CALanguage_missions_e"",""CUP_Misc3_Data"",""CUP_Misc_acr_Data"",""CUP_Misc_e_Data"",""CUP_CAMisc_rtm2"",""CUP_CA_MPA"",""CA_MPA"",""CUP_CA_Plants2_Clutter"",""CA_Plants2_Clutter"",""CUP_CA_Plants_E_Clutter"",""CA_Plants_E_Clutter"",""CUP_CARoads2"",""CARoads2"",""CUP_CARoads2Dam"",""CARoads2Dam"",""CUP_CARoads_E"",""CARoads_E"",""CUP_CARoads_PMC"",""CARoads_PMC"",""CUP_CARoads_rtm2"",""CUP_CARocks2"",""CARocks2"",""CUP_CARocks"",""CARocks"",""CUP_CARocks_E"",""CARocks_E"",""CUP_CASigns"",""CASigns"",""CUP_Sounds_Data"",""CUP_Sounds_Config"",""CASounds"",""CUP_Sounds_e_Data"",""CUP_Structures_Data"",""CUP_jbad_sounds_doors"",""cup_jbad_light_switches"",""CUP_jbad_sounds_misc"",""CUP_Structures_e_Data"",""CUP_Structures_pmc_Data"",""CUP_Tracked2_Data"",""CUP_Tracked_Data"",""CUP_Tracked_e_Data"",""CUP_CAFonts"",""CAFonts"",""CUP_Water2_Data"",""CUP_Water_Data"",""CUP_Weapons2_Data"",""CUP_Weapons_Data"",""CUP_Weapons_e_Data"",""CUP_Weapons_pmc_Data"",""CUP_Wheeled2_Data"",""CUP_Wheeled_Data"",""CUP_Wheeled_e_Data"",""CUP_AiA_compat"",""AiA_A1AlwaysDummy"",""AiA_Afghan_Config"",""AiA_Afghan_Data"",""AiA_BaseConfig_F"",""AiA_Bohemia_Config"",""AiA_Bohemia_Data"",""AiA_Bootcamp_acr_Config"",""AiA_Bootcamp_acr_Data"",""AiA_Buildings_Config"",""AiA_Buildings_Data"",""AiA_Buildings2_Config"",""AiA_Buildings2_Data"",""AiA_Buildings2_Ind_Cementworks_Config"",""AiA_Buildings2_Ind_Cementworks_Data"",""AiA_Ca_acr_Config"",""AiA_Ca_acr_Data"",""AiA_CA_Config"",""AiA_CA_Config_Data_ParticleEffects"",""AiA_CA_Data"",""AiA_Ca_e_Config"",""AiA_Ca_e_Data"",""AiA_Ca_pmc_Config"",""AiA_Ca_pmc_Data"",""AiA_CBA_A2_xeh_Dummy"",""AiA_CBA_OA_xeh_Dummy"",""AiA_cba_xeh_a2_Dummy"",""AiA_cba_xeh_oa_Dummy"",""AiA_Chernarus_Config"",""AiA_Chernarus_Data"",""AiA_Chernarus_Summer_Config"",""AiA_Chernarus_Summer_Data"",""AiA_Core"",""AiA_Cti_buildings_Config"",""AiA_Cti_buildings_Data"",""AiA_Data_baf_Config"",""AiA_Data_baf_Data"",""AiA_Desert_Config"",""AiA_Desert_Data"",""AiA_Desert_e_Config"",""AiA_Desert_e_Data"",""AiA_Desert2_Config"",""AiA_Desert2_Data"",""AiA_Hotfix_Config"",""AiA_Hotfix_Data"",""AiA_Language_acr_Config"",""AiA_Language_acr_Data"",""AiA_Language_baf_Config"",""AiA_Language_baf_Data"",""AiA_Language_e_Config"",""AiA_Language_e_Data"",""AiA_Language_pmc_Config"",""AiA_Language_pmc_Data"",""AiA_Languagemissions_acr_Config"",""AiA_Languagemissions_acr_Data"",""AiA_Languagemissions_baf_Config"",""AiA_Languagemissions_baf_Data"",""AiA_Languagemissions_pmc_Config"",""AiA_Languagemissions_pmc_Data"",""AiA_Misc_acr_Config"",""AiA_Misc_acr_Data"",""AiA_Misc_Config"",""AiA_Misc_Data"",""AiA_Misc_e_Config"",""AiA_Misc_e_Data"",""AiA_Misc2_Config"",""AiA_Misc2_Data"",""AiA_Misc3_Config"",""AiA_Misc3_Data"",""AiA_Models_DBE1_Config"",""AiA_Models_DBE1_Data"",""AiA_Plants_Config"",""AiA_Plants_Data"",""AiA_Plants_e_Config"",""AiA_Plants_e_Data"",""AiA_Plants_e2_Config"",""AiA_Plants_e2_Data"",""AiA_Plants_pmc_Config"",""AiA_Plants_pmc_Data"",""AiA_Plants2_Bush_Config"",""AiA_Plants2_Bush_Data"",""AiA_Plants2_Clutter_Config"",""AiA_Plants2_Clutter_Data"",""AiA_Plants2_Misc_Config"",""AiA_Plants2_Misc_Data"",""AiA_Plants2_Plant_Config"",""AiA_Plants2_Plant_Data"",""AiA_Plants2_Tree_Config"",""AiA_Plants2_Tree_Data"",""AiA_Provinggrounds_pmc_Config"",""AiA_Provinggrounds_pmc_Data"",""AiA_Roads_Config"",""AiA_Roads_Data"",""AiA_Roads_e_Config"",""AiA_Roads_e_Data"",""AiA_Roads_pmc_Config"",""AiA_Roads_pmc_Data"",""AiA_Roads2_Config"",""AiA_Roads2_Data"",""AiA_Rocks_Config"",""AiA_Rocks_Data"",""AiA_Rocks_e_Config"",""AiA_Rocks_e_Data"",""AiA_Rocks2_Config"",""AiA_Rocks2_Data"",""AiA_Sara_Config"",""AiA_Sara_Data"",""AiA_Sara_dbe1_Config"",""AiA_Sara_dbe1_Data"",""AiA_Saralite_Config"",""AiA_Saralite_Data"",""AiA_Shapur_baf_Config"",""AiA_Shapur_baf_Data"",""AiA_Signs_Config"",""AiA_Signs_Data"",""AiA_Signs_e_Config"",""AiA_Signs_e_Data"",""AiA_Signs2_Config"",""AiA_Signs2_Data"",""AiA_Sounds_Config"",""AiA_Sounds_Data"",""AiA_StandaloneTerrainPack_Core"",""AiA_StandaloneTerrains_Core"",""AiA_Structures_Config"",""AiA_Structures_Data"",""AiA_Structures_e_Config"",""AiA_Structures_e_Data"",""AiA_Structures_pmc_Config"",""AiA_Structures_pmc_Data"",""AiA_Takistan_Config"",""AiA_Takistan_Data"",""AiA_Ui_Config"",""AiA_Ui_Data"",""AiA_Utes_Config"",""AiA_Utes_Data"",""AiA_Water_Config"",""AiA_Water_Data"",""AiA_Water2_Config"",""AiA_Water2_Data"",""AiA_Weapons_Config"",""AiA_Weapons_Data"",""AiA_Weapons_e_Config"",""AiA_Weapons_e_Data"",""AiA_Weapons_pmc_Config"",""AiA_Weapons_pmc_Data"",""AiA_Weapons2_Config"",""AiA_Weapons2_Data"",""AiA_Wheeled_Config"",""AiA_Wheeled_Data"",""AiA_Wheeled_e_Config"",""AiA_Wheeled_e_Data"",""AiA_Wheeled2_Config"",""AiA_Wheeled2_Data"",""AiA_Worlds"",""AiA_Worlds_Ambient"",""AiA_Worlds_Author"",""AiA_Worlds_Clutter"",""AiA_Worlds_ClutterDist"",""AiA_Worlds_Delete"",""AiA_Worlds_DisableInfiniteTerrain"",""AiA_Worlds_DustEffects"",""AiA_Worlds_EnvSounds"",""AiA_Worlds_FullDetailDist"",""AiA_Worlds_Grid"",""AiA_Worlds_Intros"",""AiA_Worlds_Lighting"",""AiA_Worlds_Lighting_Chernarus"",""AiA_Worlds_Lighting_Desert"",""AiA_Worlds_MapSize"",""AiA_Worlds_MidDetailTexture"",""AiA_Worlds_NoDetailDist"",""AiA_Worlds_Seabed"",""AiA_Worlds_SkyTexture"",""AiA_Worlds_StreetLamp"",""AiA_Worlds_Surfaces"",""AiA_Worlds_Water"",""AiA_Zargabad_Config"",""AiA_Zargabad_Data"",""CUP_CWA"",""CUP_CWA_Buildings"",""CUP_CWA_Noe_Roads"",""CUP_CWA_Plants"",""CUP_CWA_Roads"",""CUP_CWA_Rocks"",""CUP_CWA_Signs2"",""CUP_Animations_Data"",""CUP_Animations_Config"",""CUP_StandaloneTerrains_Dummy"",""CA_ACR"",""CA_Animals2_Anim_Config"",""CA_Anims_Char"",""CA_Anims_E_Wmn"",""CA_E"",""CA_PMC"",""CAAir"",""CACharacters"",""CATracked"",""CAWater"",""CAWater2"",""CAWater2_seafox"",""CAWeapons"",""CAWeapons_Warfare_weapons"",""CAWheeled"",""CAWheeled_E"",""CAWheeled2"",""6G30_DBE1"",""Arma2_Ka52"",""BI_SRRS"",""CA_AH64D"",""CA_AIR_E_MQ9PredatorB"",""CA_AIR_E_Su25"",""CA_AIR2_Su25"",""CA_Animals_E"",""CA_Animals2_Chicken"",""CA_Animals2_Cow"",""CA_Animals2_Dogs"",""CA_Animals2_Dogs_Fin"",""CA_Animals2_Dogs_Pastor"",""CA_Animals2_Goat"",""CA_Animals2_Rabbit"",""CA_Animals2_Sheep"",""CA_Animals2_WildBoar"",""CA_Anims"",""CA_Anims_E"",""CA_Anims_E_Sdr"",""CA_Anims_Sdr"",""CA_Anims_Wmn"",""CA_CommunityConfigurationProject_E"",""CA_CruiseMissile"",""CA_Dubbing"",""CA_Dubbing_Baf"",""CA_Dubbing_Counterattack"",""CA_Dubbing_E"",""CA_Dubbing_PMC"",""CA_DubbingRadio_E"",""CA_DubbingRadio_PMC"",""CA_E_ParticleEffects"",""CA_Editor"",""CA_HC_Sounds"",""CA_Heads"",""CA_HighCommand"",""CA_L39"",""CA_Missions"",""CA_Missions_AlternativeInjurySimulation"",""CA_Missions_AmbientCombat"",""CA_Missions_Armory1"",""CA_Missions_Armory2"",""CA_Missions_BAF"",""CA_Missions_BAF_2"",""CA_Missions_BAF_Templates_SecOps"",""CA_Missions_BattlefieldClearance"",""CA_Missions_E"",""CA_Missions_E_Armory2"",""CA_Missions_E_SecOps"",""CA_Missions_E_Templates_SecOps"",""CA_Missions_FirstAidSystem"",""CA_Missions_GarbageCollector"",""CA_Missions_PMC"",""CA_Missions_SecOps"",""CA_Missions_Templates_SecOps"",""CA_Missions2_PMC"",""CA_Modules"",""CA_Modules_Alice"",""CA_Modules_Animals"",""CA_Modules_ARTY"",""CA_Modules_clouds"",""CA_Modules_Coin"",""CA_Modules_DynO"",""CA_Modules_E"",""CA_Modules_E_DynO"",""CA_Modules_E_Jukebox"",""CA_Modules_E_OO"",""CA_Modules_E_UAV"",""CA_Modules_E_UAV_Heli"",""CA_Modules_E_Weather"",""CA_Modules_Functions"",""CA_Modules_Marta"",""CA_Modules_PMC"",""CA_Modules_PMC_SimpleFIrstAid"",""CA_Modules_Silvie"",""CA_Modules_StratLayer"",""CA_Modules_UAV"",""CA_Modules_ZoRA"",""CA_MPA_Challenges"",""CA_MPA_Core"",""CA_MPA_MP"",""CA_MPA_Scenarios"",""CA_Sounds_Baf"",""CA_SoundsMissions_E"",""CA_Support"",""CAA10"",""CAAir_BAF"",""CAAir_BAF_CH_47F"",""CAAir_E"",""CAAir_E_A10"",""CAAir_E_AH64D"",""CAAir_E_AH6J"",""CAAir_E_An2"",""CAAir_E_C130J"",""CAAir_E_CH_47F"",""CAAir_E_Halo"",""CAAir_E_Mi24"",""CAAir_E_MI8"",""CAAir_E_UH1H_EP1"",""CAAir_E_UH60M"",""CAAir_PMC"",""CAAir_PMC_KA137"",""CAAir_PMC_KA60"",""CAAir2"",""CAAir2_C130J"",""CAAir2_ChukarTarget"",""CAAir2_F35B"",""CAAir2_MQ9PredatorB"",""CAAir2_MV22"",""CAAir2_Pchela1T"",""CAAir2_UH1Y"",""CAAir3"",""CAAir3_Su34"",""CAAnimals"",""CACharacters_BAF"",""CACharacters_BAF_Head"",""CACharacters_E"",""CACharacters_E_Head"",""CACharacters_PMC"",""CACharacters_PMC_Head"",""CACharacters_W_BAF"",""CACharacters2"",""CAMisc_fix"",""CAMisc_fix_A2FREE"",""CAMisc_fix_air"",""CAMisc_fix_Ch2"",""CAMisc_fix_Str"",""CAMisc_fix_Weap"",""CAMusic"",""CAMusic_E"",""CAMusic_PMC"",""CASounds_E"",""CASounds_Missions"",""CATracked_BAF"",""CATracked_E"",""CATracked_E_BMP2"",""CATracked_E_M1_Abrams"",""CATracked_E_M113"",""CATracked_E_M2A2_Bradley"",""CATracked_E_T34"",""CATracked_E_T55"",""CATracked_E_T72"",""CATracked_E_us_m270mlrs"",""CATracked_E_ZSU"",""CATracked_W_BAF"",""CATracked2"",""CATracked2_2S6M_Tunguska"",""CATracked2_AAV"",""CATracked2_BMP3"",""CATracked2_T34"",""CATracked2_T90"",""CATracked2_us_m270mlrs"",""CAWater2_Destroyer"",""CAWater2_fishing_boat"",""CAWater2_Fregata"",""CAWater2_smallboat_1"",""CAWeapons_2b14_82mm_Mortar"",""CAWeapons_AK"",""CAWeapons_AmmoBoxes"",""CAWeapons_BAF"",""CAWeapons_bizon"",""CAWeapons_Colt1911"",""CAWeapons_DMR"",""CAWeapons_E"",""CAWeapons_E_AGS"",""CAWeapons_E_AK"",""CAWeapons_E_AmmoBoxes"",""CAWeapons_E_Colt1911"",""CAWeapons_E_D30"",""CAWeapons_E_DSHKM"",""CAWeapons_E_FIM92_static"",""CAWeapons_E_fnfal"",""CAWeapons_E_G36"",""CAWeapons_E_GrenadeLauncher"",""CAWeapons_E_Igla"",""CAWeapons_E_Javelin"",""CAWeapons_E_KORD"",""CAWeapons_E_ksvk"",""CAWeapons_E_LeeEnfield"",""CAweapons_E_m107"",""CAWeapons_E_M110"",""CAWeapons_E_M119_Howitzer"",""CAWeapons_E_M136"",""CAWeapons_E_M14"",""CAWeapons_E_M16"",""CAWeapons_E_M240"",""CAWeapons_E_M252_81mm_Mortar"",""CAWeapons_E_M2StaticMG"",""CAWeapons_E_M47"",""CAWeapons_E_M9"",""CAWeapons_E_MAAWS"",""CAWeapons_E_Makarov"",""CAWeapons_E_Metis"",""CAWeapons_E_Mk19_MiniTriPod"",""CAWeapons_E_PK"",""CAWeapons_E_Podnos_2b14_82mm"",""CAWeapons_E_RPG18"",""CAWeapons_E_RPG7"",""CAWeapons_E_scar"",""CAWeapons_E_Searchlight"",""CAWeapons_E_SPG9"",""CAWeapons_E_STATIC"",""CAWeapons_E_Stinger"",""CAWeapons_E_Strela"",""CAWeapons_E_TOW"",""CAWeapons_E_ZU23"",""CAWeapons_Kord"",""CAweapons_ksvk"",""CAWeapons_M1014"",""CAweapons_m107"",""CAWeapons_M252_81mm_Mortar"",""CAWeapons_Metis_AT_13"",""CAWeapons_PMC"",""CAWeapons_PMC_AA_12"",""CAWeapons_PMC_AS50"",""CAWeapons_PMC_XM8"",""CAWeapons_Saiga12K"",""CAWeapons_SPG9"",""CAWeapons_VSS_vintorez"",""CAWeapons_ZU23"",""CAWeapons2"",""CAWeapons2_HuntingRifle"",""CAWeapons2_RPG18"",""CAWeapons2_SMAW"",""CAWheeled_D_BAF"",""CAWheeled_E_ATV"",""CAWheeled_E_BRDM2"",""CAWheeled_E_BTR40"",""CAWheeled_E_BTR60"",""CAWheeled_E_HMMWV"",""CAWheeled_E_Ikarus"",""CAWheeled_E_LADA"",""CAWheeled_E_LandRover"",""CAWheeled_E_M1030"",""CAWheeled_E_MTVR"",""CAWheeled_E_Offroad"",""CAWheeled_E_Old_bike"",""CAWheeled_E_Old_moto"",""CAWheeled_E_Pickup"",""CAWheeled_E_s1203"",""CAWheeled_E_SCUD"",""CAWheeled_E_stryker"",""CAWheeled_E_SUV"",""CAWheeled_E_TT650"",""CAWheeled_E_UAZ"",""CAWheeled_E_Ural"",""CAWheeled_E_V3S"",""CAWheeled_E_Volha"",""CAWheeled_Offroad"",""CAWheeled_Pickup"",""CAWheeled_PMC"",""CAWheeled_PMC_ArmoredSUV"",""CAWheeled_W_BAF"",""CAWheeled2_BTR90"",""CAWheeled2_GAZ39371"",""CAWheeled2_HMMWV_Ambulance"",""CAWheeled2_HMMWV_BASE"",""CAWheeled2_Ikarus"",""CAWheeled2_Kamaz"",""CAWheeled2_LADA"",""CAWheeled2_LAV25"",""CAWheeled2_M1114_Armored"",""CAWheeled2_M998A2_Avenger"",""CAWheeled2_MMT"",""CAWheeled2_MTVR"",""CAWheeled2_TowingTractor"",""CAWheeled2_V3S"",""CAWheeled2_VWGolf"",""CAWheeled3"",""CAWheeled3_M1030"",""CAWheeled3_TT650"",""Datsun_armed_DBE1"",""DBE1"",""DBE1_UI"",""DC3_DBE1"",""HALO_Test"",""Hilux_armed_DBE1"",""Warfare2"",""Warfare2_E"",""Warfare2Vehicles"",""CUP_Terrains_Plants"",""CUP_Models_DBE1_Data"",""CUP_Anims_DBE1"",""Anims_DBE1"",""CUP_HMMWV_DBE1"",""HMMWV_DBE1"",""CUP_Mercenary_DBE1"",""Mercenary_DBE1"",""CUP_Music_DBE1"",""Music_DBE1"",""CUP_NPCs_DBE1"",""NPCs_DBE1"",""CUP_ploty_DBE1"",""ploty_DBE1"",""CUP_Prisoners_DBE1"",""Prisoners_DBE1"",""CUP_Roads_DBE1"",""Roads_DBE1"",""CUP_UH60Desert"",""UH60Desert"",""go_rocks_n"",""structures_got"",""go_structures_f_commercial"",""go_structures_f_dominants"",""go_structures_f_mil"",""go_structures_f_misc"",""go_structures_ip"",""go_structures_ip_civillian"",""go_structures_ip_civillian_houses"",""go_structures_ip_data"",""go_structures_ip_industrial"",""go_structures_ip_misc"",""go_structures_n"",""go_structures_n_infrastructure"",""go_vegetation_f"",""go_vegetation_winter"",""hotze_mske_data"",""hotze_mske_layers"",""CUP_TKOH_Dummy"",""HSim_Data_H"",""HSim_Data_H_data_ParticleEffects"",""HSim_Data_H_data_ParticleEffects_rotor_blades"",""HSim_Dubbing_H"",""HSim_DubbingRadio_H"",""HSim_Editor_H"",""Intro_Island_H"",""HSim_Missions_H"",""HSim_ModulesCore_H"",""HSim_ModulesCore_H_AmbientCombat"",""HSim_ModulesCore_H_DynO"",""HSim_ModulesCore_H_Functions"",""HSim_ModulesCore_H_GarbageCollector"",""HSim_ModulesCore_H_Functions_E"",""HSim_ModulesCore_H_OO"",""HSim_ModulesCore_H_Functions_PMC"",""HSim_Music_H"",""HSim_Sounds_H"",""South_Asia_H"",""HSim_UIFonts_H"",""United_States_H"",""HSim_Animals_H"",""HSim_Animals_H_Anim_Config"",""HSim_Animals_H_Dog"",""HSim_Characters_H_Faces"",""HSim_Characters_H_Heads"",""HSim_Modules_H"",""HSim_UI_H"",""HSim_Weapons_H"",""HSim_Weapons_H_AK47"",""HSim_Weapons_H_DShKM"",""HSim_Weapons_H_Glock"",""HSim_Weapons_H_HandItems"",""HSim_Weapons_H_M16"",""HSim_Weapons_US_H"",""HSim_Characters_H"",""HSim_Characters_US_H"",""HSim_Missions_H_FreeFlight"",""HSim_Functions_Base_H"",""HSim_Water_H"",""HSim_Water_H_Civ_FishingBoat_Large"",""HSim_Water_H_Civ_Jetboat"",""HSim_Water_H_Civ_Yacht"",""HSim_Water_H_Container_Ship"",""HSim_Water_H_Cruise_Ship"",""HSim_Water_H_Destroyer"",""HSim_Water_H_Fishing_Boat"",""HSim_Water_H_Fregata"",""HSim_Water_H_LHD"",""HSim_Water_H_Oil_tanker"",""HSim_Water_H_Rubber_Boat"",""HSim_Water_H_Whales"",""HSim_Water_H_Whales_GreyWhale"",""HSim_Water_H_Whales_Whale1"",""HSim_Weapons_H_IGLA"",""HSim_Weapons_US_H_M2"",""HSim_Wheeled_H"",""HSim_Wheeled_H_Ambulance"",""HSim_Wheeled_H_FireTruck"",""HSim_Wheeled_H_Hatchback"",""HSim_Wheeled_H_Military_Offroad_LR"",""HSim_Wheeled_H_Military_Pickup_DSHKM"",""HSim_Wheeled_H_Offroad"",""HSim_Wheeled_H_Police_Car"",""HSim_Wheeled_H_TowingTractor"",""HSim_Wheeled_H_Tractor"",""HSim_Wheeled_H_Trailers"",""HSim_Wheeled_H_Truck_Light_Transport"",""HSim_Wheeled_H_Ural"",""HSim_Wheeled_H_Van_Passenger"",""HSim_Wheeled_US_H"",""HSim_Wheeled_US_H_Military_Offroad"",""HSim_Wheeled_US_H_Military_Truck"",""HSim_Wheeled_US_H_Pickup_01"",""HSim_Wheeled_US_H_Pickup_02"",""HSim_Wheeled_US_H_SUV"",""HSim_Wheeled_US_H_Truck_US_Type"",""HSim_Air_H"",""HSim_Air_H_Aircraft_A"",""HSim_Air_H_Aircraft_C"",""HSim_Air_H_Aircraft_D"",""HSim_Air_H_Aircraft_E_H"",""HSim_Air_H_Airliner_A"",""HSim_Air_H_Airliner_B"",""HSim_Air_H_Parachute"",""HSim_Air_US_H"",""HSim_Air_US_H_Helicopters_Heavy"",""HSim_Air_US_H_Helicopters_Light"",""HSim_Air_US_H_Helicopters_Medium"",""HSim_Misc_H"",""HSim_Misc_H_Antena"",""HSim_Misc_H_Barels"",""HSim_Misc_H_Bleacher"",""HSim_Misc_H_BoardsPack"",""HSim_Misc_H_CncBlock"",""HSim_Misc_H_Doghouse"",""HSim_Misc_H_Engine_Crane"",""HSim_Misc_H_Fence"",""HSim_Misc_H_Fire_Extinguisher"",""HSim_Misc_H_Fire_Suppression"",""HSim_Misc_H_First_Aid"",""HSim_Misc_H_Flagpole"",""HSim_Misc_H_Folding_Ladder"",""HSim_Misc_H_FuelCan"",""HSim_Misc_H_Heliport_Furniture"",""HSim_Misc_H_Helicopter_Parts"",""HSim_Misc_H_Helipads"",""HSim_Misc_H_Heliport_Objects"",""HSim_Misc_H_Helpers"",""HSim_Misc_H_Info_Board"",""HSim_Misc_H_Infostands"",""HSim_Misc_H_Inspection_Visuals"",""HSim_Misc_H_Interior"",""HSim_Misc_H_Loudspeakers"",""HSim_Misc_H_Market"",""HSim_Misc_H_Office_Objects"",""HSim_Misc_H_Perimeter_Ligh"",""HSim_Misc_H_Pike"",""HSim_Misc_H_Platform_Cart"",""HSim_Misc_H_Portable_Generator"",""HSim_Misc_H_Props"",""HSim_Misc_H_SawHorse"",""HSim_Misc_H_Shooting_Range"",""HSim_Misc_H_Signs"",""HSim_Misc_H_Sink"",""HSim_Misc_H_Targets"",""HSim_Misc_H_Tent"",""HSim_Misc_H_Toilet"",""HSim_Misc_H_Tools"",""HSim_Misc_H_Tools_Racking"",""HSim_Misc_H_Trash"",""HSim_Misc_H_Weather_Station"",""HSim_Misc_H_Weld_Gastank"",""HSim_Misc_H_Wheel_Chocks"",""HSim_Misc_H_Wheeled_Scaffolding"",""HSim_Misc_H_wheeled_tool_cart"",""HSim_Misc_H_Wheeled_Whiteboard"",""HSim_Misc_H_Winch"",""HSim_Misc_H_Windsock"",""HSim_Misc_H_Workbench"",""HSim_Misc_H_Wrecks"",""HSim_Structures_H"",""HSim_Structures_H_Airport_Papi"",""HSim_Structures_H_Harbour"",""HSim_Structures_H_Heliports_Heliport_Big"",""HSim_Structures_H_Heliports_Heliport_Small"",""HSim_Structures_H_Industrial_A_CraneCon"",""HSim_Structures_H_Industrial_Rooftop_Objects"",""HSim_Structures_US_H"",""HSim_Structures_US_H_Bld_US"",""HSim_Structures_US_H_Landmarks_Space_Needle"",""HSim_Tracked_H"",""HSim_Tracked_H_BMP2"",""HSim_Tracked_US_H"",""HSim_Tracked_US_H_M1A2"",""HSim_Tracked_US_H_MLRS"",""HSim_Data_H_EditorGroups"",""HSim_Anims_H"",""HSim_Anims_H_config_sdr"",""HSim_Anims_H_config_wmn"",""CUP_Hsim_Language_H"",""Hsim_Language_H"",""CUP_Hsim_Language_missions_H"",""Hsim_Language_missions_H"",""jbad_Defines"",""jbad_CfgEditorCat"",""jbad_CfgVehicleClasses"",""Jbad_Vehicle_controls"",""jbad_misc"",""Jbad_Misc_Cases"",""Jbad_Misc_Chairs"",""Jbad_Misc_Decorations"",""Jbad_misc_generalstore"",""Jbad_Misc_Signs"",""Jbad_Misc_Tables"",""Jbad_doors_sounds"",""Jbad_fountain_sounds"",""Jbad_light_switches_sounds"",""Jbad_Sounds_market"",""Jbad_Sounds_misc"",""Jbad_Oil_Pump_sounds"",""Jbad_Sounds_prayer"",""Jbad_Sounds_waterpump"",""Jbad_Sounds_well_lid"",""jbad_Structures"",""jbad_bridges"",""Jbad_Ind"",""jbad_OPXmisc2"",""jbad_walls"",""Jbad_Vehicles"",""kka3_gestures"",""kka3_gestures_ace"",""kka3_TFAR_Animations"",""lsb_data"",""lsb_functions"",""lsb_sounds"",""lsb_structures_house_garage"",""map_lythium_scenes"",""mbg_african_buildings"",""Sashka_Russian"",""J3FF_MoreAircraftDisplaysElement"",""MovingStacksRework"",""OPTRE_MJOLNIR_data_anims"",""OPTRE_MJOLNIR_data_anims_data_F"",""OPTRE_MJOLNIR_data_anims_OPTRE_anims"",""OPTRE_Suit_Scripts"",""RSPN_Assets"",""Spike"",""Survival_Shields"",""lambs_suppression"",""TKE_Dress"",""vts_weaponresting"",""SW_Items"",""WebKnight_StarWars_Sound"",""aceax_main"",""TFAR_IntercomDummy"",""A3_Data_F"",""A3_Data_F_Hook"",""A3_Data_F_ParticleEffects"",""A3_Dubbing_F"",""A3_Dubbing_F_Beta"",""A3_Dubbing_F_Gamma"",""A3_Dubbing_Radio_F"",""A3_Dubbing_Radio_F_Data_ENG"",""A3_Dubbing_Radio_F_Data_ENGB"",""A3_Dubbing_Radio_F_Data_GRE"",""A3_Dubbing_Radio_F_Data_PER"",""A3_Dubbing_Radio_F_Data_VR"",""A3_Editor_F"",""A3_EditorPreviews_F"",""A3_Functions_F_Curator"",""A3_Language_F"",""A3_Language_F_Beta"",""A3_Language_F_Decade"",""A3_Language_F_Gamma"",""A3_LanguageMissions_F"",""A3_LanguageMissions_F_Beta"",""A3_LanguageMissions_F_Gamma"",""A3_Misc_F"",""A3_Misc_F_Helpers"",""A3_Modules_F"",""A3_Modules_F_Data"",""A3_Modules_F_DynO"",""A3_Modules_F_Effects"",""A3_Modules_F_Events"",""A3_Modules_F_GroupModifiers"",""A3_Modules_F_Hc"",""A3_Modules_F_Intel"",""A3_Modules_F_LiveFeed"",""A3_Modules_F_Marta"",""A3_Modules_F_Misc"",""A3_Modules_F_Multiplayer"",""A3_Modules_F_ObjectModifiers"",""A3_Modules_F_Sites"",""A3_Modules_F_Skirmish"",""A3_Modules_F_StrategicMap"",""A3_Modules_F_Supports"",""A3_Modules_F_Uav"",""A3_Modules_F_Beta"",""A3_Modules_F_Beta_Data"",""A3_Modules_F_Beta_FiringDrills"",""A3_Modules_F_EPB"",""A3_Modules_F_EPB_Misc"",""A3_Music_F"",""A3_Music_F_Music"",""A3_Music_F_EPA"",""A3_Music_F_EPA_Music"",""A3_Music_F_EPB"",""A3_Music_F_EPB_Music"",""A3_Music_F_EPC"",""A3_Music_F_EPC_Music"",""A3_Plants_F"",""A3_Roads_F"",""A3_Rocks_F"",""A3_Rocks_F_Blunt"",""A3_Rocks_F_Sharp"",""A3_Rocks_F_Water"",""A3_Structures_F"",""A3_Structures_F_Bridges"",""A3_Structures_F_Civ"",""A3_Structures_F_Civ_Accessories"",""A3_Structures_F_Civ_Ancient"",""A3_Structures_F_Civ_BellTowers"",""A3_Structures_F_Civ_Calvaries"",""A3_Structures_F_Civ_Camping"",""A3_Structures_F_Civ_Chapels"",""A3_Structures_F_Civ_Constructions"",""A3_Structures_F_Civ_Dead"",""A3_Structures_F_Civ_Garbage"",""A3_Structures_F_Civ_Graffiti"",""A3_Structures_F_Civ_InfoBoards"",""A3_Structures_F_Civ_Kiosks"",""A3_Structures_F_Civ_Lamps"",""A3_Structures_F_Civ_Market"",""A3_Structures_F_Civ_Offices"",""A3_Structures_F_Civ_Pavements"",""A3_Structures_F_Civ_PlayGround"",""A3_Structures_F_Civ_SportsGrounds"",""A3_Structures_F_Civ_Statues"",""A3_Structures_F_Civ_Tourism"",""A3_Structures_F_Data"",""A3_Structures_F_Dominants"",""A3_Structures_F_Dominants_Amphitheater"",""A3_Structures_F_Dominants_Castle"",""A3_Structures_F_Dominants_Church"",""A3_Structures_F_Dominants_Hospital"",""A3_Structures_F_Dominants_Lighthouse"",""A3_Structures_F_Dominants_WIP"",""A3_Structures_F_Furniture"",""A3_Structures_F_Households"",""A3_Structures_F_Households_Addons"",""A3_Structures_F_Households_House_Big01"",""A3_Structures_F_Households_House_Big02"",""A3_Structures_F_Households_House_Shop01"",""A3_Structures_F_Households_House_Shop02"",""A3_Structures_F_Households_House_Small01"",""A3_Structures_F_Households_House_Small02"",""A3_Structures_F_Households_House_Small03"",""A3_Structures_F_Households_Slum"",""A3_Structures_F_Households_Stone_Big"",""A3_Structures_F_Households_Stone_Shed"",""A3_Structures_F_Households_Stone_Small"",""A3_Structures_F_Households_WIP"",""A3_Structures_F_Ind"",""A3_Structures_F_Ind_AirPort"",""A3_Structures_F_Ind_Cargo"",""A3_Structures_F_Ind_CarService"",""A3_Structures_F_Ind_ConcreteMixingPlant"",""A3_Structures_F_Ind_Crane"",""A3_Structures_F_Ind_DieselPowerPlant"",""A3_Structures_F_Ind_Factory"",""A3_Structures_F_Ind_FuelStation"",""A3_Structures_F_Ind_FuelStation_Small"",""A3_Structures_F_Ind_Pipes"",""A3_Structures_F_Ind_PowerLines"",""A3_Structures_F_Ind_ReservoirTank"",""A3_Structures_F_Ind_Shed"",""A3_Structures_F_Ind_SolarPowerPlant"",""A3_Structures_F_Ind_Tank"",""A3_Structures_F_Ind_Transmitter_Tower"",""A3_Structures_F_Ind_WavePowerPlant"",""A3_Structures_F_Ind_Windmill"",""A3_Structures_F_Ind_WindPowerPlant"",""A3_Structures_F_Items"",""A3_Structures_F_Items_Documents"",""A3_Structures_F_Items_Electronics"",""A3_Structures_F_Items_Food"",""A3_Structures_F_Items_Gadgets"",""A3_Structures_F_Items_Luggage"",""A3_Structures_F_Items_Medical"",""A3_Structures_F_Items_Military"",""A3_Structures_F_Items_Stationery"",""A3_Structures_F_Items_Tools"",""A3_Structures_F_Items_Valuables"",""A3_Structures_F_Items_Vessels"",""A3_Structures_F_Mil"",""A3_Structures_F_Mil_BagBunker"",""A3_Structures_F_Mil_BagFence"",""A3_Structures_F_Mil_Barracks"",""A3_Structures_F_Mil_Bunker"",""A3_Structures_F_Mil_Cargo"",""A3_Structures_F_Mil_Flags"",""A3_Structures_F_Mil_Fortification"",""A3_Structures_F_Mil_Helipads"",""A3_Structures_F_Mil_Offices"",""A3_Structures_F_Mil_Radar"",""A3_Structures_F_Mil_Shelters"",""A3_Structures_F_Mil_TentHangar"",""A3_Structures_F_Naval"",""A3_Structures_F_Naval_Buoys"",""A3_Structures_F_Naval_Fishing"",""A3_Structures_F_Naval_Piers"",""A3_Structures_F_Naval_RowBoats"",""A3_Structures_F_Research"",""A3_Structures_F_System"",""A3_Structures_F_Training"",""A3_Structures_F_Training_InvisibleTarget"",""A3_Structures_F_Walls"",""A3_Structures_F_EPA"",""A3_Structures_F_EPA_Civ_Camping"",""A3_Structures_F_EPA_Civ_Constructions"",""A3_Structures_F_EPA_Items_Electronics"",""A3_Structures_F_EPA_Items_Food"",""A3_Structures_F_EPA_Items_Medical"",""A3_Structures_F_EPA_Items_Tools"",""A3_Structures_F_EPA_Items_Vessels"",""A3_Structures_F_EPA_Walls"",""A3_Structures_F_EPB"",""A3_Structures_F_EPB_Civ_Accessories"",""A3_Structures_F_EPB_Civ_Camping"",""A3_Structures_F_EPB_Civ_Dead"",""A3_Structures_F_EPB_Civ_Garbage"",""A3_Structures_F_EPB_Civ_Graffiti"",""A3_Structures_F_EPB_Civ_PlayGround"",""A3_Structures_F_EPB_Furniture"",""A3_Structures_F_EPB_Items_Documents"",""A3_Structures_F_EPB_Items_Luggage"",""A3_Structures_F_EPB_Items_Military"",""A3_Structures_F_EPB_Items_Vessels"",""A3_Structures_F_EPB_Naval_Fishing"",""A3_Structures_F_EPC"",""A3_Structures_F_EPC_Civ_Accessories"",""A3_Structures_F_EPC_Civ_Camping"",""A3_Structures_F_EPC_Civ_Garbage"",""A3_Structures_F_EPC_Civ_InfoBoards"",""A3_Structures_F_EPC_Civ_Kiosks"",""A3_Structures_F_EPC_Civ_Playground"",""A3_Structures_F_EPC_Civ_Tourism"",""A3_Structures_F_EPC_Dominants_GhostHotel"",""A3_Structures_F_EPC_Dominants_Stadium"",""A3_Structures_F_EPC_Furniture"",""A3_Structures_F_EPC_Items_Documents"",""A3_Structures_F_EPC_Items_Electronics"",""A3_Structures_F_EPC_Walls"",""A3_UiFonts_F"",""AUR_AdvancedUrbanRappelling"",""BW_adaptive_roadway"",""Ca"",""CUP_CA_desert2_Characters"",""CA_desert2_Characters"",""CUP_DBE1_Hotfix"",""DBE1_Hotfix"",""CUP_CALanguage_e"",""CALanguage_e"",""CUP_CALanguage_PMC"",""CALanguage_PMC"",""CUP_CALanguage_missions_PMC"",""CALanguage_missions_PMC"",""CUP_CAWater2_seafox_EP1"",""CAWater2_seafox_EP1"",""CUP_CA_Plants2"",""CA_Plants2"",""CUP_CA_Plants2_Plant"",""CA_Plants2_Plant"",""CUP_CA_Plants2_Tree"",""CA_Plants2_Tree"",""CUP_CA_Plants_E2"",""CA_Plants_E2"",""CUP_CA_Plants_E"",""CA_Plants_E"",""CUP_CA_Plants_E_Misc"",""CA_Plants_E_Misc"",""CUP_CA_Plants_E_Plant"",""CA_Plants_E_Plant"",""CUP_CA_Plants_E_Tree"",""CA_Plants_E_Tree"",""CUP_CARoads"",""CARoads"",""CUP_CASigns2"",""CASigns2"",""CUP_CAUI"",""CAUI"",""CUP_CAWater2_LHD"",""CAWater2_LHD"",""CUP_A1AlwaysDummy"",""CAVideo2_PMC"",""CA_AnimsHotfix"",""CA_CutSceneAnims"",""CAIntroAnims"",""CAUSMCD"",""CAVoice"",""CAweapons3_aks74pso"",""CAWeapons3_ammocrates"",""CAweapons3_ksvk"",""CAweapons3_m107"",""CAweapons3_m16a4_acg_gl"",""CAweapons3_m16a4_acg"",""CAweapons3_m16a4_gl"",""CAweapons3_m16a4"",""CAWeapons3"",""CTI_buildingsBmp2_hq"",""CTI_buildingsM113_hq"",""DSHkM_Mini"",""M2HD_Mini"",""MK19_Tripod"",""Warfare"",""WarfareBuildings_Stinger_Twice_static"",""WarfareBuildings_T72_RACS"",""WarfareBuildings_TOW_Tripod"",""CUP_CWA_Signs"",""CUP_CWA_Sounds"",""czb_tex"",""CUP_Models_DBE1_Config"",""Models_DBE1"",""CUP_UI_DBE1"",""UI_DBE1"",""DNI_ZeusFPSMonitor"",""egl_animals_gliese"",""egl_gliese_miscs"",""egl_gliese_structures"",""GO_Data_Winter_ParticleEffects"",""go_structure_f_commercial_a"",""go_structures_f_dominants_presidentialpalace"",""A3_Structures_GO_EPC_Highway"",""go_structures_f_military_militarytent"",""go_structures_f_military_guardbuilding"",""go_structures_f_guardtower"",""go_structure_f_circularpond"",""go_structure_f_stadiumaddons"",""go_structures_f_walls"",""go_ip_house_small_01_f"",""go_ip_shack_01_f"",""go_ip_warehouse_01_f"",""GO_Structures_N_Civilian_Houses"",""GO_Structures_N_Commercial_DepartmentStore"",""go_n_structures_infrastructure_highway"",""go_n_structures_naval"",""go_structures_n_signs"",""go_vegetation_winter_trees"",""hebontes_assets"",""hotze_buildings"",""Jbad_Bridge_Kammeny"",""Jbad_Bridge_Most"",""jbad_Particle_Effects"",""jbad_billboards"",""Jbad_Misc_A_BuildingWIP"",""Jbad_Misc_AirCondition"",""Jbad_Misc_Beds"",""Jbad_Misc_Breadoven"",""Jbad_Misc_Cables"",""Jbad_case_d"",""Jbad_metalcrate"",""Jbad_ch_office_b"",""Jbad_kitchen_chair_a"",""Jbad_lobby_chair"",""Jbad_Misc_Com"",""Jbad_Misc_Construction"",""Jbad_Pc"",""Jbad_radio_b"",""Jbad_tv_a"",""Jbad_vending_machine"",""Jbad_Misc_Dead"",""Jbad_Flowers"",""Jbad_Misc_Fountain"",""Jbad_Misc_FuelTank"",""Jbad_Misc_Garbage"",""Jbad_misc_interior"",""Jbad_misc_interior_Firestation"",""Jbad_Misc_Ladder"",""Jbad_Misc_Lamp"",""Jbad_misc_market"",""Jbad_misc_opium"",""Jbad_Misc_Ramps"",""Jbad_Misc_Steps"",""Jbad_Misc_Switchgear"",""Jbad_kitchen_table_a"",""Jbad_Lobby_Table"",""Jbad_Misc_Water"",""Jbad_Misc_Well"",""jbad_Rocks"",""Jbad_Rock1"",""Jbad_afghan_house_a"",""Jbad_A_BuildingWIP"",""Jbad_A_Minaret"",""Jbad_Minaret_Porto"",""Jbad_A_Mosque_small"",""Jbad_A_stationhouse"",""Jbad_A_Villa"",""Jbad_afghan_houses"",""Jbad_afghan_houses_old"",""Jbad_bridge"",""Jbad_bridge_wood"",""Jbad_Cargo_Cont"",""Jbad_gear"",""Jbad_hangar_2"",""Jbad_Ind_Coltan_Mine"",""Jbad_Ind_Conveyer"",""Jbad_Ind_FuelStation"",""Jbad_Ind_Garage01"",""Jbad_Ind_PowerStation"",""Jbad_Ind_Shed"",""Jbad_Ind_Workshop01"",""Jbad_mil"",""Jbad_hanger"",""Jbad_mosque_big"",""Jbad_sidewalks"",""Jbad_Fences"",""Jbad_Wall"",""Jbad_Wall_k"",""Jbad_Wall_L"",""jbad_Veg"",""Jbad_Bush"",""Jbad_Plant"",""Jbad_trailers"",""jbad_trucks"",""Jbad_Water"",""Jbad_Misc_Rivers"",""plants"",""lythiumenv"",""FFAA_Billboards"",""FFAA_vegetation"",""mbg_killhouses_a3"",""JLTS_C_languages"",""JLTS_languages"",""JLTS_languages_droids"",""JLTS_objects_memorial"",""OPTRE_MJOLNIR_data_anims_Air_F"",""OPTRE_MJOLNIR_data_anims_Air_F_Heli_Light_01"",""OPTRE_MJOLNIR_data_anims_Air_F_Heli_Light_02"",""OPTRE_MJOLNIR_data_anims_Air_F_Beta"",""OPTRE_MJOLNIR_data_anims_Air_F_Beta_Heli_Attack_01"",""OPTRE_MJOLNIR_data_anims_Air_F_Beta_Heli_Attack_02"",""OPTRE_MJOLNIR_data_anims_Air_F_Beta_Heli_Transport_02"",""OPTRE_MJOLNIR_data_anims_Air_F_Beta_Parachute_01"",""OPTRE_MJOLNIR_data_anims_Air_F_Beta_Parachute_02"",""OPTRE_MJOLNIR_data_anims_Air_F_Gamma"",""OPTRE_MJOLNIR_data_anims_Air_F_Gamma_Plane_Fighter_03"",""OPTRE_MJOLNIR_data_anims_anims_f"",""OPTRE_MJOLNIR_data_anims_Anims_F_Config_Sdr"",""OPTRE_MJOLNIR_data_anims_Anims_F_Config_Sdr_WeaponSwitching"",""OPTRE_MJOLNIR_data_anims_anims_f_data"",""OPTRE_MJOLNIR_data_anims_Anims_F_Bootcamp"",""OPTRE_MJOLNIR_data_anims_Anims_F_EPC"",""OPTRE_MJOLNIR_data_anims_Anims_F_Exp"",""OPTRE_MJOLNIR_data_anims_Anims_F_Exp_Revive"",""OPTRE_MJOLNIR_data_anims_Anims_F_Jets"",""OPTRE_MJOLNIR_data_anims_Anims_F_Kart"",""OPTRE_MJOLNIR_data_anims_Anims_F_Mark"",""OPTRE_MJOLNIR_data_anims_Anims_F_Mark_Deployment"",""SA_AdvancedTowing"",""TKE_Ext_Ships"",""tke_music"",""egl_veg_gliese"",""xin_ponds"",""aceax_gearinfo"",""aceax_ingame"",""DW_Optionals_TKE"",""3AS_CIS_Wheeled_Fliknot"",""3AS_Compositions"",""3AS_Cliffs"",""3AS_Crystals"",""3AS_Rocks"",""3AS_Legacy"",""3AS_Prop_FOB"",""3AS_Prop_Objects"",""3AS_Prop_pipes"",""3AS_stretcher"",""3AS_Prop_Wrecks"",""3as_shieldFunctions"",""3AS_Prop_Capital_ISD"",""3AS_Prop_Capital_Venator"",""3AS_Structures2_Generic_Bridges"",""3AS_Structures2_FlatShields"",""3AS_Structures2_GenericFOB"",""3AS_Structures2_HBarriers"",""3AS_Structure2_MissionTools"",""3AS_Structures2_Generic_Roads"",""3AS_Structures2_StairsLadderElevator"",""3AS_Prop_Interiors"",""3as_ModularPlatforms"",""3AS_Prop_MB"",""3AS_Structures_ShieldGenerator"",""3AS_Prop_Structures"",""3AS_Prop_Trenches"",""3AS_Terrain_Penetration"",""3AS_Terrain_Sounds"",""3AS_Prop_Christophsis"",""3AS_Orto_Plutonia_Caves"",""3AS_Orto_Plutonia_Cliff_Rocks"",""3AS_Orto_Plutonia_Talz_Huts"",""3AS_Orto_Plutonia_Ice_Bridge"",""3AS_Prop_orto_plut_interiors"",""3AS_Orto_Plutonia_Rocks"",""3AS_Orto_Plutonia_Snow_Drifts"",""3AS_TalzStructures"",""3as_props_Umbara"",""Revo_NoWeaponSway"",""A3_Animals_F"",""A3_Animals_F_Animconfig"",""A3_Animals_F_Fishes"",""A3_Animals_F_Kestrel"",""A3_Animals_F_Rabbit"",""A3_Animals_F_Seagull"",""A3_Animals_F_Snakes"",""A3_Animals_F_Turtle"",""A3_Animals_F_Beta"",""A3_Animals_F_Beta_Chicken"",""A3_Animals_F_Beta_Dog"",""A3_Animals_F_Beta_Goat"",""A3_Animals_F_Beta_Sheep"",""A3_Anims_F"",""A3_Anims_F_Config_Sdr"",""A3_Anims_F_Config_Sdr_WeaponSwitching"",""A3_Anims_F_Data"",""A3_Anims_F_EPA"",""A3_Anims_F_EPC"",""A3_Dubbing_F_EPA"",""A3_Dubbing_F_EPB"",""A3_Dubbing_F_EPC"",""A3_Language_F_EPA"",""A3_Language_F_EPB"",""A3_Language_F_EPC"",""A3_LanguageMissions_F_EPA"",""A3_LanguageMissions_F_EPB"",""A3_LanguageMissions_F_EPC"",""A3_Map_Data"",""A3_Map_Data_Exp"",""A3_Map_Stratis"",""A3_Map_Stratis_Data"",""A3_Map_Stratis_Data_Layers"",""A3_Map_Stratis_Scenes_F"",""A3_Plants_F_Bush"",""A3_Signs_F"",""A3_Signs_F_Signs_Ad"",""A3_Structures_F_Signs_Companies"",""A3_Ui_F"",""A3_Ui_F_Data"",""A3_Ui_F_Curator"",""A3_Weapons_F"",""A3_Weapons_F_Ammoboxes"",""A3_Weapons_F_DummyWeapons"",""A3_Weapons_F_Explosives"",""A3_Weapons_F_Items"",""A3_Weapons_F_Launchers_NLAW"",""A3_Weapons_F_Launchers_RPG32"",""A3_Weapons_F_Launchers_Titan"",""A3_Weapons_F_LongRangeRifles_DMR_01"",""A3_Weapons_F_LongRangeRifles_EBR"",""A3_Weapons_F_LongRangeRifles_GM6"",""A3_Weapons_F_LongRangeRifles_M320"",""A3_Weapons_F_Machineguns_M200"",""A3_Weapons_F_Machineguns_Zafir"",""A3_Weapons_F_Pistols_ACPC2"",""A3_Weapons_F_Pistols_P07"",""A3_Weapons_F_Pistols_Pistol_Heavy_01"",""A3_Weapons_F_Pistols_Pistol_Heavy_02"",""A3_Weapons_F_Pistols_Rook40"",""A3_Weapons_F_Rifles_Khaybar"",""A3_Weapons_F_Rifles_MK20"",""A3_Weapons_F_Rifles_MX"",""A3_Weapons_F_Rifles_MX_Black"",""A3_Weapons_F_Rifles_SDAR"",""A3_Weapons_F_Rifles_TRG20"",""A3_Weapons_F_SMGs_Pdw2000"",""A3_Weapons_F_SMGs_SMG_01"",""A3_Weapons_F_SMGs_SMG_02"",""A3_Weapons_F_Beta"",""A3_Weapons_F_Beta_Ammoboxes"",""A3_Weapons_F_Beta_LongRangeRifles_EBR"",""A3_Weapons_F_Beta_LongRangeRifles_GM6"",""A3_Weapons_F_Beta_LongRangeRifles_M320"",""A3_Weapons_F_Beta_Rifles_Khaybar"",""A3_Weapons_F_Beta_Rifles_MX"",""A3_Weapons_F_Beta_Rifles_TRG20"",""A3_Weapons_F_Gamma"",""A3_Weapons_F_Gamma_Ammoboxes"",""A3_Weapons_F_Gamma_LongRangeRifles_EBR"",""A3_Weapons_F_Gamma_Rifles_MX"",""adapterusSUSmellee"",""BaBe_core"",""BaBe_EM_Anims"",""CUP_CA_Config"",""CAData"",""CUP_CAData_ParticleEffects"",""CAData_ParticleEffects"",""CUP_CAMisc"",""CUP_Misc_Data"",""CAMisc"",""CUP_CA_Plants2_Bush"",""CA_Plants2_Bush"",""CUP_CAPlants"",""CAPlants"",""CUP_CA_Plants_E_Bush"",""CA_Plants_E_Bush"",""CUP_pond_test"",""pond_test"",""CUP_Compositions"",""CUP_Editor_Config"",""CUP_Editor_A1_Roads_Config"",""CUP_Editor_A2_Roads_Config"",""CUP_Editor_A2_Railway_Config"",""CUP_Editor_Sidewalks_Config"",""CUP_Terrains_Winter_Animals"",""CUP_Terrains_Winter_Objects"",""CUP_Terrains_Winter_Roads"",""czb_build"",""CUP_Misc_DBE1"",""Misc_DBE1"",""DpSword"",""ffaa_casas_af"",""fxp_adat"",""fxp_VehExpEffect"",""fxp_VehExpEffectBig"",""gge_core"",""abramia_objects"",""juju_javory"",""lsb_terrain_endor"",""lsb_terrain_geonosis2"",""lsb_terrain_geonosis"",""lsb_terrain_mimban"",""lsb_terrain_scarif"",""Jabiim"",""ffaa_Stones"",""JLTS_radios"",""OPTRE_Gridlock"",""OPTRE_Harvest"",""OPTRE_Iberius"",""OPTRE_Kholo"",""OPTRE_Madrigal"",""OPTRE_MJOLNIR_data_anims_Anims_F_EPA"",""OPTRE_MJOLNIR_data_anims_Static_F"",""OPTRE_Roost"",""OPTRE_Sandstorm"",""WBK_Optre_Weapon_Additions"",""PH_TacReady"",""PH_TacSwap"",""splendid_smoke"",""Anim_alphaV"",""Weap_melee_knife"",""WBK_NewStarWars_Weapons"",""WBK_SomeSciFiWeapons"",""WBK_NewMeleeWEaponsTier2"",""WBK_pipeStyledSword"",""WW1_Gestures"",""WebKnight_StarWars_MoveSet"",""WBK_Lightsabers"",""WBK_DifferentRobotics_1"",""3as_Tatooine"",""A3_Characters_F"",""A3_Characters_F_BLUFOR"",""A3_Characters_F_Civil"",""A3_Characters_F_Heads"",""A3_Characters_F_OPFOR"",""A3_Characters_F_Proxies"",""A3_Characters_F_Beta"",""A3_Characters_F_Beta_INDEP"",""A3_Characters_F_Gamma"",""A3_Map_Altis"",""A3_Map_Altis_Data"",""A3_Map_Altis_Data_Layers"",""A3_Map_Altis_Scenes_F"",""A3_Missions_F"",""A3_Missions_F_Data"",""A3_Missions_F_Video"",""A3_Missions_F_Beta"",""A3_Missions_F_Beta_Data"",""A3_Missions_F_Beta_Video"",""A3_Missions_F_Gamma"",""A3_Missions_F_Gamma_Data"",""A3_Missions_F_Gamma_Video"",""A3_Sounds_F"",""A3_Sounds_F_Arsenal"",""A3_Sounds_F_Characters"",""A3_Sounds_F_Environment"",""A3_Sounds_F_Sfx"",""A3_Sounds_F_Vehicles"",""A3_Sounds_F_EPB"",""A3_Sounds_F_EPC"",""A3_Static_F"",""A3_Static_F_HMG_02"",""A3_Static_F_Mortar_01"",""A3_Static_F_Beta"",""A3_Static_F_Beta_Mortar_01"",""A3_Static_F_Gamma"",""A3_Static_F_Gamma_Mortar_01"",""A3_Weapons_F_Acc"",""A3_Weapons_F_Beta_Acc"",""A3_Weapons_F_EPA"",""A3_Weapons_F_EPA_Acc"",""A3_Weapons_F_EPA_Ammoboxes"",""A3_Weapons_F_EPB"",""A3_Weapons_F_EPB_Acc"",""A3_Weapons_F_EPB_Ammoboxes"",""A3_Weapons_F_EPB_LongRangeRifles_GM6"",""A3_Weapons_F_EPC"",""A3_Weapons_F_Gamma_Acc"",""APR_IMS_iconRework"",""babe_core_UI"",""BaBe_EM"",""babe_EM_gst"",""BaBe_int"",""CUP_Buildings_Config"",""CABuildings"",""CUP_CABuildings_Misc"",""CABuildings_Misc"",""CUP_Desert2_Data"",""CUP_Desert2_Buildings"",""Desert2_Buildings"",""CUP_Desert_Data"",""CUP_Desert_Config"",""Desert"",""CUP_Hotfix_Config"",""CA_Hotfix"",""CUP_CA_QGClutterHotfix"",""CA_QGClutterHotfix"",""CUP_CA_Hotfix_vez_ropa"",""CA_Hotfix_vez_ropa"",""CUP_Sara_Data"",""CUP_Sara_Config"",""Sara"",""CUP_Saralite_Data"",""CUP_Saralite_Config"",""SaraLite"",""CUP_jbad_sounds"",""CUP_Structures_Config"",""CAStructures"",""CUP_CAStructures_A_BuildingWIP"",""CAStructures_A_BuildingWIP"",""CUP_CAStructures_A_CraneCon"",""CAStructures_A_CraneCon"",""CUP_CAStructuresLand_A_MunicipalOffice"",""CAStructuresLand_A_MunicipalOffice"",""CUP_CAStructuresBarn_W"",""CAStructuresBarn_W"",""CUP_CAStructures_Castle"",""CAStructures_Castle"",""CUP_CAStructuresHouse"",""CAStructuresHouse"",""CUP_CAStructuresHouse_A_FuelStation"",""CAStructuresHouse_A_FuelStation"",""CUP_CAStructuresHouse_A_Hospital"",""CAStructuresHouse_A_Hospital"",""CUP_CAStructuresHouse_A_Office01"",""CAStructuresHouse_A_Office01"",""CUP_CAStructuresHouse_A_Office02"",""CAStructuresHouse_A_Office02"",""CUP_CAStructuresHouse_a_stationhouse"",""CAStructuresHouse_a_stationhouse"",""CUP_CAStructuresHouse_Church_02"",""CAStructuresHouse_Church_02"",""CUP_CAStructuresHouse_Church_03"",""CAStructuresHouse_Church_03"",""CUP_CAStructuresHouse_Church_05R"",""CAStructuresHouse_Church_05R"",""CUP_CAStructuresHouse_HouseBT"",""CAStructuresHouse_HouseBT"",""CUP_CAStructuresHouse_HouseV2"",""CAStructuresHouse_HouseV2"",""CUP_CAStructuresHouse_HouseV"",""CAStructuresHouse_HouseV"",""CUP_CAStructuresLand_Ind_Stack_Big"",""CAStructuresLand_Ind_Stack_Big"",""CUP_CAStructures_IndPipe1"",""CAStructures_IndPipe1"",""CUP_CAStructuresInd_Quarry"",""CAStructuresInd_Quarry"",""CUP_Ind_SawMill"",""Ind_SawMill"",""CUP_CAStructures_Mil"",""CAStructures_Mil"",""CUP_CAStructures_Misc"",""CAStructures_Misc"",""CUP_CAStructures_Misc_Armory"",""CAStructures_Misc_Armory"",""CUP_CAStructures_Misc_Armory_Armor_Popuptarget"",""CAStructures_Misc_Armory_Armor_Popuptarget"",""CUP_CAStructures_Misc_Powerlines"",""CAStructures_Misc_Powerlines"",""CUP_CAStructures_Nav"",""CAStructures_Nav"",""CUP_CAStructuresLand_Nav_Boathouse"",""CAStructuresLand_Nav_Boathouse"",""CUP_CAStructures_Proxy_BuildingParts"",""CAStructures_Proxy_BuildingParts"",""CUP_CAStructures_Proxy_Ruins"",""CAStructures_Proxy_Ruins"",""CUP_CAStructures_Rail"",""CAStructures_Rail"",""CUP_CAStructuresHouse_rail_station_big"",""CAStructuresHouse_rail_station_big"",""CUP_CAStructures_Ruins"",""CAStructures_Ruins"",""CUP_CAStructuresShed_Small"",""CAStructuresShed_Small"",""CUP_CAStructuresHouse_Shed_Ind"",""CAStructuresHouse_Shed_Ind"",""CUP_CAStructures_Wall"",""CAStructures_Wall"",""CUP_Utes_Data"",""CUP_Utes_Config"",""Utes"",""CUP_New_Buildings"",""CUP_New_Buildings_Bunker"",""CUP_New_Buildings_Tenement"",""CUP_New_Buildings_Warehouse"",""CUP_New_Buildings_Warehouse_Mezzanine"",""CUP_CWA_Furniture"",""MBG_Noe_Buildings"",""CUP_Editor_Buildings_Config"",""CUP_Editor_Structures_Config"",""CUP_Terrains_Abel_Data"",""CUP_Terrains_Abel"",""CUP_Intro_Data"",""CUP_Intro_Config"",""CUP_Kamenolom_DBE1"",""Kamenolom_DBE1"",""CUP_Pila_DBE1"",""Pila_DBE1"",""CUP_Vysilac_DBE1"",""Vysilac_DBE1"",""CUP_Zakladna_DBE1"",""Zakladna_DBE1"",""CUP_Sara_dbe1_Data"",""CUP_Sara_dbe1_Config"",""Sara_dbe1"",""DFS_3rdPerson"",""egl_gliese"",""GLS_EnvSounds"",""escapefromtarkov_sounds"",""gbr_Bush"",""gbr_Veg"",""JLTS_characters_CloneArmor"",""JLTS_characters_CloneLegions"",""JLTS_characters_CloneLegionsRework"",""JLTS_characters_DroidArmor"",""JLTS_characters_DroidUnits"",""JLTS_C_Credits"",""JLTS_C_Drugs"",""JLTS_C_IDs"",""JLTS_C_Intel"",""JLTS_drones"",""JLTS_drones_prowler"",""JLTS_weapons_DC15S"",""JLTS_weapons_DP23"",""JLTS_weapons_DW32S"",""JLTS_weapons_E5"",""JLTS_weapons_E5C"",""JLTS_weapons_E60R"",""JLTS_weapons_Explosives"",""JLTS_weapons_PLX1"",""JLTS_weapons_Reloads"",""JLTS_weapons_RPS6"",""JLTS_weapons_SBB3"",""JLTS_weapons_shield"",""JLTS_weapons_Statics"",""JLTS_weapons_Statics_generator"",""JLTS_weapons_Z6"",""OPTRE_MJOLNIR_data_anims_Static_F_Mortar_01"",""OPTRE_Phobos"",""Repentz_ThirdPerson"",""TKE_Grenades"",""TKE_Uniform_Revamp"",""TKE_Warbots"",""WBK_ZombieCreatures"",""WBK_ZombieCreatures_Units"",""WBK_Zombies_Corrupted"",""WBK_Zombies_Goliaph"",""WBK_Zombies_Smasher"",""WBK_IMS_ANIMS_2"",""3AS_Characters"",""3AS_Characters_Clones"",""3AS_Backpacks"",""3AS_Characters_Clones_Headgear"",""3AS_Characters_Uniforms"",""3AS_Characters_Commando"",""3AS_Characters_Droids"",""TAS_Characters_Droids_B1Series"",""3AS_Characters_Droids_B2"",""3AS_Characters_Droids_TSeries"",""3AS_Characters_Imperial"",""3AS_Characters_Imperial_Backpacks"",""3AS_Characters_Imperial_Headgear"",""3AS_Characters_Imperial_Uniforms"",""3AS_Characters_Imperial_Vests"",""3AS_Characters_Rebel"",""3AS_Characters_Rebel_Backpacks"",""3AS_Characters_Rebel_Headgear"",""3AS_Characters_Rebel_Uniforms"",""3AS_Characters_Rebel_Vests"",""3AS_CIS_Infantry"",""3AS_Avionics_Pod"",""3AS_JLTS"",""3AS_JLTS_Backpack"",""3as_JLTS_Helmet"",""3as_JLTS_Uniforms"",""3AS_JLTS_Vest"",""3as_Modules"",""3AS_Intel"",""3AS_Static_BlasterTurret"",""3AS_BX42"",""3AS_ATRT"",""3AS_ATRT_Man"",""3rdView"",""A3_Air_F"",""A3_Air_F_Heli_Light_01"",""A3_Air_F_Heli_Light_02"",""A3_Air_F_Beta"",""A3_Air_F_Beta_Heli_Attack_01"",""A3_Air_F_Beta_Heli_Attack_02"",""A3_Air_F_Beta_Heli_Transport_01"",""A3_Air_F_Beta_Heli_Transport_02"",""A3_Air_F_Beta_Parachute_01"",""A3_Air_F_Beta_Parachute_02"",""A3_Air_F_Gamma"",""A3_Air_F_Gamma_Plane_Fighter_03"",""A3_Armor_F"",""A3_Armor_F_Beta"",""A3_Armor_F_Beta_APC_Tracked_01"",""A3_Armor_F_Beta_APC_Tracked_02"",""A3_Armor_F_Gamma"",""A3_Armor_F_Gamma_MBT_01"",""A3_Armor_F_Gamma_MBT_02"",""A3_Boat_F"",""A3_Boat_F_Boat_Armed_01"",""A3_Boat_F_Boat_Transport_01"",""A3_Boat_F_Beta"",""A3_Boat_F_Beta_Boat_Armed_01"",""A3_Boat_F_Beta_Boat_Transport_01"",""A3_Boat_F_Beta_SDV_01"",""A3_Boat_F_Gamma"",""A3_Boat_F_Gamma_Boat_Civil_01"",""A3_Boat_F_Gamma_Boat_Civil_04"",""A3_Boat_F_Gamma_Boat_Transport_01"",""A3_Characters_F_Common"",""A3_Characters_F_EPA"",""A3_Characters_F_EPB"",""A3_Characters_F_EPB_Heads"",""A3_Characters_F_EPC"",""A3_Missions_F_EPA"",""A3_Missions_F_EPA_Data"",""A3_Missions_F_EPA_Video"",""A3_Missions_F_EPB"",""A3_Missions_F_EPC"",""A3_Soft_F"",""A3_Soft_F_MRAP_01"",""A3_Soft_F_MRAP_02"",""A3_Soft_F_Offroad_01"",""A3_Soft_F_Quadbike_01"",""A3_Soft_F_Beta"",""A3_Soft_F_Beta_MRAP_03"",""A3_Soft_F_Beta_Quadbike_01"",""A3_Soft_F_Beta_Truck_01"",""A3_Soft_F_Beta_Truck_02"",""A3_Soft_F_Gamma"",""A3_Soft_F_Gamma_Hatchback_01"",""A3_Soft_F_Gamma_Offroad_01"",""A3_Soft_F_Gamma_Quadbike_01"",""A3_Soft_F_Gamma_SUV_01"",""A3_Soft_F_Gamma_Truck_01"",""A3_Soft_F_Gamma_Truck_02"",""A3_Soft_F_Gamma_Van_01"",""A3_Static_F_AA_01"",""A3_Static_F_AT_01"",""A3_Structures_F_Mil_Scrapyard"",""A3_Structures_F_Wrecks"",""A3_Structures_F_EPA_Mil_Scrapyard"",""babe_int_EHs"",""CUP_Buildings2_Config"",""CABuildings2"",""CUP_A_Crane_02"",""A_Crane_02"",""CUP_A_GeneralStore_01"",""A_GeneralStore_01"",""CUP_CABuildings2_A_Pub"",""CABuildings2_A_Pub"",""CUP_A_statue"",""A_statue"",""CUP_Barn_Metal"",""Barn_Metal"",""CUP_CABuildingParts"",""CABuildingParts"",""CUP_CABuildingParts_Signs"",""CABuildingParts_Signs"",""CUP_CATEC"",""CATEC"",""CUP_Church_01"",""Church_01"",""CUP_Farm_Cowshed"",""Farm_Cowshed"",""CUP_Farm_WTower"",""Farm_WTower"",""CUP_CAHouseBlock_A"",""CAHouseBlock_A"",""CUP_CAHouseBlock_B"",""CAHouseBlock_B"",""CUP_CAHouseBlock_C"",""CAHouseBlock_C"",""CUP_CAHouseBlock_D"",""CAHouseBlock_D"",""CUP_HouseRuins"",""HouseRuins"",""CUP_Ind_Dopravnik"",""Ind_Dopravnik"",""CUP_Ind_Expedice"",""Ind_Expedice"",""CUP_Ind_MalyKomin"",""Ind_MalyKomin"",""CUP_Ind_Mlyn"",""Ind_Mlyn"",""CUP_Ind_Pec"",""Ind_Pec"",""CUP_ind_silomale"",""ind_silomale"",""CUP_Ind_SiloVelke"",""Ind_SiloVelke"",""CUP_Ind_Vysypka"",""Ind_Vysypka"",""CUP_Ind_Garage01"",""Ind_Garage01"",""CUP_CAStructures_IndPipe1_todo_delete"",""CAStructures_IndPipe1_todo_delete"",""CUP_IndPipe2"",""IndPipe2"",""CUP_Ind_Shed_01"",""Ind_Shed_01"",""CUP_Ind_Shed_02"",""Ind_Shed_02"",""CUP_Ind_Tank"",""Ind_Tank"",""CUP_Ind_Workshop01"",""Ind_Workshop01"",""CUP_CABuildings2_Misc_Cargo"",""CABuildings2_Misc_Cargo"",""CUP_Misc_PowerStation"",""Misc_PowerStation"",""CUP_Misc_WaterStation"",""Misc_WaterStation"",""CUP_Rail_House_01"",""Rail_House_01"",""CUP_Shed_small"",""Shed_small"",""CUP_Shed_wooden"",""Shed_wooden"",""CUP_particle_effects"",""particle_effects"",""CUP_Chernarus_Data"",""CUP_Chernarus_Config"",""Chernarus"",""CUP_Chernarus_Summer_Data"",""CUP_Chernarus_Summer_Config"",""Chernarus_Summer"",""CUP_Desert2_Config"",""Porto"",""CUP_CAMisc2"",""CAMisc2"",""CUP_Misc3_Config"",""CAMisc3"",""CUP_WarfareBuildings"",""WarfareBuildings"",""CUP_Misc_e_Config"",""CAMisc_E"",""CUP_CAMisc_E_WF"",""CAMisc_E_WF"",""CUP_CAMP_Armory_Misc"",""CAMP_Armory_Misc"",""CUP_CAMP_Armory_Misc_Concrete_Wall"",""CAMP_Armory_Misc_Concrete_Wall"",""CUP_CAMP_Armory_Misc_Entrance_Gate"",""CAMP_Armory_Misc_Entrance_Gate"",""CUP_CAMP_Armory_Misc_Info_Board"",""CAMP_Armory_Misc_Info_Board"",""CUP_CAMP_Armory_Misc_Infostands"",""CAMP_Armory_Misc_Infostands"",""CUP_CAMP_Armory_Misc_Laptop"",""CAMP_Armory_Misc_Laptop"",""CUP_CAMP_Armory_Misc_Loudspeakers"",""CAMP_Armory_Misc_Loudspeakers"",""CUP_CAMP_Armory_Misc_Plasticpole"",""CAMP_Armory_Misc_Plasticpole"",""CUP_CAMP_Armory_Misc_Red_Light"",""CAMP_Armory_Misc_Red_Light"",""CUP_CAMP_Armory_Misc_Sign_Armex"",""CAMP_Armory_Misc_Sign_Armex"",""CUP_CAMP_Armory_Misc_Sign_Direction"",""CAMP_Armory_Misc_Sign_Direction"",""CUP_CA_Plants2_Misc"",""CA_Plants2_Misc"",""CUP_CA_Plants_PMC"",""CA_Plants_PMC"",""CUP_CARoads2Bridge"",""CARoads2Bridge"",""CUP_CARoads_PMC_Bridge"",""CARoads_PMC_Bridge"",""CUP_CASigns_E"",""CASigns_E"",""CUP_A_TVTower"",""A_TVTower"",""CUP_CAStructures_Nav_pier"",""CAStructures_Nav_pier"",""CUP_CAStructures_Railway"",""CAStructures_Railway"",""CUP_Structures_e_Config"",""CAStructures_E"",""CUP_CAStructures_E_HouseA"",""CAStructures_E_HouseA"",""CUP_CAStructures_E_HouseA_A_BuildingWIP"",""CAStructures_E_HouseA_A_BuildingWIP"",""CUP_CAStructures_E_HouseA_A_CityGate1"",""CAStructures_E_HouseA_A_CityGate1"",""CUP_CAStructures_E_HouseA_A_Minaret"",""CAStructures_E_HouseA_A_Minaret"",""CUP_CAStructures_E_HouseA_A_Minaret_Porto"",""CAStructures_E_HouseA_A_Minaret_Porto"",""CUP_CAStructures_E_HouseA_A_Mosque_big"",""CAStructures_E_HouseA_A_Mosque_big"",""CUP_CAStructures_E_HouseA_A_Mosque_small"",""CAStructures_E_HouseA_A_Mosque_small"",""CUP_CAStructures_E_HouseA_A_Office01"",""CAStructures_E_HouseA_A_Office01"",""CUP_CAStructures_E_HouseA_a_stationhouse"",""CAStructures_E_HouseA_a_stationhouse"",""CUP_CAStructures_E_HouseA_A_Statue"",""CAStructures_E_HouseA_A_Statue"",""CUP_CAStructures_E_HouseA_A_Villa"",""CAStructures_E_HouseA_A_Villa"",""CUP_CAStructures_E_HouseC"",""CAStructures_E_HouseC"",""CUP_CAStructures_E_HouseK"",""CAStructures_E_HouseK"",""CUP_CAStructures_E_HouseL"",""CAStructures_E_HouseL"",""CUP_CAStructures_E_Ind"",""CAStructures_E_Ind"",""CUP_CAStructures_E_Ind_Ind_Coltan_Mine"",""CAStructures_E_Ind_Ind_Coltan_Mine"",""CUP_CAStructures_E_Ind_Ind_FuelStation"",""CAStructures_E_Ind_Ind_FuelStation"",""CUP_CAStructures_E_Ind_Ind_Garage01"",""CAStructures_E_Ind_Ind_Garage01"",""CUP_CAStructures_E_Ind_Oil_Mine"",""CAStructures_E_Ind_Oil_Mine"",""CUP_CAStructures_E_Ind_IndPipes"",""CAStructures_E_Ind_IndPipes"",""CUP_CAStructures_E_Ind_Misc_PowerStation"",""CAStructures_E_Ind_Misc_PowerStation"",""CUP_CAStructures_E_Ind_Ind_Shed"",""CAStructures_E_Ind_Ind_Shed"",""CUP_CAStructures_E_Mil"",""CAStructures_E_Mil"",""CUP_CAStructures_E_Misc"",""CAStructures_E_Misc"",""CUP_CAStructures_E_Misc_Misc_cables"",""CAStructures_E_Misc_Misc_cables"",""CUP_CAStructures_E_Misc_Misc_Construction"",""CAStructures_E_Misc_Misc_Construction"",""CUP_CAStructures_E_Misc_Misc_Garbage"",""CAStructures_E_Misc_Misc_Garbage"",""CUP_CAStructures_E_Misc_Misc_Interier"",""CAStructures_E_Misc_Misc_Interier"",""CUP_CAStructures_E_Misc_Misc_Lamp"",""CAStructures_E_Misc_Misc_Lamp"",""CUP_CAStructures_E_Misc_Misc_Market"",""CAStructures_E_Misc_Misc_Market"",""CUP_CAStructures_E_Misc_Misc_powerline"",""CAStructures_E_Misc_Misc_powerline"",""CUP_CAStructures_E_Misc_Misc_Water"",""CAStructures_E_Misc_Misc_Water"",""CUP_CAStructures_E_Misc_Misc_Well"",""CAStructures_E_Misc_Misc_Well"",""CUP_CAStructures_E_Wall"",""CAStructures_E_Wall"",""CUP_CAStructures_E_Wall_Wall_L"",""CAStructures_E_Wall_Wall_L"",""CUP_Structures_pmc_Config"",""CAStructures_PMC"",""CUP_CAStructures_PMC_Buildings"",""CAStructures_PMC_Buildings"",""CUP_CAStructures_PMC_Buildings_Bunker"",""CAStructures_PMC_Buildings_Bunker"",""CUP_CAStructures_PMC_Buildings_GeneralStore_PMC"",""CAStructures_PMC_Buildings_GeneralStore_PMC"",""CUP_CAStructures_PMC_Buildings_Ruin_Cowshed"",""CAStructures_PMC_Buildings_Ruin_Cowshed"",""CUP_CAStructures_PMC_Ind"",""CAStructures_PMC_Ind"",""CUP_CAStructures_PMC_FuelStation"",""CAStructures_PMC_FuelStation"",""CUP_CAStructures_PMC_Misc"",""CAStructures_PMC_Misc"",""CUP_CAStructures_PMC_Misc_Shed"",""CAStructures_PMC_Misc_Shed"",""CUP_CAStructures_PMC_Ruins"",""CAStructures_PMC_Ruins"",""CUP_CAStructures_PMC_Walls"",""CAStructures_PMC_Walls"",""CUP_Takistan_Data"",""CUP_Takistan_Config"",""Takistan"",""CUP_Zargabad_Data"",""CUP_Zargabad_Config"",""zargabad"",""CUP_CWA_Buildings_C"",""CUP_CWA_Misc"",""CUP_Editor_Plants_Config"",""CUP_Editor_Rocks_Config"",""CUP_Editor_Signs_Config"",""CUP_Terrains_Cain_Data"",""CUP_Terrains_Cain"",""CUP_Chernarus_Winter_Data"",""CUP_Terrains_Eden_Data"",""CUP_Terrains_Eden"",""CUP_Terrains_Noe_Data"",""DSA_Spooks"",""DSA_uniforms"",""escapefromtarkov_soundgear"",""fxp_VehHeli"",""kapauliom"",""A3_Map_Kapaulio"",""kapaulio"",""hotze_mske"",""ibr_dualaobjects"",""CUP_ibr_plants"",""ibr_plants"",""Jbad_ConstructionCrane"",""JLTS_characters_CloneArmor2"",""JLTS_weapons_DC15A"",""JLTS_weapons_DC15X"",""JLTS_weapons_E5S"",""JLTS_weapons_EPL2"",""JLTS_weapons_Grenades"",""OPTRE_MJOLNIR_data_anims_Cargoposes_F"",""objectbase_Mod"",""WBK_Headlamps"",""WBK_Zombies_SpecialInfected"",""3AS_AAT"",""3AS_Animations"",""3AS_Assualt"",""3AS_ATAP"",""3AS_CIS_Heli"",""3AS_CIS_Heli_MAF"",""3AS_CIS_Wheeled"",""3AS_CIS_Wheeled_Combat_Speeder"",""3AS_CIS_Wheeled_PAC"",""3AS_Drones"",""3as_UGV"",""3AS_ITT"",""3AS_APC_Jug"",""3AS_LAAT"",""3AS_LAAT_LE"",""3AS_LightVics"",""3AS_LightVics_Barc"",""3AS_ISP"",""3AS_misc_data"",""3AS_MTT"",""3AS_Nu"",""3AS_Rebel_Armor"",""3AS_Rebel_Armor_PX10"",""3AS_Rebel_Heli_Aegis"",""3AS_Republic_Heli"",""3AS_Republic_Heli_Nu"",""3AS_Republic_Heli_Rho"",""3AS_RTT"",""3AS_RX200"",""3as_DroidDispensor"",""3AS_Static_FCP"",""3as_swoop"",""3AS_UTAT"",""3AS_VehicleWeapons_Effects_Defoliator"",""3AS_VehicleWeapons_Effects_EMP"",""A3_Air_F_EPB"",""A3_Air_F_EPB_Heli_Light_03"",""A3_Air_F_EPC"",""A3_Air_F_EPC_Plane_CAS_01"",""A3_Air_F_EPC_Plane_CAS_02"",""A3_Air_F_EPC_Plane_Fighter_03"",""A3_Armor_F_Beta_APC_Wheeled_01"",""A3_Armor_F_Beta_APC_Wheeled_02"",""A3_Armor_F_EPB"",""A3_Armor_F_EPB_APC_Tracked_03"",""A3_Armor_F_EPB_MBT_03"",""A3_Armor_F_EPC"",""A3_Armor_F_EPC_MBT_01"",""A3_Armor_F_Gamma_APC_Wheeled_03"",""A3_Boat_F_EPC"",""A3_Boat_F_EPC_Submarine_01"",""A3_Cargoposes_F"",""A3_Drones_F"",""A3_Drones_F_Air_F_Gamma_UAV_01"",""A3_Drones_F_Air_F_Gamma_UAV_02"",""A3_Drones_F_Characters_F_Gamma"",""A3_Drones_F_Soft_F_Gamma_UGV_01"",""A3_Drones_F_Weapons_F_Gamma_Ammoboxes"",""A3_Drones_F_Weapons_F_Gamma_Items"",""A3_Soft_F_EPC"",""A3_Soft_F_EPC_Truck_03"",""CUP_Afghan_Data"",""CUP_Afghan_Config"",""Mountains_ACR"",""CUP_Bohemia_Data"",""CUP_Bohemia_Config"",""Woodland_ACR"",""CUP_Bootcamp_acr_Data"",""CUP_Bootcamp_acr_Config"",""Bootcamp_ACR"",""CUP_Data_baf_Config"",""CA_BAF"",""CUP_Desert_e_Data"",""CUP_Desert_e_Config"",""Desert_E"",""CUP_CALanguage_Baf"",""CALanguage_Baf"",""CUP_CALanguageMissions_baf"",""CALanguageMissions_baf"",""CUP_Misc_acr_Config"",""CAMisc_ACR"",""CUP_CAMisc_ACR_3DMarkers"",""CAMisc_ACR_3DMarkers"",""CUP_CAMisc_ACR_Container"",""CAMisc_ACR_Container"",""CUP_CAMisc_ACR_Dog"",""CAMisc_ACR_Dog"",""CUP_CAMisc_ACR_Helpers"",""CAMisc_ACR_Helpers"",""CUP_CAMisc_ACR_PBX"",""CAMisc_ACR_PBX"",""CUP_CAMisc_ACR_ScaffoldingSmall"",""CAMisc_ACR_ScaffoldingSmall"",""CUP_CAMisc_ACR_Shooting_range"",""CAMisc_ACR_Shooting_range"",""CUP_CAMisc_ACR_Sign_Mines"",""CAMisc_ACR_Sign_Mines"",""CUP_CAMisc_ACR_Targets"",""CAMisc_ACR_Targets"",""CUP_CAMisc_ACR_Targets_InvisibleTarget"",""CAMisc_ACR_Targets_InvisibleTarget"",""CUP_CAMisc_ACR_TestSphere"",""CAMisc_ACR_TestSphere"",""CUP_CAMisc_BAF"",""CAMisc_BAF"",""CUP_Provinggrounds_pmc_Data"",""CUP_Provinggrounds_pmc_Config"",""ProvingGrounds_PMC"",""CUP_Shapur_baf_Data"",""CUP_Shapur_baf_Config"",""Shapur_BAF"",""CUP_BaseConfig_F"",""SEA_JLTS_ExtendedArsenal"",""SEA_GalacticMarine"",""SEA_JLTS_EA_Scopes"",""SEA_JLTS_Units"",""JLTS_drones_MSE6"",""OPTRE_MJOLNIR2_data_anims_Cargoposes_F"",""3as_uav"",""A3_Data_F_Loadorder"",""A3_Data_F_Curator"",""A3_Data_F_Curator_Characters"",""A3_Data_F_Curator_Eagle"",""A3_Data_F_Curator_Intel"",""A3_Data_F_Curator_Misc"",""A3_Data_F_Curator_Music"",""A3_Data_F_Curator_Respawn"",""A3_Data_F_Curator_Virtual"",""A3_Language_F_Curator"",""A3_Modules_F_Curator"",""A3_Modules_F_Curator_Animals"",""A3_Modules_F_Curator_CAS"",""A3_Modules_F_Curator_Curator"",""A3_Modules_F_Curator_Effects"",""A3_Modules_F_Curator_Environment"",""A3_Modules_F_Curator_Flares"",""A3_Modules_F_Curator_Intel"",""A3_Modules_F_Curator_Lightning"",""A3_Modules_F_Curator_Mines"",""A3_Modules_F_Curator_Misc"",""A3_Modules_F_Curator_Multiplayer"",""A3_Modules_F_Curator_Objectives"",""A3_Modules_F_Curator_Ordnance"",""A3_Modules_F_Curator_Respawn"",""A3_Modules_F_Curator_SmokeShells"",""JLTS_C_core"",""A3_Modules_F_Curator_Gravity_Beam"",""A3_Modules_F_Curator_Gravity_Strike"",""ZEI"",""A3_Missions_F_Curator"",""A3_Modules_F_Curator_Chemlights"",""A3_Data_F_Curator_Loadorder"",""A3_Data_F_Kart"",""A3_Data_F_Kart_ParticleEffects"",""A3_Language_F_Kart"",""A3_LanguageMissions_F_Kart"",""A3_Missions_F_Kart"",""A3_Missions_F_Kart_Data"",""A3_Modules_F_Kart"",""A3_Modules_F_Kart_Data"",""A3_Modules_F_Kart_TimeTrials"",""A3_Soft_F_Kart"",""A3_Soft_F_Kart_Kart_01"",""A3_Sounds_F_Kart"",""A3_Structures_F_Kart"",""A3_Structures_F_Kart_Civ_SportsGrounds"",""A3_Structures_F_Kart_Mil_Flags"",""A3_Structures_F_Kart_Signs_Companies"",""A3_Ui_F_Kart"",""A3_Weapons_F_Kart"",""A3_Weapons_F_Kart_Pistols_Pistol_Signal_F"",""A3_Anims_F_Kart"",""A3_Characters_F_Kart"",""A3_Data_F_Kart_Loadorder"",""A3_Data_F_Bootcamp"",""A3_Dubbing_F_Bootcamp"",""A3_Functions_F_Bootcamp"",""A3_Language_F_Bootcamp"",""A3_LanguageMissions_F_Bootcamp"",""A3_Map_VR"",""A3_Map_VR_Scenes_F"",""A3_Missions_F_Bootcamp"",""A3_Missions_F_Bootcamp_Data"",""A3_Missions_F_Bootcamp_Video"",""A3_Modules_F_Bootcamp"",""A3_Modules_F_Bootcamp_Misc"",""A3_Music_F_Bootcamp"",""A3_Music_F_Bootcamp_Music"",""A3_Soft_F_Bootcamp"",""A3_Soft_F_Bootcamp_Offroad_01"",""A3_Soft_F_Bootcamp_Quadbike_01"",""A3_Soft_F_Bootcamp_Van_01"",""A3_Sounds_F_Bootcamp"",""A3_Structures_F_Bootcamp"",""A3_Structures_F_Bootcamp_Civ_Camping"",""A3_Structures_F_Bootcamp_Civ_SportsGrounds"",""A3_Structures_F_Bootcamp_Ind_Cargo"",""A3_Structures_F_Bootcamp_Items_Electronics"",""A3_Structures_F_Bootcamp_Items_Food"",""A3_Structures_F_Bootcamp_Items_Sport"",""A3_Structures_F_Bootcamp_System"",""A3_Structures_F_Bootcamp_Training"",""A3_Structures_F_Bootcamp_VR_Blocks"",""A3_Structures_F_Bootcamp_VR_CoverObjects"",""A3_Structures_F_Bootcamp_VR_Helpers"",""A3_Ui_F_Bootcamp"",""A3_Weapons_F_Bootcamp"",""A3_Weapons_F_Bootcamp_Ammoboxes"",""A3_Weapons_F_Bootcamp_LongRangeRifles_GM6_Camo"",""A3_Weapons_F_Bootcamp_LongRangeRifles_M320_Camo"",""A3_Anims_F_Bootcamp"",""A3_Characters_F_Bootcamp"",""A3_Characters_F_Bootcamp_Common"",""A3_Data_F_Bootcamp_Loadorder"",""A3_Data_F_Heli"",""A3_Dubbing_F_Heli"",""A3_Functions_F_Heli"",""A3_Language_F_Heli"",""A3_LanguageMissions_F_Heli"",""A3_Missions_F_Heli"",""A3_Missions_F_Heli_Data"",""A3_Missions_F_Heli_Video"",""A3_Modules_F_Heli"",""A3_Modules_F_Heli_Misc"",""A3_Music_F_Heli"",""A3_Music_F_Heli_Music"",""A3_Soft_F_Heli"",""A3_Soft_F_Heli_Hatchback_01"",""A3_Soft_F_Heli_MRAP_01"",""A3_Soft_F_Heli_MRAP_02"",""A3_Soft_F_Heli_MRAP_03"",""A3_Soft_F_Heli_Quadbike_01"",""A3_Soft_F_Heli_SUV_01"",""A3_Soft_F_Heli_UGV_01"",""A3_Soft_F_Heli_Van_01"",""A3_Sounds_F_Heli"",""A3_Structures_F_Heli"",""A3_Structures_F_Heli_Civ_Accessories"",""A3_Structures_F_Heli_Civ_Constructions"",""A3_Structures_F_Heli_Civ_Garbage"",""A3_Structures_F_Heli_Civ_Market"",""A3_Structures_F_Heli_Furniture"",""A3_Structures_F_Heli_Ind_Airport"",""A3_Structures_F_Heli_Ind_Cargo"",""A3_Structures_F_Heli_Ind_Machines"",""A3_Structures_F_Heli_Items_Airport"",""A3_Structures_F_Heli_Items_Electronics"",""A3_Structures_F_Heli_Items_Food"",""A3_Structures_F_Heli_Items_Luggage"",""A3_Structures_F_Heli_Items_Sport"",""A3_Structures_F_Heli_Items_Tools"",""A3_Structures_F_Heli_VR_Helpers"",""A3_Supplies_F_Heli"",""A3_Supplies_F_Heli_Bladders"",""A3_Supplies_F_Heli_CargoNets"",""A3_Supplies_F_Heli_Fuel"",""A3_Supplies_F_Heli_Slingload"",""A3_Ui_F_Heli"",""OPTRE_MJOLNIR_data_anims_Cargoposes_F_Heli"",""A3_Air_F_Heli"",""A3_Air_F_Heli_Heli_Attack_01"",""A3_Air_F_Heli_Heli_Attack_02"",""A3_Air_F_Heli_Heli_Light_01"",""A3_Air_F_Heli_Heli_Light_02"",""A3_Air_F_Heli_Heli_Light_03"",""A3_Air_F_Heli_Heli_Transport_01"",""A3_Air_F_Heli_Heli_Transport_02"",""A3_Air_F_Heli_Heli_Transport_03"",""A3_Air_F_Heli_Heli_Transport_04"",""A3_Anims_F_Heli"",""A3_Boat_F_Heli"",""A3_Boat_F_Heli_Boat_Armed_01"",""A3_Boat_F_Heli_SDV_01"",""A3_Cargoposes_F_Heli"",""A3_Data_F_Heli_Loadorder"",""A3_Data_F_Mark"",""A3_Dubbing_F_Mark"",""A3_Dubbing_F_MP_Mark"",""A3_Functions_F_Mark"",""A3_Functions_F_MP_Mark"",""A3_Language_F_Mark"",""A3_Language_F_MP_Mark"",""A3_LanguageMissions_F_Mark"",""A3_LanguageMissions_F_MP_Mark"",""A3_Missions_F_Mark"",""A3_Missions_F_Mark_Data"",""A3_Missions_F_Mark_Video"",""A3_Missions_F_MP_Mark"",""A3_Missions_F_MP_Mark_Data"",""A3_Modules_F_Mark"",""A3_Modules_F_Mark_FiringDrills"",""A3_Modules_F_MP_Mark"",""A3_Modules_F_MP_Mark_Objectives"",""A3_Music_F_Mark"",""A3_Music_F_Mark_Music"",""A3_Sounds_F_Mark"",""A3_Static_F_Mark"",""A3_Static_F_Mark_Designator_01"",""A3_Static_F_Mark_Designator_02"",""A3_Structures_F_Mark"",""A3_Structures_F_Mark_Items_Military"",""A3_Structures_F_Mark_Items_Sport"",""A3_Structures_F_Mark_Mil_Flags"",""A3_Structures_F_Mark_Training"",""A3_Structures_F_Mark_VR_Helpers"",""A3_Structures_F_Mark_VR_Shapes"",""A3_Structures_F_Mark_VR_Targets"",""A3_Supplies_F_Mark"",""A3_Ui_F_Mark"",""A3_Ui_F_MP_Mark"",""A3_Weapons_F_Mark"",""A3_Weapons_F_Mark_Acc"",""A3_Weapons_F_Mark_LongRangeRifles_DMR_01"",""A3_Weapons_F_Mark_LongRangeRifles_DMR_02"",""A3_Weapons_F_Mark_LongRangeRifles_DMR_03"",""A3_Weapons_F_Mark_LongRangeRifles_DMR_04"",""A3_Weapons_F_Mark_LongRangeRifles_DMR_05"",""A3_Weapons_F_Mark_LongRangeRifles_DMR_06"",""A3_Weapons_F_Mark_LongRangeRifles_EBR"",""A3_Weapons_F_Mark_LongRangeRifles_GM6"",""A3_Weapons_F_Mark_LongRangeRifles_GM6_Camo"",""A3_Weapons_F_Mark_LongRangeRifles_M320"",""A3_Weapons_F_Mark_LongRangeRifles_M320_Camo"",""A3_Weapons_F_Mark_Machineguns_M200"",""A3_Weapons_F_Mark_Machineguns_MMG_01"",""A3_Weapons_F_Mark_Machineguns_MMG_02"",""A3_Weapons_F_Mark_Machineguns_Zafir"",""A3_Weapons_F_Mark_Rifles_Khaybar"",""A3_Weapons_F_Mark_Rifles_MK20"",""A3_Weapons_F_Mark_Rifles_MX"",""A3_Weapons_F_Mark_Rifles_SDAR"",""A3_Weapons_F_Mark_Rifles_TRG20"",""TKE_Europa"",""TKE_Props"",""TKE_Props_Mars"",""A3_Anims_F_Mark"",""A3_Anims_F_Mark_Deployment"",""A3_Characters_F_Mark"",""A3_Data_F_Mark_Loadorder"",""A3_Data_F_Exp_A"",""A3_Functions_F_Exp_A"",""A3_Language_F_Exp_A"",""A3_LanguageMissions_F_Exp_A"",""A3_Missions_F_Exp_A"",""A3_Missions_F_Exp_A_Data"",""A3_Modules_F_Exp_A"",""A3_Props_F_Exp_A"",""A3_Props_F_Exp_A_Military"",""A3_Props_F_Exp_A_Military_Equipment"",""A3_Sounds_F_Exp_A"",""A3_Structures_F_Exp_A"",""A3_Structures_F_Exp_A_VR_Blocks"",""A3_Structures_F_Exp_A_VR_Helpers"",""A3_Ui_F_Exp_A"",""OPTRE_MJOLNIR_data_anims_Anims_F_Exp_A"",""A3_Anims_F_Exp_A"",""A3_Data_F_Exp_A_Virtual"",""A3_Data_F_Exp_A_Loadorder"",""A3_Data_F_Exp_B"",""A3_Language_F_Exp_B"",""A3_3DEN"",""A3_3DEN_Language"",""A3_BaseConfig_F"",""3DEN"",""A3_Animals_F_Chicken"",""A3_Animals_F_Dog"",""A3_Animals_F_Goat"",""A3_Animals_F_Sheep"",""A3_Armor_F_Panther"",""A3_Armor_F_AMV"",""A3_Armor_F_Marid"",""A3_Armor_F_APC_Wheeled_03"",""A3_Armor_F_Slammer"",""A3_Armor_F_T100K"",""A3_Boat_F_SDV_01"",""A3_Boat_F_EPC_Submarine_01_F"",""A3_Boat_F_Civilian_Boat"",""A3_Boat_F_Trawler"",""A3_Characters_F_INDEP"",""A3_Air_F_Gamma_UAV_01"",""A3_Air_F_Gamma_UAV_02"",""A3_UAV_F_Characters_F_Gamma"",""A3_Soft_F_Crusher_UGV"",""A3_UAV_F_Weapons_F_Gamma_Ammoboxes"",""A3_Weapons_F_gamma_Items"",""A3_Map_Altis_Scenes"",""A3_Map_Stratis_Scenes"",""Map_VR"",""A3_Map_VR_Scenes"",""A3_Modules_F_Heli_SpawnAi"",""A3_Modules_F_Mark_Objectives"",""A3_Signs_F_AD"",""A3_Soft_F_Quadbike"",""A3_Soft_F_MRAP_03"",""A3_Soft_F_Beta_Quadbike"",""A3_Soft_F_HEMTT"",""A3_Soft_F_TruckHeavy"",""A3_Soft_F_Bootcamp_Quadbike"",""A3_Soft_F_Bootcamp_Truck"",""A3_Soft_F_Car"",""A3_Soft_F_Gamma_Offroad"",""A3_Soft_F_Gamma_Quadbike"",""A3_Soft_F_SUV"",""A3_Soft_F_Gamma_HEMTT"",""A3_Soft_F_Gamma_TruckHeavy"",""A3_Soft_F_Truck"",""A3_Soft_F_Heli_Car"",""A3_Soft_F_Heli_Quadbike"",""A3_Soft_F_Heli_SUV"",""A3_Soft_F_Heli_Crusher_UGV"",""A3_Soft_F_Heli_Truck"",""A3_Static_F_Gamma_AA"",""A3_Static_F_Gamma_AT"",""A3_Structures_F_Items_Cans"",""A3_Weapons_F_NATO"",""A3_Weapons_F_CSAT"",""A3_Weapons_F_AAF"",""A3_weapons_F_FIA"",""A3_Weapons_F_ItemHolders"",""A3_Weapons_F_Headgear"",""A3_Weapons_F_Uniforms"",""A3_Weapons_F_Vests"",""A3_Weapons_F_Launchers_LAW"",""A3_Weapons_F_EPA_LongRangeRifles_DMR_01"",""A3_Weapons_F_EBR"",""A3_Weapons_F_EPB_Rifles_MX_Black"",""A3_Weapons_F_Pistols_PDW2000"",""A3_Weapons_F_Rifles_Vector"",""a3_weapons_f_rifles_SMG_02"",""A3_Weapons_F_beta_EBR"",""A3_Weapons_F_EPA_LongRangeRifles_GM6"",""A3_Weapons_F_EPB_LongRangeRifles_M320"",""A3_Weapons_F_Bootcamp_LongRangeRifles_GM6"",""A3_Weapons_F_Bootcamp_LongRangeRifles_M320"",""A3_Weapons_F_EPB_LongRangeRifles_GM3"",""A3_Weapons_F_EPA_EBR"",""A3_Weapons_F_EPA_Rifles_MX"",""A3_Weapons_F_Mark_EBR"",""CuratorOnly_Air_F_Beta_Heli_Attack_01"",""CuratorOnly_Air_F_Beta_Heli_Attack_02"",""CuratorOnly_Air_F_Gamma_UAV_01"",""CuratorOnly_Armor_F_AMV"",""CuratorOnly_armor_f_beta_APC_Tracked_02"",""CuratorOnly_Armor_F_Marid"",""CuratorOnly_Armor_F_Panther"",""CuratorOnly_Armor_F_Slammer"",""CuratorOnly_Armor_F_T100K"",""CuratorOnly_Boat_F_Boat_Armed_01"",""CuratorOnly_Characters_F_BLUFOR"",""CuratorOnly_Characters_F_Common"",""CuratorOnly_Characters_F_OPFOR"",""CuratorOnly_Modules_F_Curator_Animals"",""CuratorOnly_Modules_F_Curator_Chemlights"",""CuratorOnly_Modules_F_Curator_Effects"",""CuratorOnly_Modules_F_Curator_Environment"",""CuratorOnly_Modules_F_Curator_Flares"",""CuratorOnly_Modules_F_Curator_Lightning"",""CuratorOnly_Modules_F_Curator_Mines"",""CuratorOnly_Modules_F_Curator_Objectives"",""CuratorOnly_Modules_F_Curator_Ordnance"",""CuratorOnly_Modules_F_Curator_Smokeshells"",""CuratorOnly_Signs_F"",""CuratorOnly_Soft_F_Crusher_UGV"",""CuratorOnly_Soft_F_MRAP_01"",""CuratorOnly_Soft_F_MRAP_02"",""CuratorOnly_Soft_F_Quadbike"",""CuratorOnly_Static_F_Gamma"",""CuratorOnly_Static_F_Mortar_01"",""CuratorOnly_Structures_F_Civ_Ancient"",""CuratorOnly_Structures_F_Civ_Camping"",""CuratorOnly_Structures_F_Civ_Garbage"",""CuratorOnly_Structures_F_EPA_Civ_Constructions"",""CuratorOnly_Structures_F_EPB_Civ_Dead"",""CuratorOnly_Structures_F_Ind_Cargo"",""CuratorOnly_Structures_F_Ind_Crane"",""CuratorOnly_Structures_F_Ind_ReservoirTank"",""CuratorOnly_Structures_F_Ind_Transmitter_Tower"",""CuratorOnly_Structures_F_Items_Vessels"",""CuratorOnly_Structures_F_Mil_BagBunker"",""CuratorOnly_Structures_F_Mil_BagFence"",""CuratorOnly_Structures_F_Mil_Cargo"",""CuratorOnly_Structures_F_Mil_Fortification"",""CuratorOnly_Structures_F_Mil_Radar"",""CuratorOnly_Structures_F_Mil_Shelters"",""CuratorOnly_Structures_F_Research"",""CuratorOnly_Structures_F_Walls"",""CuratorOnly_Structures_F_Wrecks"",""A3_Data_F_Exp_B_Loadorder"",""A3_Data_F_Mod"",""A3_Language_F_Mod"",""A3_Sounds_F_Mod"",""A3_Weapons_F_Mod"",""A3_Weapons_F_Mod_SMGs_SMG_03"",""BABE_CORE_FNC"",""BABE_EM_FNC"",""BABE_INT_FNC"",""CUP_Core"",""CUP_Music"",""CUP_StandaloneTerrains_Core"",""CUP_StandaloneTerrains_Core_Faction"",""CUP_StandaloneTerrains_Core_VehicleClass"",""CUP_Terrains_Winter_Plants"",""CUP_Terrains_Winter_Plants_Bushes"",""CUP_Terrains_Winter_Plants_Clutter"",""CUP_Terrains_Winter_Plants_Trees"",""CUP_Worlds"",""CUP_Worlds_Ambient"",""CUP_Worlds_Author"",""CUP_Worlds_Clutter"",""CUP_Worlds_ClutterDist"",""CUP_Worlds_Delete"",""CUP_Worlds_DustEffects"",""CUP_Worlds_EnvSounds"",""CUP_Worlds_FullDetailDist"",""CUP_Worlds_Grid"",""CUP_Worlds_Intros"",""CUP_Worlds_Lighting"",""CUP_CWA_Lighting"",""CUP_Desert_Lighting"",""CUP_European_Lighting"",""CUP_Tropical_Lighting"",""CUP_Worlds_MapSize"",""CUP_Worlds_MidDetailTexture"",""CUP_Worlds_NoDetailDist"",""CUP_Worlds_PictureMap"",""CUP_Worlds_PictureShot"",""CUP_Worlds_PreviewVideo"",""CUP_Worlds_Seabed"",""CUP_Worlds_SkyTexture"",""CUP_Worlds_StreetLamp"",""CUP_Worlds_Surfaces"",""CUP_Worlds_Water"",""GO_Data_Winter"",""A3_Map_Abramia"",""A3_Map_IslaDuala3"",""Jbad_Cat_Dumper"",""Jbad_Forklift"",""OPTRE_MJOLNIR_data_anims_Anims_F_Mod"",""WBK_Zombies_AdvancedEditorSettings"",""A3_Anims_F_Mod"",""A3_Data_F_Exp"",""A3_Data_F_Exp_ParticleEffects"",""A3_Data_F_Mod_Loadorder"",""A3_Dubbing_F_Exp"",""A3_Dubbing_Radio_F_EXP"",""A3_Dubbing_Radio_F_EXP_Data_CHI"",""A3_Dubbing_Radio_F_EXP_Data_ENGFRE"",""A3_Dubbing_Radio_F_EXP_Data_FRE"",""A3_EditorPreviews_F_Exp"",""A3_Functions_F_Exp"",""A3_Language_F_Exp"",""A3_LanguageMissions_F_Exp"",""A3_Missions_F_Exp"",""A3_Missions_F_Exp_Data"",""A3_Missions_F_Exp_Video"",""A3_Modules_F_Exp"",""A3_Music_F_Exp"",""A3_Music_F_Exp_Music"",""A3_Props_F_Exp"",""A3_Props_F_Exp_Civilian"",""A3_Props_F_Exp_Civilian_Garbage"",""A3_Props_F_Exp_Commercial"",""A3_Props_F_Exp_Commercial_Market"",""A3_Props_F_Exp_Industrial"",""A3_Props_F_Exp_Industrial_HeavyEquipment"",""A3_Props_F_Exp_Infrastructure"",""A3_Props_F_Exp_Infrastructure_Railways"",""A3_Props_F_Exp_Infrastructure_Traffic"",""A3_Props_F_Exp_Military"",""A3_Props_F_Exp_Military_Camps"",""A3_Props_F_Exp_Military_OldPlaneWrecks"",""A3_Props_F_Exp_Naval"",""A3_Props_F_Exp_Naval_Boats"",""A3_Rocks_F_Exp"",""A3_Rocks_F_Exp_Cliff"",""A3_Rocks_F_Exp_LavaStones"",""A3_Soft_F_Exp"",""A3_Soft_F_Exp_LSV_01"",""A3_Soft_F_Exp_LSV_02"",""A3_Soft_F_Exp_MRAP_01"",""A3_Soft_F_Exp_MRAP_02"",""A3_Soft_F_Exp_Offroad_01"",""A3_Soft_F_Exp_Offroad_02"",""A3_Soft_F_Exp_Quadbike_01"",""A3_Soft_F_Exp_Truck_01"",""A3_Soft_F_Exp_Truck_02"",""A3_Soft_F_Exp_Truck_03"",""A3_Soft_F_Exp_UGV_01"",""A3_Soft_F_Exp_Van_01"",""A3_Static_F_Exp"",""A3_Static_F_Exp_AA_01"",""A3_Static_F_Exp_AT_01"",""A3_Static_F_Exp_GMG_01"",""A3_Static_F_Exp_HMG_01"",""A3_Static_F_Exp_Mortar_01"",""A3_Structures_F_Exp"",""A3_Structures_F_Exp_Civilian"",""A3_Structures_F_Exp_Civilian_Accessories"",""A3_Structures_F_Exp_Civilian_Garages"",""A3_Structures_F_Exp_Civilian_House_Big_01"",""A3_Structures_F_Exp_Civilian_House_Big_02"",""A3_Structures_F_Exp_Civilian_House_Big_03"",""A3_Structures_F_Exp_Civilian_House_Big_04"",""A3_Structures_F_Exp_Civilian_House_Big_05"",""A3_Structures_F_Exp_Civilian_House_Native_01"",""A3_Structures_F_Exp_Civilian_House_Native_02"",""A3_Structures_F_Exp_Civilian_House_Small_01"",""A3_Structures_F_Exp_Civilian_House_Small_02"",""A3_Structures_F_Exp_Civilian_House_Small_03"",""A3_Structures_F_Exp_Civilian_House_Small_04"",""A3_Structures_F_Exp_Civilian_House_Small_05"",""A3_Structures_F_Exp_Civilian_House_Small_06"",""A3_Structures_F_Exp_Civilian_School_01"",""A3_Structures_F_Exp_Civilian_Sheds"",""A3_Structures_F_Exp_Civilian_Slum_01"",""A3_Structures_F_Exp_Civilian_Slum_02"",""A3_Structures_F_Exp_Civilian_Slum_03"",""A3_Structures_F_Exp_Civilian_Slum_04"",""A3_Structures_F_Exp_Civilian_Slum_05"",""A3_Structures_F_Exp_Civilian_SportsGrounds"",""A3_Structures_F_Exp_Commercial"",""A3_Structures_F_Exp_Commercial_Addons"",""A3_Structures_F_Exp_Commercial_Advertisements"",""A3_Structures_F_Exp_Commercial_FuelStation_01"",""A3_Structures_F_Exp_Commercial_FuelStation_02"",""A3_Structures_F_Exp_Commercial_Hotel_01"",""A3_Structures_F_Exp_Commercial_Hotel_02"",""A3_Structures_F_Exp_Commercial_Market"",""A3_Structures_F_Exp_Commercial_MultistoryBuilding_01"",""A3_Structures_F_Exp_Commercial_MultistoryBuilding_03"",""A3_Structures_F_Exp_Commercial_MultistoryBuilding_04"",""A3_Structures_F_Exp_Commercial_Shop_City_01"",""A3_Structures_F_Exp_Commercial_Shop_City_02"",""A3_Structures_F_Exp_Commercial_Shop_City_03"",""A3_Structures_F_Exp_Commercial_Shop_City_04"",""A3_Structures_F_Exp_Commercial_Shop_City_05"",""A3_Structures_F_Exp_Commercial_Shop_City_06"",""A3_Structures_F_Exp_Commercial_Shop_City_07"",""A3_Structures_F_Exp_Commercial_Shop_Town_01"",""A3_Structures_F_Exp_Commercial_Shop_Town_02"",""A3_Structures_F_Exp_Commercial_Shop_Town_03"",""A3_Structures_F_Exp_Commercial_Shop_Town_04"",""A3_Structures_F_Exp_Commercial_Shop_Town_05"",""A3_Structures_F_Exp_Commercial_Supermarket_01"",""A3_Structures_F_Exp_Commercial_Warehouses"",""A3_Structures_F_Exp_Cultural"",""A3_Structures_F_Exp_Cultural_AncientRelics"",""A3_Structures_F_Exp_Cultural_BasaltRuins"",""A3_Structures_F_Exp_Cultural_Cathedral_01"",""A3_Structures_F_Exp_Cultural_Cemeteries"",""A3_Structures_F_Exp_Cultural_Church_01"",""A3_Structures_F_Exp_Cultural_Church_02"",""A3_Structures_F_Exp_Cultural_Church_03"",""A3_Structures_F_Exp_Cultural_Fortress_01"",""A3_Structures_F_Exp_Cultural_Temple_Native_01"",""A3_Structures_F_Exp_Cultural_Totems"",""A3_Structures_F_Exp_Data"",""A3_Structures_F_Exp_Industrial"",""A3_Structures_F_Exp_Industrial_DieselPowerPlant_01"",""A3_Structures_F_Exp_Industrial_Fields"",""A3_Structures_F_Exp_Industrial_Materials"",""A3_Structures_F_Exp_Industrial_Port"",""A3_Structures_F_Exp_Industrial_Stockyard_01"",""A3_Structures_F_Exp_Industrial_SugarCaneFactory_01"",""A3_Structures_F_Exp_Industrial_SurfaceMine_01"",""A3_Structures_F_Exp_Infrastructure"",""A3_Structures_F_Exp_Infrastructure_Airports"",""A3_Structures_F_Exp_Infrastructure_Bridges"",""A3_Structures_F_Exp_Infrastructure_Pavements"",""A3_Structures_F_Exp_Infrastructure_Powerlines"",""A3_Structures_F_Exp_Infrastructure_Railways"",""A3_Structures_F_Exp_Infrastructure_Roads"",""A3_Structures_F_Exp_Infrastructure_Runways"",""A3_Structures_F_Exp_Infrastructure_WaterSupply"",""A3_Structures_F_Exp_Military"",""A3_Structures_F_Exp_Military_Barracks_01"",""A3_Structures_F_Exp_Military_Camonets"",""A3_Structures_F_Exp_Military_ContainerBases"",""A3_Structures_F_Exp_Military_Emplacements"",""A3_Structures_F_Exp_Military_Flags"",""A3_Structures_F_Exp_Military_Fortifications"",""A3_Structures_F_Exp_Military_Pillboxes"",""A3_Structures_F_Exp_Military_Trenches"",""A3_Structures_F_Exp_Naval"",""A3_Structures_F_Exp_Naval_Canals"",""A3_Structures_F_Exp_Naval_Piers"",""A3_Structures_F_Exp_Signs"",""A3_Structures_F_Exp_Signs_Companies"",""A3_Structures_F_Exp_Signs_Traffic"",""A3_Structures_F_Exp_Walls"",""A3_Structures_F_Exp_Walls_BackAlleys"",""A3_Structures_F_Exp_Walls_Bamboo"",""A3_Structures_F_Exp_Walls_Concrete"",""A3_Structures_F_Exp_Walls_Crashbarriers"",""A3_Structures_F_Exp_Walls_Hedges"",""A3_Structures_F_Exp_Walls_Net"",""A3_Structures_F_Exp_Walls_Pipe"",""A3_Structures_F_Exp_Walls_Polewalls"",""A3_Structures_F_Exp_Walls_Railings"",""A3_Structures_F_Exp_Walls_Slum"",""A3_Structures_F_Exp_Walls_Stone"",""A3_Structures_F_Exp_Walls_Tin"",""A3_Structures_F_Exp_Walls_Wired"",""A3_Structures_F_Exp_Walls_Wooden"",""A3_Supplies_F_Exp"",""A3_Supplies_F_Exp_Ammoboxes"",""A3_Ui_F_Exp"",""A3_Vegetation_F_Exp"",""A3_Weapons_F_Exp"",""A3_Weapons_F_Exp_Launchers_RPG32"",""A3_Weapons_F_Exp_Launchers_RPG7"",""A3_Weapons_F_Exp_Launchers_Titan"",""A3_Weapons_F_Exp_LongRangeRifles_DMR_07"",""A3_Weapons_F_Exp_Machineguns_LMG_03"",""A3_Weapons_F_Exp_Pistols_Pistol_01"",""A3_Weapons_F_Exp_Rifles_AK12"",""A3_Weapons_F_Exp_Rifles_AKM"",""A3_Weapons_F_Exp_Rifles_AKS"",""A3_Weapons_F_Exp_Rifles_ARX"",""A3_Weapons_F_Exp_Rifles_CTAR"",""A3_Weapons_F_Exp_Rifles_CTARS"",""A3_Weapons_F_Exp_Rifles_SPAR_01"",""A3_Weapons_F_Exp_Rifles_SPAR_02"",""A3_Weapons_F_Exp_Rifles_SPAR_03"",""A3_Weapons_F_Exp_SMGs_SMG_05"",""mass_item"",""mass_tri_item"",""CUP_A1_EditorObjects"",""CUP_A2_EditorObjects"",""CUP_Chernarus_Winter_Config"",""CUP_Chernarus_Winter"",""CUP_Terrains_Noe"",""CUP_Terrains_Roadfix"",""CUP_Weather"",""GOT_Map_IslaPera"",""GO_Rocks_N_Cliffs"",""GO_Rocks_N_Snow"",""go_structures_f_highway_roadsigns"",""go_structures_ip_misc_ropebridge"",""go_vegetation_f_trees"",""hotze_mske_config"",""Jbad_Misc_Powerline"",""OPTRE_MJOLNIR_data_anims_Cargoposes_F_Exp"",""A3_Air_F_Exp"",""A3_Air_F_Exp_Heli_Light_01"",""A3_Air_F_Exp_Heli_Transport_01"",""A3_Air_F_Exp_Plane_Civil_01"",""A3_Air_F_Exp_UAV_03"",""A3_Air_F_Exp_UAV_04"",""A3_Air_F_Exp_VTOL_01"",""A3_Air_F_Exp_VTOL_02"",""A3_Anims_F_Exp"",""A3_Anims_F_Exp_Revive"",""A3_Armor_F_Exp"",""A3_Armor_F_Exp_APC_Tracked_01"",""A3_Armor_F_Exp_APC_Tracked_02"",""A3_Armor_F_Exp_APC_Wheeled_01"",""A3_Armor_F_Exp_APC_Wheeled_02"",""A3_Armor_F_Exp_MBT_01"",""A3_Armor_F_Exp_MBT_02"",""A3_Boat_F_Exp"",""A3_Boat_F_Exp_Boat_Armed_01"",""A3_Boat_F_Exp_Boat_Transport_01"",""A3_Boat_F_Exp_Boat_Transport_02"",""A3_Boat_F_Exp_Scooter_Transport_01"",""A3_Cargoposes_F_Exp"",""A3_Characters_F_Exp"",""A3_Characters_F_Exp_Civil"",""A3_Characters_F_Exp_Headgear"",""A3_Characters_F_Exp_Vests"",""A3_Sounds_F_Exp"",""escapefromtarkov_soundenvironext"",""GO_Skins_Winter"",""jbad_sounds"",""Jbad_afghan_houses_c2"",""Jbad_afghan_houses_c"",""jbad_bunkers"",""Jbad_Generalstore"",""Jbad_Ind_Oil_Mine"",""Jbad_Ind_SawMill"",""jbad_opxbuildings2"",""jbad_opxmisc2_def"",""jbad_opxmisc2_gate"",""jbad_opxmisc2_market"",""jbad_opxmisc2_mural"",""jbad_opxmisc2_road_attrib"",""jbad_opxmisc2_sidewalks"",""jbad_opxmisc2_signs"",""jbad_opxmisc2_stuff"",""jbad_opxmisc2_trash"",""jbad_opxmisc2_wall"",""Jbad_shops"",""A3_Data_F_Exp_Loadorder"",""A3_Data_F_Jets"",""A3_Dubbing_F_Jets"",""A3_EditorPreviews_F_Jets"",""A3_Functions_F_Destroyer"",""A3_Functions_F_Jets"",""A3_Language_F_Jets"",""A3_LanguageMissions_F_Jets"",""A3_Modules_F_Jets"",""A3_Music_F_Jets"",""A3_Props_F_Jets"",""A3_Props_F_Jets_Military_Tractor"",""A3_Props_F_Jets_Military_Trolley"",""A3_Sounds_F_Jets"",""A3_Static_F_Jets"",""A3_Static_F_Jets_AAA_System_01"",""A3_Static_F_Jets_SAM_System_01"",""A3_Static_F_Jets_SAM_System_02"",""A3_Ui_F_Jets"",""A3_Weapons_F_Jets"",""ffaa_map_lythium"",""OPTRE_MJOLNIR_data_anims_Cargoposes_F_Jets"",""A3_Air_F_Jets"",""A3_Air_F_Jets_Plane_Fighter_01"",""A3_Air_F_Jets_Plane_Fighter_02"",""A3_Air_F_Jets_Plane_Fighter_04"",""A3_Air_F_Jets_UAV_05"",""A3_Anims_F_Jets"",""A3_Boat_F_Jets"",""A3_Boat_F_Jets_Carrier_01"",""A3_Cargoposes_F_Jets"",""A3_Characters_F_Jets"",""A3_Characters_F_Jets_Vests"",""A3_Missions_F_Jets"",""fxp_VehPlane"",""TKE_DropPods"",""3AS_Delta7"",""A3_Boat_F_Destroyer"",""A3_Boat_F_Destroyer_Destroyer_01"",""A3_Data_F_Jets_Loadorder"",""A3_Data_F_Argo"",""A3_EditorPreviews_F_Argo"",""A3_Language_F_Argo"",""A3_Map_Malden"",""A3_Map_Malden_Data"",""A3_Map_Malden_Data_Layers"",""A3_Map_Malden_Scenes_F"",""A3_Music_F_Argo"",""A3_Props_F_Argo"",""A3_Props_F_Argo_Civilian"",""A3_Props_F_Argo_Civilian_InfoBoards"",""A3_Props_F_Argo_Items"",""A3_Props_F_Argo_Items_Documents"",""A3_Props_F_Argo_Items_Electronics"",""A3_Rocks_F_Argo"",""A3_Rocks_F_Argo_Limestone"",""A3_Structures_F_Argo"",""A3_Structures_F_Argo_Civilian"",""A3_Structures_F_Argo_Civilian_Accessories"",""A3_Structures_F_Argo_Civilian_Addons"",""A3_Structures_F_Argo_Civilian_Garbage"",""A3_Structures_F_Argo_Civilian_House_Big01"",""A3_Structures_F_Argo_Civilian_House_Big02"",""A3_Structures_F_Argo_Civilian_House_Small01"",""A3_Structures_F_Argo_Civilian_House_Small02"",""A3_Structures_F_Argo_Civilian_Stone_House_Big_01"",""A3_Structures_F_Argo_Civilian_Stone_Shed_01"",""A3_Structures_F_Argo_Civilian_Unfinished_Building_01"",""A3_Structures_F_Argo_Commercial"",""A3_Structures_F_Argo_Commercial_Accessories"",""A3_Structures_F_Argo_Commercial_Billboards"",""A3_Structures_F_Argo_Commercial_FuelStation_01"",""A3_Structures_F_Argo_Commercial_Shop_02"",""A3_Structures_F_Argo_Commercial_Supermarket_01"",""A3_Structures_F_Argo_Cultural"",""A3_Structures_F_Argo_Cultural_Church"",""A3_Structures_F_Argo_Cultural_Statues"",""A3_Structures_F_Argo_Decals"",""A3_Structures_F_Argo_Decals_Horizontal"",""A3_Structures_F_Argo_Industrial"",""A3_Structures_F_Argo_Industrial_Agriculture"",""A3_Structures_F_Argo_Industrial_Materials"",""A3_Structures_F_Argo_Infrastructure"",""A3_Structures_F_Argo_Infrastructure_Runways"",""A3_Structures_F_Argo_Infrastructure_Seaports"",""A3_Structures_F_Argo_Infrastructure_WaterSupply"",""A3_Structures_F_Argo_Military"",""A3_Structures_F_Argo_Military_Bunkers"",""A3_Structures_F_Argo_Military_ContainerBases"",""A3_Structures_F_Argo_Military_Domes"",""A3_Structures_F_Argo_Military_Fortifications"",""A3_Structures_F_Argo_Military_Turrets"",""A3_Structures_F_Argo_Signs"",""A3_Structures_F_Argo_Signs_City"",""A3_Structures_F_Argo_Signs_Directions"",""A3_Structures_F_Argo_Signs_Warnings"",""A3_Structures_F_Argo_Walls"",""A3_Structures_F_Argo_Walls_City"",""A3_Structures_F_Argo_Walls_Concrete"",""A3_Structures_F_Argo_Walls_Military"",""A3_Structures_F_Argo_Walls_Net"",""A3_Structures_F_Argo_Walls_Pipe"",""A3_Structures_F_Argo_Walls_Tin"",""A3_Structures_F_Argo_Walls_Wooden"",""A3_Structures_F_Argo_Wrecks"",""A3_Vegetation_F_Argo"",""hebontes"",""light"",""lighty"",""A3_Armor_F_Argo"",""A3_Armor_F_Argo_APC_Tracked_01"",""A3_Armor_F_Argo_APC_Wheeled_02"",""A3_Data_F_Argo_Loadorder"",""A3_Data_F_Patrol"",""A3_Functions_F_Patrol"",""A3_Language_F_Patrol"",""A3_LanguageMissions_F_Patrol"",""A3_Map_Tanoabuka"",""A3_Map_Tanoabuka_Data"",""A3_Map_Tanoabuka_Data_Layers"",""A3_Modules_F_Patrol"",""A3_Sounds_F_Patrol"",""A3_Ui_F_Patrol"",""A3_Weapons_F_Patrol"",""ReducedHazeMod"",""A3_Characters_F_Patrol"",""A3_Map_Tanoa_Scenes_F"",""A3_Missions_F_Patrol"",""A3_Data_F_Patrol_Loadorder"",""A3_Data_F_Orange"",""A3_Dubbing_F_Orange"",""A3_EditorPreviews_F_Orange"",""A3_Functions_F_Orange"",""A3_Language_F_Orange"",""A3_LanguageMissions_F_Orange"",""A3_Missions_F_Orange"",""A3_Modules_F_Orange"",""A3_Music_F_Orange"",""A3_Props_F_Orange"",""A3_Props_F_Orange_Civilian"",""A3_Props_F_Orange_Civilian_Constructions"",""A3_Props_F_Orange_Civilian_InfoBoards"",""A3_Props_F_Orange_Furniture"",""A3_Props_F_Orange_Humanitarian"",""A3_Props_F_Orange_Humanitarian_Camps"",""A3_Props_F_Orange_Humanitarian_Garbage"",""A3_Props_F_Orange_Humanitarian_Supplies"",""A3_Props_F_Orange_Items"",""A3_Props_F_Orange_Items_Decorative"",""A3_Props_F_Orange_Items_Documents"",""A3_Props_F_Orange_Items_Electronics"",""A3_Props_F_Orange_Items_Tools"",""A3_Soft_F_Orange"",""A3_Soft_F_Orange_Offroad_01"",""A3_Soft_F_Orange_Offroad_02"",""A3_Soft_F_Orange_Truck_02"",""A3_Soft_F_Orange_UGV_01"",""A3_Soft_F_Orange_Van_02"",""A3_Structures_F_Orange"",""A3_Structures_F_Orange_Humanitarian"",""A3_Structures_F_Orange_Humanitarian_Camps"",""A3_Structures_F_Orange_Humanitarian_Flags"",""A3_Structures_F_Orange_Industrial"",""A3_Structures_F_Orange_Industrial_Cargo"",""A3_Structures_F_Orange_Signs"",""A3_Structures_F_Orange_Signs_Mines"",""A3_Structures_F_Orange_Signs_Special"",""A3_Structures_F_Orange_VR_Helpers"",""A3_Structures_F_Orange_Walls"",""A3_Structures_F_Orange_Walls_Plastic"",""A3_Supplies_F_Orange"",""A3_Supplies_F_Orange_Ammoboxes"",""A3_Supplies_F_Orange_Bags"",""A3_Supplies_F_Orange_CargoNets"",""A3_Ui_F_Orange"",""A3_Weapons_F_Orange"",""A3_Weapons_F_Orange_Explosives"",""A3_Weapons_F_Orange_Items"",""OPTRE_MJOLNIR_data_anims_Cargoposes_F_Orange"",""A3_Air_F_Orange"",""A3_Air_F_Orange_Heli_Transport_02"",""A3_Air_F_Orange_UAV_01"",""A3_Air_F_Orange_UAV_06"",""A3_Cargoposes_F_Orange"",""A3_Characters_F_Orange"",""A3_Characters_F_Orange_Facewear"",""A3_Characters_F_Orange_Headgear"",""A3_Characters_F_Orange_Uniforms"",""A3_Characters_F_Orange_Vests"",""A3_Sounds_F_Orange"",""A3_Data_F_Orange_Loadorder"",""A3_Data_F_Tacops"",""A3_Dubbing_F_Tacops"",""A3_Functions_F_Tacops"",""A3_Language_F_Tacops"",""A3_LanguageMissions_F_Tacops"",""A3_Missions_F_Tacops"",""A3_Modules_F_Tacops"",""A3_Music_F_Tacops"",""A3_Sounds_F_Tacops"",""A3_Ui_F_Tacops"",""A3_Characters_F_Tacops"",""A3_Data_F_Tacops_Loadorder"",""A3_Data_F_Tank"",""A3_Dubbing_F_Tank"",""A3_EditorPreviews_F_Tank"",""A3_Functions_F_Tank"",""A3_Language_F_Tank"",""A3_Language_F_Warlords"",""A3_LanguageMissions_F_Tank"",""A3_Missions_F_Tank"",""A3_Modules_F_Tank"",""A3_Music_F_Tank"",""A3_Props_F_Tank"",""A3_Props_F_Tank_Military"",""A3_Props_F_Tank_Military_TankAcc"",""A3_Props_F_Tank_Military_Wrecks"",""A3_Sounds_F_Tank"",""A3_Structures_F_Tank"",""A3_Structures_F_Tank_Decals"",""A3_Structures_F_Tank_Decals_Horizontal"",""A3_Structures_F_Tank_Military"",""A3_Structures_F_Tank_Military_Fortifications"",""A3_Structures_F_Tank_Military_RepairDepot"",""A3_Ui_F_Tank"",""A3_Weapons_F_Tank"",""A3_Weapons_F_Tank_Bags"",""A3_Weapons_F_Tank_Launchers_MRAWS"",""A3_Weapons_F_Tank_Launchers_Vorona"",""DIS_Enhanced_Gps"",""OPTRE_MJOLNIR_data_anims_Cargoposes_F_Tank"",""lambs_rpg"",""lambs_turrets"",""WarFXPE_Weps"",""Tracer_C_F"",""A3_Armor_F_Tank"",""A3_Armor_F_Tank_AFV_Wheeled_01"",""A3_Armor_F_Tank_LT_01"",""A3_Armor_F_Tank_MBT_04"",""A3_Cargoposes_F_Tank"",""A3_Characters_F_Tank"",""A3_Characters_F_Tank_Headgear"",""A3_Characters_F_Tank_Uniforms"",""A3_Data_F_Tank_Loadorder"",""A3_Language_F_Oldman"",""fxp_VehTank"",""3AS_ARC_170"",""3as_arc_170_weapons"",""3AS_AV7"",""3AS_BTLB_Bomber"",""3AS_Prop_Chirstmas"",""3AS_CIS_Armor"",""3AS_CIS_Armor_HeavyAAT"",""3AS_CIS_Helmets"",""3AS_CIS_Static"",""3AS_Drones_H3NR1"",""3as_environment"",""3AS_Environment_Caves"",""3AS_Environment_Rocks"",""3AS_Equipment"",""3as_GNK_Prop"",""3AS_HMP"",""3AS_Imperial"",""3AS_Imperial_Air"",""3AS_Imperial_Air_Gozanti"",""3AS_TIE"",""3AS_LAAT_Cargo"",""3AS_Main"",""3AS_Main_Function_Library"",""3as_Module_Effects"",""3as_Module_Ordnances"",""3as_Module_Zeus"",""3as_props"",""3AS_Rebel_Air"",""3AS_Rebel_Air_SnowSpeeder"",""3AS_Rebel_Heli"",""3AS_Rebel_Heli_Aegis_C"",""3AS_Republic_Static"",""3AS_SaberTank"",""3AS_Ships"",""3as_Starships"",""3AS_Static_DF9"",""3AS_Static_Repeater"",""3AS_Mortar"",""3as_Structures2"",""3as_structures"",""3AS_Terrain_Universal"",""3AS_Tri_Fighter"",""3as_V19_Torrent"",""3AS_Vulture"",""3AS_Vwing"",""3AS_Weapons"",""3AS_Weapons_A180"",""3AS_Weapons_Chaingun"",""3AS_Weapons_DC15L"",""3AS_Weapons_DC15S"",""3AS_Weapons_DC15SA"",""3AS_Weapons_DC17M"",""3AS_Weapons_DC17S"",""3AS_Weapons_DWBlaster"",""3AS_Weapons_DynmekBlasterPistol"",""3AS_Weapons_DynmekBlasterRifle"",""3AS_Weapons_DynmekSniperrifle"",""3AS_Weapons_E5"",""3as_Weapons_E5C"",""3AS_Weapons_E5S"",""3AS_Weapons_E60R"",""3AS_Weapons_EC17"",""3AS_Weapons_Greenfor"",""3AS_Weapons_Imperial"",""3AS_Weapons_MPL"",""3AS_Weapons_PLX1"",""3AS_Weapons_Republic"",""3AS_Weapons_ACC"",""3AS_Weapons_Republic_DC15A"",""3AS_Weapons_Republic_DC15C"",""3AS_Weapons_Republic_DC15L"",""3AS_Weapons_Republic_DC15S"",""3AS_Weapons_Republic_DC15X"",""3AS_Weapons_Republic_DC17S"",""3AS_Weapons_Republic_DP23"",""3AS_Weapons_Republic_Valken38X"",""3AS_Weapons_Roleplay"",""3AS_Weapons_RPS6"",""3AS_Weapons_RPS6HP"",""3AS_Weapons_S5"",""3AS_Weapons_S5HeavyBlasterOfficer"",""3AS_Weapons_Scattergun"",""3AS_Weapons_Valken38X"",""3AS_Weapons_WestarM5"",""3AS_Weapons_DC15CGl"",""3AS_Weapons_Z6"",""3AS_ATRT_Weapon"",""3as_prop_kamino"",""3AS_prop_Naboo"",""TCW_Terrain_Props"",""3AS_Prop_Orto_Plut_Buttes"",""Rugosa"",""3AS_Prop_Tatooine"",""3AS_prop_tatooine_Jabbaspalace"",""A3_Data_F_Destroyer"",""A3_Data_F_Sams"",""A3_Data_F_Warlords"",""A3_Dubbing_F_Warlords"",""A3_EditorPreviews_F_Destroyer"",""A3_EditorPreviews_F_Sams"",""A3_Functions_F_Warlords"",""A3_Language_F_Destroyer"",""A3_Language_F_Sams"",""A3_Missions_F_Warlords"",""A3_Missions_F_Warlords_Data"",""A3_Modules_F_Warlords"",""A3_Props_F_Destroyer"",""A3_Props_F_Destroyer_Military_BriefingRoomDesk"",""A3_Props_F_Destroyer_Military_BriefingRoomScreen"",""A3_Static_F_Destroyer"",""A3_Static_F_Destroyer_Boat_Rack_01"",""A3_Static_F_Destroyer_Ship_Gun_01"",""A3_Static_F_Destroyer_Ship_MRLS_01"",""A3_Static_F_Sams"",""A3_Static_F_Sams_Radar_System_01"",""A3_Static_F_Sams_Radar_System_02"",""A3_Static_F_Sams_SAM_System_03"",""A3_Static_F_Sams_SAM_System_04"",""A3_Weapons_F_Destroyer"",""A3_Weapons_F_Sams"",""3AS_Ammo"",""ATAP_Weapons"",""3AS_CIS_Static_Naval_Gun"",""3AS_CIS_Static_Droid_Dispenser"",""3AS_CIS_Static_J10s"",""3AS_Deka"",""3AS_Cliffs_Tatooine"",""3AS_Caves"",""3AS_Tatooine_Environment_Rocks"",""3AS_Tatooine_Rocks"",""3AS_GAT"",""3AS_Hailfire"",""3as_Jug_Weapons"",""3as_Languages"",""3AS_N99"",""3AS_Prop_Platforms"",""3AS_Prop_Crates"",""3AS_Prop_Debris"",""3AS_Prop_Droids"",""3AS_Prop_Flags"",""3AS_Prop_Generators"",""3AS_Prop_LaserWalls"",""3AS_Prop_planetaryshields"",""3AS_Prop_Posters"",""3AS_Prop_Sensors"",""3AS"",""3AS_Prop_StaticVehicles"",""3AS_Prop_Terminals"",""3as_SaberTank_Weapons"",""3AS_Marketplace"",""3AS_Prop_Barricades"",""3AS_Prop_Catwalks"",""3AS_Structures_City"",""3AS_Structures_FOB"",""3AS_Structures_LandingPads"",""3AS_Structures_Lights"",""3AS_VehicleWeapons"",""3AS_Weapons_DC15A"",""3AS_Weapons_DC15C"",""3AS_Z95_base"",""Rugosa_V1"",""A3_Data_F_Destroyer_Loadorder"",""A3_Data_F_Sams_Loadorder"",""A3_Data_F_Warlords_Loadorder"",""3AS_ATAT"",""3AS_ATTE"",""3AS_Static_J1_Proton_Cannon"",""3AS_HAAG"",""3AS_Prop_Tables"",""3AS_Prop_Furniture"",""3AS_Reoublic_Static_Keeradak"",""3AS_Static"",""3AS_Static_ADSD"",""3AS_Static_FieldCannon"",""3AS_Static_FlakCannon"",""3AS_OG9_Static"",""3AS_Static_ParticleCannon"",""3AS_Static_StationaryTurret"",""3AS_Static_Venator_Cannon"",""3as_static_turbolaser_xx10"",""A3_Data_F_Enoch"",""A3_Dubbing_Radio_F_Enoch"",""A3_Dubbing_Radio_F_Enoch_Names"",""A3_EditorPreviews_F_Enoch"",""A3_Functions_F_Enoch"",""A3_Language_F_Enoch"",""A3_Missions_F_Enoch"",""A3_Music_F_Enoch"",""A3_Props_F_Enoch"",""A3_Props_F_Enoch_Civilian"",""A3_Props_F_Enoch_Civilian_Camping"",""A3_Props_F_Enoch_Civilian_Forest"",""A3_Props_F_Enoch_Civilian_Garbage"",""A3_Props_F_Enoch_Civilian_InfoBoards"",""A3_Props_F_Enoch_Industrial"",""A3_Props_F_Enoch_Industrial_Electric"",""A3_Props_F_Enoch_Industrial_Supplies"",""A3_Props_F_Enoch_Infrastructure"",""A3_Props_F_Enoch_Infrastructure_Traffic"",""A3_Props_F_Enoch_Items"",""A3_Props_F_Enoch_Items_Documents"",""A3_Props_F_Enoch_Items_AluminiumFoil"",""A3_Props_F_Enoch_Military"",""A3_Props_F_Enoch_Military_Camps"",""A3_Props_F_Enoch_Military_Decontamination"",""A3_Props_F_Enoch_Military_Equipment"",""A3_Props_F_Enoch_Military_Garbage"",""A3_Props_F_Enoch_Military_Supplies"",""A3_Props_F_Enoch_Military_Wrecks"",""A3_Rocks_F_Enoch"",""A3_Rocks_F_Enoch_Sinkhole"",""A3_Soft_F_Enoch"",""A3_Soft_F_Enoch_Offroad_01"",""A3_Soft_F_Enoch_Quadbike_01"",""A3_Soft_F_Enoch_Tractor_01"",""A3_Soft_F_Enoch_Truck_01"",""A3_Soft_F_Enoch_Truck_02"",""A3_Soft_F_Enoch_UGV_01"",""A3_Soft_F_Enoch_UGV_02"",""A3_Soft_F_Enoch_Van_02"",""A3_Sounds_F_Enoch"",""A3_Static_F_Enoch"",""A3_Static_F_Enoch_AA_01"",""A3_Static_F_Enoch_AT_01"",""A3_Static_F_Enoch_Designator_01"",""A3_Static_F_Enoch_GMG_01"",""A3_Static_F_Enoch_HMG_01"",""A3_Static_F_Enoch_Mortar_01"",""A3_Static_F_Enoch_Radar_System_01"",""A3_Static_F_Enoch_SAM_System_03"",""A3_Structures_F_Enoch"",""A3_Structures_F_Enoch_Civilian"",""A3_Structures_F_Enoch_Civilian_Accessories"",""A3_Structures_F_Enoch_Civilian_Camps"",""A3_Structures_F_Enoch_Civilian_Constructions"",""A3_Structures_F_Enoch_Civilian_Houses"",""A3_Structures_F_Enoch_Civilian_Medical"",""A3_Structures_F_Enoch_Civilian_Police"",""A3_Structures_F_Enoch_Civilian_Sheds"",""A3_Structures_F_Enoch_Commercial"",""A3_Structures_F_Enoch_Commercial_FuelStation_03"",""A3_Structures_F_Enoch_Commercial_VillageStore_01"",""A3_Structures_F_Enoch_Cultural"",""A3_Structures_F_Enoch_Cultural_Calvary_03"",""A3_Structures_F_Enoch_Cultural_Calvary_04"",""A3_Structures_F_Enoch_Cultural_CastleRuins"",""A3_Structures_F_Enoch_Cultural_Cemeteries"",""A3_Structures_F_Enoch_Cultural_Chapel_01"",""A3_Structures_F_Enoch_Cultural_Chapel_02"",""A3_Structures_F_Enoch_Cultural_Church_04"",""A3_Structures_F_Enoch_Cultural_Church_05"",""A3_Structures_F_Enoch_Cultural_OrthodoxChurches"",""A3_Structures_F_Enoch_Cultural_Statues"",""A3_Structures_F_Enoch_Data"",""A3_Structures_F_Enoch_Decals"",""A3_Structures_F_Enoch_Decals_Horizontal"",""A3_Structures_F_Enoch_Furniture"",""A3_Structures_F_Enoch_Industrial"",""A3_Structures_F_Enoch_Industrial_Agriculture"",""A3_Structures_F_Enoch_Industrial_Cargo"",""A3_Structures_F_Enoch_Industrial_CementWorks"",""A3_Structures_F_Enoch_Industrial_CoalPlant_01"",""A3_Structures_F_Enoch_Industrial_DieselPowerPlant_01"",""A3_Structures_F_Enoch_Industrial_Farms"",""A3_Structures_F_Enoch_Industrial_Garages"",""A3_Structures_F_Enoch_Industrial_Houses"",""A3_Structures_F_Enoch_Industrial_Materials"",""A3_Structures_F_Enoch_Industrial_Mines"",""A3_Structures_F_Enoch_Industrial_Pipes"",""A3_Structures_F_Enoch_Industrial_Power"",""A3_Structures_F_Enoch_Industrial_Sawmills"",""A3_Structures_F_Enoch_Industrial_Sheds"",""A3_Structures_F_Enoch_Industrial_Smokestacks"",""A3_Structures_F_Enoch_Industrial_Transmitter_Tower"",""A3_Structures_F_Enoch_Infrastructure"",""A3_Structures_F_Enoch_Infrastructure_Benchmarks"",""A3_Structures_F_Enoch_Infrastructure_Bridges"",""A3_Structures_F_Enoch_Infrastructure_Highway"",""A3_Structures_F_Enoch_Infrastructure_Lamps"",""A3_Structures_F_Enoch_Infrastructure_Pavements"",""A3_Structures_F_Enoch_Infrastructure_Powerlines"",""A3_Structures_F_Enoch_Infrastructure_Railways"",""A3_Structures_F_Enoch_Infrastructure_Roads"",""A3_Structures_F_Enoch_Military"",""A3_Structures_F_Enoch_Military_Airfield"",""A3_Structures_F_Enoch_Military_Barracks"",""A3_Structures_F_Enoch_Military_Bunkers"",""A3_Structures_F_Enoch_Military_Camonets"",""A3_Structures_F_Enoch_Military_Camps"",""A3_Structures_F_Enoch_Military_Domes"",""A3_Structures_F_Enoch_Military_Flags"",""A3_Structures_F_Enoch_Military_Radar"",""A3_Structures_F_Enoch_Military_Training"",""A3_Structures_F_Enoch_Ruins"",""A3_Structures_F_Enoch_Signs"",""A3_Structures_F_Enoch_Signs_City"",""A3_Structures_F_Enoch_Signs_Companies"",""A3_Structures_F_Enoch_Signs_Directions"",""A3_Structures_F_Enoch_Signs_Traffic"",""A3_Structures_F_Enoch_Signs_Warnings"",""A3_Structures_F_Enoch_VR_Helpers"",""A3_Structures_F_Enoch_Walls"",""A3_Structures_F_Enoch_Walls_Brick"",""A3_Structures_F_Enoch_Walls_Concrete"",""A3_Structures_F_Enoch_Walls_Net"",""A3_Structures_F_Enoch_Walls_Pipe"",""A3_Structures_F_Enoch_Walls_Polewalls"",""A3_Structures_F_Enoch_Walls_Stone"",""A3_Structures_F_Enoch_Walls_Wooden"",""A3_Structures_F_Enoch_Wrecks"",""A3_Supplies_F_Enoch"",""A3_Supplies_F_Enoch_Ammoboxes"",""A3_Supplies_F_Enoch_Bags"",""A3_Ui_F_Enoch"",""A3_Vegetation_F_Enoch"",""A3_Weapons_F_Enoch"",""A3_Weapons_F_Enoch_Acc"",""A3_Weapons_F_Enoch_Items"",""A3_Weapons_F_Enoch_Launchers_RPG32"",""A3_Weapons_F_Enoch_Launchers_Titan"",""A3_Weapons_F_Enoch_LongRangeRifles_DMR_06"",""A3_Weapons_F_Enoch_Machineguns_M200"",""A3_Weapons_F_Enoch_Pistols_ESD"",""A3_Weapons_F_Enoch_Pistols_Pistol_Heavy_01"",""A3_Weapons_F_Enoch_Rifles_AK12"",""A3_Weapons_F_Enoch_Rifles_MSBS"",""A3_Weapons_F_Enoch_Rifles_MX"",""A3_Weapons_F_Enoch_Rifles_HunterShotgun_01"",""GO_Map_Farabad"",""GO_Map_Farabad_Data"",""GO_Rocks_N_Rocks"",""go_sounds_winter"",""go_structures_n_industrial_timberpiles"",""go_structures_n_lakes"",""GO_Structures_N_snowaddons"",""green_sea"",""vt7"",""3AS_ADSD"",""3AS_Compat_Terrains"",""A3_Air_F_Enoch"",""A3_Air_F_Enoch_Heli_Light_03"",""A3_Air_F_Enoch_UAV_01"",""A3_Air_F_Enoch_UAV_06"",""A3_Anims_F_Enoch"",""A3_Armor_F_Enoch"",""A3_Armor_F_Enoch_APC_Tracked_03"",""A3_Cargoposes_F_Enoch"",""A3_Characters_F_Enoch"",""A3_Characters_F_Enoch_Facewear"",""A3_Characters_F_Enoch_Headgear"",""A3_Characters_F_Enoch_Vests"",""A3_Map_Enoch"",""A3_Map_Enoch_Data"",""A3_Map_Enoch_Data_Layers"",""A3_Map_Enoch_Scenes_F"",""GO_Map_Fjord"",""A3_Data_F_Enoch_Loadorder"",""A3_Data_F_Oldman"",""A3_Dubbing_F_Oldman"",""A3_EditorPreviews_F_Oldman"",""A3_Functions_F_Oldman"",""A3_LanguageMissions_F_Oldman"",""A3_Missions_F_Oldman"",""A3_Modules_F_Oldman"",""A3_Music_F_Oldman"",""A3_Props_F_Oldman"",""A3_Props_F_Oldman_Items"",""A3_Soft_F_Oldman"",""A3_Soft_F_Oldman_Offroad_01"",""A3_Sounds_F_Oldman"",""A3_Static_F_Oldman"",""A3_Static_F_Oldman_HMG_02"",""A3_Structures_F_Oldman"",""A3_Structures_F_Oldman_Decals"",""A3_Structures_F_Oldman_Signs"",""A3_Structures_F_Oldman_Signs_Boards"",""A3_Structures_F_Oldman_Signs_Traffic"",""A3_Supplies_F_Oldman"",""A3_Ui_F_Oldman"",""go_data"",""NSM_Patch_Main"",""NSM_Patch_objects"",""NSM_Patch_particle_effects"",""NSM_Patch_jumppack_particle_effects"",""PLP_MapTools"",""3AS_Main_Intro"",""3AS_Main_Loadorder"",""A3_Characters_F_Oldman"",""A3_Characters_F_Oldman_Headgear"",""A3_Characters_F_Oldman_Heads"",""A3_Data_F_Oldman_Loadorder"",""NSM_Patch_End"",""A3_Data_F_AoW"",""A3_Dubbing_F_AoW"",""A3_EditorPreviews_F_AoW"",""A3_Functions_F_AoW"",""A3_Language_F_AoW"",""A3_LanguageMissions_F_AoW"",""A3_Missions_F_AoW"",""A3_Missions_F_AoW_Data"",""A3_Missions_F_AoW_Video"",""A3_Props_F_AoW"",""A3_Props_F_AoW_Civilian"",""A3_Props_F_AoW_Civilian_Gallery"",""A3_Props_F_AoW_Items"",""A3_Props_F_AoW_Items_Decorative"",""A3_Sounds_F_AoW"",""A3_Structures_F_AoW"",""A3_Structures_F_AoW_Civilian"",""A3_Structures_F_AoW_Civilian_Gallery_01"",""A3_Supplies_F_AoW"",""A3_Supplies_F_AoW_Bags"",""A3_Ui_F_AoW"",""A3_Anims_F_AoW"",""A3_Characters_F_AoW"",""A3_Characters_F_AoW_Headgear"",""A3_Characters_F_AoW_Uniforms"",""A3_Data_F_AoW_Loadorder"",""A3_Data_F_Decade"",""A3_EditorPreviews_F_Decade"",""A3_Functions_F_Decade"",""A3_Props_F_Decade"",""A3_Props_F_Decade_Civilian"",""A3_Props_F_Decade_Civilian_Camping"",""A3_Props_F_Decade_Humanitarian"",""A3_Props_F_Decade_Humanitarian_Supplies"",""A3_Props_F_Decade_Industrial"",""A3_Props_F_Decade_Industrial_Agriculture"",""A3_Props_F_Decade_Military"",""A3_Props_F_Decade_Military_Decorative"",""A3_Props_F_Decade_Objectives"",""A3_Props_F_Decade_Spaceship"",""A3_Sounds_F_Decade"",""A3_UI_F_Decade"",""A3_Weapons_F_Decade"",""PLP_ladderTweakRemastered"",""WarFXPE"",""Blastcore_MainCore"",""cba_common"",""cba_events"",""cba_hashes"",""cba_jam"",""cba_jam_finish"",""cba_jr_prep"",""cba_keybinding"",""cba_loadout"",""cba_modules"",""cba_music"",""cba_network"",""cba_quicktime"",""cba_settings"",""cba_statemachine"",""cba_strings"",""cba_vectors"",""cba_xeh"",""CBA_Extended_EventHandlers"",""cba_ee"",""Extended_EventHandlers"",""cba_xeh_a3"",""rwyl_main"",""A3_Armor_F_Decade"",""A3_Armor_F_Decade_MBT_02"",""A3_Characters_F_Decade"",""A3_Characters_F_Decade_Facewear"",""A3_Characters_F_Decade_Headgear"",""A3_Data_F_Decade_Loadorder"",""blast_refract"",""ChatWheelRedux"",""PHAN_OPAEX"",""PLP_starSphere"",""RemoveStamina"",""Small_Ragdoll"",""TKE_BDU"",""TKE_FCF"",""TKE_General_Gear"",""TKE_KMC"",""TKE_MD"",""TKE_Rogue_Uniform"",""TKE_UCN"",""TKE_Uniforms"",""TKE_Weapons"",""TKE_Weapons_acc"",""TKE_Weapons_handgun_mhg16"",""TKE_Weapons_handgun_model30"",""TKE_Weapons_machinegun_maw2d13"",""TKE_Weapons_rifles_arb3d1"",""TKE_Weapons_rifles_arx12"",""TKE_Weapons_rifles_bpr0d1"",""TKE_Weapons_rifles_bullfrog"",""TKE_Weapons_rifles_carnivore"",""TKE_Weapons_rifles_cerberus"",""TKE_Weapons_rifles_maw1d0"",""TKE_Weapons_rifles_mrw1d15"",""TKE_Weapons_rifles_mxr0d1"",""TKE_Weapons_rifles_ripper"",""TKE_Weapons_rifles_viper"",""TKE_Weapons_rifles_xlr"",""TKE_Weapons_smgs_PDWH6"",""WM_ImperialCore"",""WM_PropsCore"",""WMA_Props_Bank"",""WM_Structure_Bunker"",""WM_Structure_CPB"",""WM_GenericWalls"",""WM_Prop_ISD"",""WM_ImperialLamp"",""WM_Lootboxes"",""WMA_Shuttleport"",""WM_Prop_Venator"",""WM_Structure_ImpWall"",""WM_Imperial_Statics"",""WM_DF9"",""WM_ImperialMortar"",""WM_PTower"",""WM_ImperialCore_Units"",""WM_Imperial_Vehicles"",""WM_74Z_Imperial"",""WM_Vehicle_AAC"",""WM_ATAT"",""WM_ATST_Walker"",""WM_Vehicle_V25"",""WM_Veh_EXP"",""WM_Veh_Saber"",""WM_ITT"",""WM_Lambda"",""WM_TieAdvanced"",""WM_TieSA"",""WM_TieD"",""WM_Tie"",""WM_TieIN"",""WM_Alpha3_VWing"",""WM_Imperial_Weapons"",""WM_A280_Blaster"",""WM_DH17"",""WM_DLT19"",""WM_DLT19D"",""WM_DLT19X"",""WM_Imperial_E11"",""WM_Imperial_E11D"",""WM_EC17"",""WM_HH12"",""WM_HH15"",""WM_MiniMag"",""WM_OppressorFlamer"",""WM_RK3"",""WM_SE14C"",""WM_T21"",""WM_V6D"",""WM_Imperial_VehicleWeapons"",""WM_Rebels"",""cba_accessory"",""MRT_AccFncs"",""cba_ai"",""cba_arrays"",""cba_bitwise"",""cba_characters"",""cba_diagnostic"",""cba_disposable"",""cba_help"",""cba_jr"",""asdg_jointmuzzles"",""asdg_jointrails"",""cba_optics"",""cba_ui"",""cba_ui_helper"",""cba_versioning"",""3denEnhanced"",""Kamino"",""3AS_Orto_Plut"",""3as_map_space2"",""TKE_Mod_LoadOrder"",""WM_ImperialArmy"",""WM_CloneCore"",""cba_main"",""cba_main_a3"",""3denEnhanced_CaptureFrameUI"",""3denEnhanced_EventScripts"",""zen_main"",""ace_main"",""acex_main"",""ace_modules"",""crowsEW_main"",""crowsEW_zeus"",""diwako_dui_main"",""diwako_dui_nametags"",""diwako_dui_radar"",""lambs_main"",""lambs_range"",""LRG_AIS_Revive"",""LRGFundamentals_Channels"",""LRG_Civilians"",""LRG_Equipment"",""LRG_Explosives"",""LRG_Interaction"",""LRG_Logistics"",""LRG_MapIcons"",""LRG_Media"",""LRG_Medical"",""LRG_Player"",""LRG_QSIcons"",""LRG_SafeZone"",""LRG_Training"",""LRG_Vehicles"",""LRG_Warlords"",""LRG_Weather"",""LRG_Zeus"",""mti_main"",""Effects"",""NCA_main"",""phen_main"",""phen_sdf"",""tfar_core"",""task_force_radio"",""task_force_radio_items"",""tfar_external_intercom"",""tfar_static_radios"",""tgf_main"",""A3TI"",""BC_TPW"",""KKA3_ACE_Extension_Anim_A2"",""ls_main"",""lsb_core"",""lsb_endor_props"",""lsb_fob"",""lsb_fob_hBlock"",""lsb_geonosis_props"",""lsb_geonosis_props_deprecated"",""lsb_groups_compositions"",""lsb_modules"",""lsb_props_containers"",""lsb_props_holograms"",""lsb_structures_deflector"",""lsb_props_shipparts"",""lsb_structures"",""lsb_structures_jedha"",""lsb_structures_platforms"",""lsb_structures_tatooine"",""lsb_walkways"",""MovingStacksRework_cba_compats"",""JLTS_functions"",""JLTS_optionals_TFARBeta_compat"",""JLTS_weapons_Core"",""JLTS_weapons_Core_modules"",""JLTS_weapons_DC17SA"",""JLTS_weapons_RG4D"",""OPTRE_Core"",""OPTRE_MuzzleFlash"",""OPTRE_UNSC_Editor_Pre"",""OPTRE_Showcases"",""OPTRE_Emblems"",""OPTRE_Frigate"",""OPTRE_Frigate_Interior"",""OPTRE_FunctionsLibrary"",""OPTRE_FunctionsLibrary_attachment_handler"",""OPTRE_Functions_Door_On_Gear"",""OPTRE_FunctionsLibrary_Falcon_PIP"",""OPTRE_GearRandomizer_Functions"",""OPTRE_Functions_Ghost"",""OPTRE_Functions_M37_AmmoDisplay"",""OPTRE_FunctionsLibrary_recoil_deployment"",""OPTRE_Functions_Recon_Scope"",""OPTRE_Functions_rscScope_manager"",""OPTRE_sticky"",""OPTRE_FunctionsLibrary_supercombustion"",""OPTRE_Turret_Rip_Script"",""OPTRE_FunctionsLibrary_vehicle_glass_polarize"",""OPTRE_Misc"",""OPTRE_Misc_Crates"",""OPTRE_EditorPlaceableWeapons"",""OPTRE_UNSC_Structure_HoloObjects"",""OPTRE_UNSC_Structure_HoloObjects_Buildings"",""OPTRE_Multiplayer_Objects"",""OPTRE_Misc_Objects"",""OPTRE_MJOLNIR"",""OPTRE_Modules"",""OPTRE_Music"",""OPTRE_Plants"",""OPTRE_Ins_Object_class"",""OPTRE_RemoteExec"",""OPTRE_Rocks"",""OPTRE_UNSC_Units"",""OPTRE_UNSC_Units_Army"",""OPTRE_UNSC_Units_NVGs"",""OPTRE_CMA_Units"",""OPTRE_Equipment_CMA"",""OPTRE_CPD_Units"",""OPTRE_Equipment_Police"",""OPTRE_UNSC_Units_Navy"",""OPTRE_UNSC_Units_ODST"",""OPTRE_UNSC_Units_ONI"",""OPTRE_UEG_Units"",""OPTRE_Equipment_UEG"",""OPTRE_Weapons"",""OPTRE_Weapons_Ammo"",""OPTRE_Weapons_Ammo_Signal_Smoke"",""OPTRE_Weapons_AR"",""OPTRE_Weapons_Backpacks"",""OPTRE_Weapons_BR"",""OPTRE_Weapons_CQS48_Bulldog"",""OPTRE_Weapons_Charges"",""OPTRE_VK78_Commando"",""OPTRE_Weapons_DMR"",""OPTRE_Weapons_Explosives"",""OPTRE_Weapons_GL"",""OPTRE_Weapons_HMG38"",""OPTRE_Weapons_Items"",""OPTRE_M58S"",""OPTRE_M6GGNR"",""OPTRE_Weapons_MA37K"",""OPTRE_Weapons_MG_old"",""OPTRE_Weapons_Optics"",""OPTRE_Recon_Sight"",""OPTRE_Weapons_Rockets"",""OPTRE_Weapons_Shotgun"",""OPTRE_Weapons_SMG"",""OPTRE_Weapons_Sniper"",""OPTRE_Weapons_SRM77"",""OPTRE_Weapons_Sticky"",""OPTRE_Weapons_Vehicle"",""OPTRE_Weapons_Visible_Lasers"",""OPTRE_Weapons_MG"",""OPTRE_Weapons_M247H_Etilka"",""OPTRE_Weapons_MG_M26"",""OPTRE_Weapons_MG_M739_SAW"",""OPTRE_Weapons_MG_M73"",""OPTRE_Weapons_Pistol"",""optre_comet"",""OPTRE_Weapons_M6B"",""OPTRE_Weapons_M6C"",""OPTRE_Weapons_M6D"",""OPTRE_Weapons_M6D_Carbine"",""OPTRE_Weapons_M6G"",""optre_sas10"",""OPTRE_Weapons_Turrets"",""OPTRE_Weapons_Turrets_AIE_486H_Static_MMG"",""OPTRE_AU_44_Mortar"",""OPTRE_UNSC_Units_Backpacks"",""OPTRE_UNSC_Units_Backpacks_Gunbags"",""OPTRE_Weapons_DeployableTurrets"",""OPTRE_Weapons_FG75"",""Lance"",""OPTRE_Weapons_LAU65D"",""OPTRE_Weapons_Turrets_M247a1_Static_MMG"",""OPTRE_Weapons_Turrets_M37_Static_HMG"",""OPTRE_Weapons_M910_PDN"",""Scythe"",""OPTRE_Weapons_M247H"",""OPTRE_Weapons_M247T"",""OPTRE_Weapons_StaticTurret"",""SFA_Core"",""SFA_radios"",""SFA_Races"",""SFA_Structures_core"",""SFA_groups"",""SFA_groups_imperial"",""SFA_groups_Republic"",""SFA_Vehicles_S"",""SFA_Vehicles_Dragonfly"",""SFA_Vengeance"",""SFA_Weapons_Core"",""SFA_Weapons_Melee"",""SFA_Weapons_R"",""SFA_Weapons_S"",""tts_beam"",""UAV_Turret_Markers"",""Blastcore_VEP"",""WBK_MeleeMechanics"",""zen_common"",""zen_context_menu"",""zen_dialog"",""zen_editor"",""zen_editor_previews"",""zen_faction_filter"",""zen_flashlight"",""zen_music"",""zen_placement"",""zen_position_logics"",""zen_visibility"",""zen_vision"",""ace_APL"",""ace_common"",""ace_compat_aegis"",""ace_compat_cup_terrains"",""ace_cookoff"",""ace_disposable"",""ace_fieldmanual"",""ace_finger"",""ace_fire"",""ace_flashsuppressors"",""ace_fonts"",""ace_frag"",""ace_gforces"",""ace_goggles"",""ace_grenades"",""ace_headless"",""acex_headless"",""ace_hitreactions"",""ace_hunterkiller"",""ace_huntir"",""ace_huntir_sub"",""ace_interact_menu"",""ace_interaction"",""ace_inventory"",""ace_irlight"",""ace_killtracker"",""ace_laser"",""ace_laserpointer"",""ace_logistics_rope"",""ace_logistics_uavbattery"",""ace_logistics_wirecutter"",""ace_magazinerepack"",""ace_map"",""ace_map_gestures"",""ace_maptools"",""ace_marker_flags"",""ace_markers"",""ace_markinglaser"",""ace_medical_engine"",""ace_medical_status"",""ace_medical_vitals"",""ace_microdagr"",""ace_missileguidance"",""ace_missionmodules"",""ace_movement"",""ace_mx2a"",""ace_nametags"",""ace_nightvision"",""ace_nlaw"",""ace_noidle"",""ace_noradio"",""ace_norearm"",""ace_novehicleclanlogo"",""ace_optics"",""ace_optionsmenu"",""ace_overheating"",""ace_overpressure"",""ace_parachute"",""ace_pylons"",""ace_quickmount"",""ace_realisticnames"",""ace_realisticnames_optics"",""ace_realisticweights"",""ace_rearm"",""ace_recoil"",""ace_refuel"",""ace_reload"",""ace_reloadlaunchers"",""ace_repair"",""ace_respawn"",""ace_safemode"",""ace_sandbag"",""ace_scopes"",""ace_sitting"",""acex_sitting"",""ace_slideshow"",""ace_smallarms"",""ace_spectator"",""ace_spottingscope"",""ace_switchunits"",""ace_tacticalladder"",""ace_tagging"",""ace_thermals"",""ace_towing"",""ace_trenches"",""ace_tripod"",""ace_ui"",""ace_vector"",""ace_vehicle_damage"",""ace_vehiclelock"",""ace_vehicles"",""ace_viewdistance"",""ace_viewports"",""ace_viewrestriction"",""acex_viewrestriction"",""ace_volume"",""ace_weaponselect"",""ace_weather"",""ace_winddeflection"",""ace_yardage450"",""crowsEW_emp"",""crowsEW_sounds"",""crowsEW_spectrum"",""diwako_dui_buddy"",""diwako_dui_indicators"",""diwako_dui_linecompass"",""hoa_main"",""lambs_danger"",""lambs_eventhandlers"",""lambs_formations"",""lambs_wp"",""LRG_AI"",""LRG_CommandCentre"",""LRG_FOBs"",""LRG_Modules"",""LRG_Fundamentals"",""mti_arsenal"",""DW_Optionals_SFA"",""SC_Optionals_Blacksun"",""NCA_ammo"",""NCA_ammo_effects"",""NCA_weapons"",""NCA_weapons_arkanianCarbine"",""NCA_weapons_arkanian_carbine"",""NCA_weapons_arkanianRifle"",""NCA_weapons_arkanian_rifle"",""NCA_weapons_attachments"",""NCA_weapons_b2"",""NCA_weapons_B2_Gun"",""NCA_weapons_boltBlasterCarbine"",""NCA_weapons_boltBlaster_carbine"",""NCA_weapons_boltBlasterPistol"",""NCA_weapons_boltBlaster"",""NCA_weapons_boltBlasterRifle"",""NCA_weapons_boltBlaster_rifle"",""NCA_weapons_boltBlasterSniper"",""NCA_weapons_boltBlaster_sniper"",""NCA_weapons_causality"",""NCA_weapons_cd35"",""NCA_weapons_chaingun"",""NCA_weapons_d200"",""NCA_weapons_dc15a"",""NCA_weapons_dc15c"",""NCA_weapons_dc15lego"",""NCA_weapons_dc15s"",""NCA_weapons_dc15saw"",""NCA_weapons_dc15x"",""NCA_weapons_dc15xm"",""NCA_weapons_dc17"",""NCA_weapons_dla13Carbine"",""NCA_weapons_dla13_carbine"",""NCA_weapons_dla13Rifle"",""NCA_weapons_dla13_rifle"",""NCA_weapons_dp23"",""NCA_weapons_dw32s"",""NCA_weapons_e15"",""NCA_weapons_e15_assault_cannon"",""NCA_weapons_e403"",""NCA_weapons_e403_assault_cannon"",""NCA_weapons_e5"",""NCA_weapons_e5c"",""NCA_weapons_e5s"",""NCA_weapons_e60r"",""NCA_weapons_el34"",""NCA_weapons_epl2"",""NCA_weapons_firepuncher"",""NCA_weapons_onslaught"",""NCA_weapons_plx1"",""NCA_weapons_r80"",""NCA_weapons_rg4d"",""NCA_weapons_rps6"",""NCA_weapons_sbb3"",""NCA_weapons_testbedBlaster"",""NCA_weapons_valken38x"",""NCA_weapons_westarM5"",""NCA_weapons_x300"",""NCA_weapons_x42"",""NCA_weapons_z6"",""phen_common"",""phen_helicopters"",""phen_support"",""tfar_ai_hearing"",""tfar_antennas"",""tfar_backpacks"",""tfar_handhelds"",""tgf_common"",""tgf_facewear"",""tgf_helmets"",""tgf_nvg"",""tgf_props"",""tgf_undersuit"",""trp_main"",""trp_profiles"",""KKA3_ACE_Extension_Anim"",""KKA3_ACE_Extension_Anim_dire"",""ls_animations"",""ls_data"",""ls_dubbing"",""ls_jetpacks"",""Bacta"",""lsb_props_cloudcity"",""JLTS_core"",""JLTS_core_droids"",""JLTS_jumppacks"",""JLTS_optionals_Glocko"",""JLTS_weapons_crates"",""JLTS_weapons_Statics_turret"",""OPTRE_UNSC_Structure_Arctic_Military"",""OPTRE_Buildings2"",""OPTRE_Buildings2_Environment"",""OPTRE_Buildings2_Industrial"",""OPTRE_Buildings2_Reach_Walls"",""OPTRE_Buildings2_Ridgco"",""OPTRE_Buildings2_Visegrad"",""OPTRE_UNSC_Structure_class"",""OPTRE_UNSC_Structure_Buildings"",""OPTRE_Buildings_City_Lights"",""OPTRE_UNSC_Structure_CityObjects"",""OPTRE_UNSC_Structure_Containers"",""OPTRE_UNSC_Structure_Elevator"",""OPTRE_UNSC_Structure_Farm"",""OPTRE_UNSC_Structure_Highway"",""OPTRE_UNSC_Structure_Military"",""OPTRE_UNSC_Structure_Military_Crate"",""OPTRE_UNSC_Structure_Misc"",""OPTRE_NA_Buildings"",""OPTRE_UNSC_Structure_Secundus"",""OPTRE_UNSC_Structure_Signs"",""OPTRE_Buildings_Street_Objects"",""OPTRE_Buildings_Terraces"",""OPTRE_UNSC_Structure_Towers"",""OPTRE_UNSC_Structure_Walls"",""OPTRE_Buildings_Camp"",""OPTRE_BW_Buildings"",""OPTRE_Land_ARMOURY_F"",""OPTRE_BW_CargoFreighter"",""OPTRE_BW_WeaponRack"",""OPTRE_BW_WeaponRack_AR"",""OPTRE_BW_WeaponRack_BR"",""OPTRE_BW_WeaponRack_DMR"",""OPTRE_BW_WeaponRack_MA37"",""OPTRE_BW_WeaponRack_MA37GL"",""OPTRE_BW_WeaponRack_Shotgun"",""OPTRE_BW_LargeLandingPad"",""OPTRE_BW_Test"",""OPTRE_BW_Market"",""OPTRE_BW_MRE"",""OPTRE_BW_ModularBuildings"",""OPTRE_BW_Bridge10m"",""OPTRE_BW_BridgeConnector"",""OPTRE_BW_BridgeDown"",""OPTRE_BW_Datapad"",""OPTRE_BW_DoorConsole"",""OPTRE_BW_WarehouseRamps"",""OPTRE_BW_WarehouseRS"",""OPTRE_BW_Platform"",""OPTRE_BW_VehicleLift_Tan_F"",""OPTRE_EridanusSecundus"",""OPTRE_Ins_Units"",""OPTRE_Ins_Units_BIA"",""OPTRE_Ins_Units_BJ"",""OPTRE_UEG_Units_IND"",""OPTRE_Ins_Units_URF"",""OPTRE_MJOLNIR2"",""OPTRE_MJOLNIR_Units"",""OPTRE_Spartan_Human_Equipment"",""OPTRE_Vehicles"",""OPTRE_Vehicles_Bison"",""OPTRE_Vehicles_Cart"",""optre_catfish"",""OPTRE_Vehicles_Falcon"",""OPTRE_Vehicles_genet"",""OPTRE_Vehicles_HEV"",""OPTRE_Vehicles_Misc"",""OPTRE_Vehicles_Mongoose"",""OPTRE_Vehicles_Pelican"",""OPTRE_Vehicles_Pod"",""OPTRE_Vehicles_Warthog_RC"",""OPTRE_Vehicles_Warthog"",""OPTRE_Vehicles_Wildebeest"",""OPTRE_Vehicles_Air"",""OPTRE_Vehicles_Air_Banta"",""OPTRE_Vehicles_Air_Falcon"",""OPTRE_Vehicles_Hornet"",""OPTRE_Vehicles_SOCOM_Pelican"",""OPTRE_Vehicles_Sabre"",""OPTRE_Vehicles_Sparrowhawk"",""OPTRE_Vehicles_Wombat"",""OPTRE_Vehicles_Tracked"",""OPTRE_Vehicles_Elephant"",""OPTRE_Vehicles_Grizzly"",""OPTRE_Vehicles_M808L"",""OPTRE_Vehicles_M808B2"",""OPTRE_Vehicles_M808S"",""OPTRE_Vehicles_M494"",""OPTRE_Vehicles_Scorpion"",""OPTRE_Riot_Shield"",""OPTRE_Weapons_MG_M247"",""OPTRE_Weapons_MG_M247a1"",""OPTRE_Weapons_MG_M73A1"",""OPTRE_Riot_Shield_Pistols"",""SFA_Equipment"",""SFA_Equipment_Mando"",""SFA_Mandalorian_Equipment"",""SFA_NeoCrusader_Equipment"",""SFA_Onderon_Equipment"",""SFA_Telos_Equipment"",""SFA_Republic_Equipment"",""SFA_sith_Equipment"",""SFA_Structure"",""SFA_Structure_Banner"",""SFA_Structure_Buildings"",""SFA_objects"",""SFA_Structure_crates"",""SFA_Structure_Droids"",""SFA_Structure_Bed"",""SFA_Structure_holotable"",""SFA_Structure_radar"",""SFA_Structure_Statics"",""SFA_Structure_tents"",""SFA_Structure_Terminal"",""SFA_Structure_Trenches"",""SFA_Structure_Outpost"",""SFA_Vehicles_N"",""SFA_Vehicles_N_Hutt"",""SFA_Vehicles_Karagga"",""SFA_Vehicles_N_Lance_R"",""SFA_Vehicles_R"",""SFA_Vehicles_devastator"",""SFA_Vehicles_enforcer"",""SFA_Vehicles_Lance"",""SFA_Weapons_N"",""UPSL_aime"",""UPSL_aime_uav_terminal"",""UPSL_aime_vehicle_controls"",""UPSL_aime_vehicle_seats"",""WM_RebelCore_Optional"",""bettinv_main"",""bettinv_main_ace"",""grad_trenches_main"",""grad_trenches_sounds"",""zen_ai"",""zen_area_markers"",""zen_attributes"",""zen_building_markers"",""zen_camera"",""zen_compat_advanced_rappelling"",""zen_compositions"",""zen_damage"",""zen_garage"",""zen_inventory"",""zen_loadout"",""zen_markers_tree"",""zen_modules"",""zen_pylons"",""zen_remote_control"",""zen_tasks"",""ace_advanced_fatigue"",""ace_advanced_throwing"",""ace_ai"",""ace_aircraft"",""ace_arsenal"",""ace_artillerytables"",""ace_attach"",""ace_backpacks"",""ace_ballistics"",""ace_captives"",""ace_cargo"",""ace_casings"",""ace_chemlights"",""ace_compat_cup_terrains_refuel"",""ace_concertina_wire"",""ace_csw"",""ace_dagr"",""ace_disarming"",""ace_dogtags"",""ace_dragging"",""ace_explosives"",""ace_fastroping"",""ace_fcs"",""ace_field_rations"",""acex_field_rations"",""ace_fire_medical_engine"",""ace_flags"",""ace_flashlights"",""ace_fortify"",""acex_fortify"",""ace_gestures"",""ace_gunbag"",""ace_hearing"",""ace_hellfire"",""ace_hot"",""ace_javelin"",""ace_kestrel4500"",""ace_maverick"",""ace_medical"",""ace_medical_blood"",""ace_medical_damage"",""ace_medical_feedback"",""ace_medical_statemachine"",""ace_medical_treatment"",""ace_metis"",""ace_minedetector"",""ace_missile_aim120"",""ace_missile_aim9"",""ace_missile_clgp"",""ace_missile_gbu"",""ace_missile_hud"",""ace_missile_manpad"",""ace_missile_sam"",""ace_missile_sdb"",""ace_missile_vikhr"",""ace_mk6mortar"",""ace_realisticnames_explosives"",""ace_realisticnames_vehicles"",""ace_zeus"",""ace_zeus_captives"",""ace_zeus_medical"",""ace_zeus_cargo"",""ace_zeus_repair"",""ace_zeus_cargoAndRepair"",""ace_zeus_fastroping"",""ace_zeus_pylons"",""ace_zeus_arsenal"",""ace_zeus_fire"",""ace_zeus_trenches"",""ace_zeus_spectator"",""aceax_arsenal"",""crowsEW_editormodules"",""hoa_sling"",""NCA_weapons_b3k2Pistol"",""NCA_weapons_b3k2_pistol"",""NCA_weapons_b3k2Rifle"",""NCA_weapons_b3k2_rifle"",""NCA_weapons_b3k2Sniper"",""NCA_weapons_b3k2_sniper"",""NCA_weapons_dla13Pistol"",""NCA_weapons_dh45_pistol"",""NCA_weapons_holepuncherPistol"",""NCA_weapons_holepuncher_pistol"",""NCA_weapons_holepuncherRifle"",""NCA_weapons_holepuncher_rifle"",""NCA_weapons_holepuncherSniper"",""NCA_weapons_holepuncher_sniper"",""NCA_weapons_ka74"",""NCA_weapons_KA74_sniper"",""NCA_weapons_loadorder"",""NCA_weapons_westar19"",""tgf_armour"",""tgf_backpacks"",""DIS_enhanced_map_ace"",""gge_captives"",""ls_common"",""ls_equipment"",""ls_impulsor"",""ls_lighting"",""ls_meme"",""ls_props"",""ls_props_staticships"",""ls_props_structures"",""ls_props_Tibanna"",""ls_radios"",""ls_radios_compat_tfar"",""ls_sounds"",""ls_weapons"",""ls_weapons_dcSeries"",""ls_weapons_explosives"",""ls_weapons_firepuncher"",""ls_weapons_grenades"",""ls_weapons_melee"",""ls_weapons_mercenary"",""ls_weapons_mpl"",""ls_weapons_rd4"",""ls_weapons_repeaters"",""ls_weapons_rg4d"",""ls_weapons_rps"",""ls_weapons_westar"",""ls_weapons_zh73"",""ls_weapons_zseries"",""ls_zeus"",""MIRA_Vehicle_Medical"",""OPTRE_Blood"",""OPTRE_Buildings2_Ridgco_Ace"",""OPTRE_BW_Locker"",""OPTRE_Corvette"",""OPTRE_Vehicles_Cryopod"",""OPTRE_Holotable"",""OPTRE_Corvette_Interior"",""OPTRE_Corvette_archer"",""OPTRE_Corvette_Weapons_pointdefense"",""OPTRE_Hud"",""OPTRE_Ins_Units_DME"",""OPTRE_Ins_Units_ER"",""RemoveStamina_ACE"",""sfaBoosts"",""SFA_Ossus"",""SFA_Revanite_Equipment"",""SFA_Vehicles_Lance_R"",""SFA_Medical"",""SHGT_survivableWrecks"",""UPSL_aime_change_ammo"",""UPSL_aime_group"",""UPSL_aime_inventory"",""3denEnhanced_ACEArsenalShortcut"",""grad_trenches_assets"",""grad_trenches_functions"",""zen_attached_objects"",""zen_compat_ace"",""zen_context_actions"",""zen_cover_map"",""zen_custom_modules"",""zen_doors"",""ace_advanced_ballistics"",""ace_atragmx"",""ace_dragon"",""ace_intelitems"",""acex_intelitems"",""ace_medical_ai"",""ace_medical_gui"",""ace_rangecard"",""ace_xm157"",""crowsza_main"",""crowsza_misc"",""crowsza_pingbox"",""crowsza_teleport"",""crowsza_tfar"",""crowsza_zeus_text"",""ls_activecamo"",""ls_characters"",""ls_characters_civilian"",""ls_characters_clone"",""ls_characters_clone_legacy"",""ls_characters_clone_legions"",""ls_characters_csf"",""ls_characters_droid"",""ls_characters_imperial"",""ls_characters_jabiim"",""ls_characters_mandalorian"",""ls_characters_meme"",""ls_characters_orsf"",""ls_characters_rebels"",""ls_groups"",""ls_holoprojector"",""ls_identities"",""ls_vehicles"",""ls_vehicles_105k"",""ls_vehicles_aat"",""ls_vehicles_agt"",""ls_vehicles_ast"",""ls_vehicles_barc"",""ls_vehicles_bawhag"",""ls_vehicles_cisdropship"",""ls_vehicles_cr88"",""ls_vehicles_j10"",""ls_vehicles_laati"",""ls_vehicles_laatle"",""ls_vehicles_mortar"",""ls_vehicles_mrbc"",""ls_vehicles_mtt"",""ls_vehicles_radarDish"",""ls_vehicles_starsaber"",""ls_vehicles_stealthbox"",""ls_vehicles_tx130"",""ls_vehicles_z95"",""ls_vehicles_z98"",""ls_weapons_plx"",""OPTRE_Loadorder"",""PHAN_ScifiSupportPlus"",""crowsza_ace"",""crowsza_drawbuild"",""ls_dispenser"",""ls_vehicles_hmp"",""ls_vehicles_laatc"",""ls_weapons_eseries"",""OPTRE_ACE_Compat"",""OPTRE_ACE_Compat_Explosives"",""OPTRE_ACE_Compat_Medical"",""ls_loadorder"",""NCA_core"",""NCA_core_effects"",""NCA_core_scopes"",""NCA_equipment"",""NCA_equipment_explosives"",""NCA_equipment_flares"",""NCA_equipment_handheld"",""NCA_equipment_grenades"",""NCA_equipment_medical"",""NCA_equipment_portableShield"",""NCA_equipment_sprays"",""NCA_weapons_Sprays"",""NCA_equipment_squadShield"",""NCA_jumppacks"",""NCA_props"",""NCA_props_crates"",""NCA_props_tests"",""NCA_radios"",""NCA_resupply"",""NCA_vehicles"",""NCA_vehicles_h3nr1"",""NCA_vehicles_sentinel"",""NCA_vehicles_Sentinel_Drone"",""NCA_vehicles_ugv"",""NCA_vehicles_barc"",""NCA_vehicles_juggernaut"",""NCA_vehicles_orbak"",""NCA_vehicles_AA5Orbak"",""NCA_vehicles_eweb"",""NCA_vehicles_mortar"",""NCA_equipment_republicMortar"",""NCA_vehicles_overlord"",""NCA_Overlord_Patch"",""NCA_vehicles_testTurret"",""NCA_vehicles_tyrant"",""NCA_Tyrant_Patch"",""NCA_vehicles_weapons"",""ls_compat_ace"",""ls_compat_ace_chemlights"",""ls_compat_ace_csw"",""ls_compat_ace_explosives"",""ls_compat_ace_flags"",""ls_compat_ace_interaction"",""ls_compat_ace_javelin"",""ls_compat_ace_logistics"",""ls_compat_ace_medical"",""ls_compat_ace_trenches"",""ls_compat_tas"",""ls_compat_wbk_droids"",""ls_compat_wbk_laf"",""ls_deprecated"",""LS_Groups_Clones"",""LS_units_clones"",""LS_units_droids"",""LS_weapon_core"",""SWLB_BX_Commando"",""SWLB_CEE"",""SWLB_EyepatchNightVision"",""SWLB_GunnerNightVision"",""SWLB_MonocularNightVision"",""SWLB_clones"",""SWLB_clones_spec"",""SWLB_clones_spec_backpacks"",""SWLB_clones_training"",""SWLB_droids"",""SWLB_droids_backpacks"",""SWLB_equipment"",""SWLB_equipment_backpacks"",""SWLB_equipment_binoculars"",""SWLB_equipment_facewears"",""SWLB_groundholders"",""SWLB_main"",""SWLB_main_insignias"",""SWLB_merc_mando"",""SWLB_radios"",""SWLB_turbotank"",""SWLB_units"",""SWLB_units_spec"",""SWLG_clones_tanks"",""SWLG_clones_tanks_tx130"",""SWLW_main"",""SWLW_DC15AC"",""SWLW_DC15BR"",""SWLW_DC15SAW"",""SWLW_DP20"",""SWLW_Rework_DC15AC"",""SWLW_Uzi"",""SWLW_WestarM5"",""SWLW_clones"",""SWLW_clones_explosives"",""SWLW_clones_explosives_DetPack"",""SWLW_clones_grenades"",""SWLW_clones_grenades_beltGrenade"",""SWLW_clones_launchers"",""SWLW_clones_launchers_PLX1"",""SWLW_clones_launchers_RPS6"",""SWLW_clones_mg"",""SWLW_clones_mg_Z6"",""SWLW_clones_mg_Z7"",""SWLW_clones_pistols"",""SWLW_clones_pistols_DC17"",""SWLW_clones_pistols_glocko"",""SWLW_clones_rifles"",""SWLW_clones_rifles_DC15A"",""SWLW_clones_rifles_DC15X"",""SWLW_clones_rifles_GL"",""SWLW_clones_smgs"",""SWLW_clones_smgs_DC15s"",""SWLW_clones_spec"",""SWLW_clones_spec_explosives"",""SWLW_clones_training"",""SWLW_clones_training_smgs"",""SWLW_clones_training_smgs_DC15s"",""SWLW_droids"",""SWLW_droids_launchers"",""SWLW_droids_launchers_E60R"",""SWLW_droids_mg"",""SWLW_droids_mgs_E5C"",""SWLW_droids_pistols"",""SWLW_droids_pistols_RG4D"",""SWLW_droids_smgs"",""SWLW_droids_smgs_E5"",""SWLW_main_manual"",""SWLW_merc"",""SWLW_merc_mando"",""SWLW_merc_mando_pistols"",""SWLW_merc_mando_pistols_Westar35SA"",""SWLW_merc_mando_rifles"",""SWLW_merc_mando_rifles_Westar35S"",""SWLW_merc_mando_rifles_sniper"",""SWLW_merc_mando_smgs"",""SWLW_merc_rifles"",""SWLW_merc_rifles_ZH73"",""SWLW_merc_trando"",""SWLW_merc_trando_mg_ls150"",""SWLW_merc_trando_mgs"",""SWLW_merc_trando_scatter"",""SWLW_merc_trando_smgs"",""SWLW_merc_trando_smgs_acpr"",""ls_Core"",""ls_acclamator"",""ls_ammobox"",""ls_animation_character"",""ls_animation_dualAnimationFix"",""ls_animation_reloads"",""ls_animation_vehicle"",""ls_armor_bluefor"",""ls_armor_bluefor_deprecated"",""ls_armor_bluefor_hologram"",""ls_armor_greenfor"",""ls_armor_redfor"",""ls_armor_redfor_deprecated"",""ls_bottles"",""ls_commandPost"",""ls_coreship"",""ls_dby_827"",""ls_disabled_b1"",""ls_equipment_bluefor"",""ls_equipment_greenfor"",""ls_equipment_greenfor_deprecated"",""ls_equipment_redfor"",""ls_flags"",""ls_functions"",""ls_groups_greenfor"",""ls_groups_redfor"",""ls_hallway"",""ls_hardcell"",""ls_hmp"",""ls_holotables"",""ls_laat_2"",""ls_landingpad"",""ls_lucrehulk"",""ls_mandator"",""ls_misc_memefor"",""ls_modular_test"",""ls_mse_6"",""ls_munificent"",""ls_optional_aceChemlights"",""ls_optional_aceExplosives"",""ls_optional_aceMedical"",""ls_platforms"",""ls_providence"",""ls_quasar"",""ls_radio"",""ls_recusant"",""ls_sds_stealth"",""ls_small_computer"",""ls_static_holoprojectors"",""ls_statics_props"",""ls_statics_structures"",""ls_statics_sweeper"",""ls_stimbox"",""ls_stone_cover"",""ls_subjugator"",""ls_units_bluefor"",""ls_units_greenfor"",""ls_units_purplefor"",""ls_units_redfor"",""ls_vehicles_ground"",""ls_vehicles_heli"",""ls_vehicles_pylon"",""ls_vehicles_turrets"",""ls_vehicles_weapons"",""ls_venator"",""ls_weapons_core"",""ls_weapons_deprecated"",""lsb_capitalShips_cis"",""lsd_armor_bluefor"",""lsd_armor_bluefor_deprecated"",""lsd_armor_bluefor_hologram"",""lsd_armor_redfor"",""lsd_core"",""lsd_data"",""lsd_dubbing"",""lsd_equipment_bluefor"",""lsd_equipment_redfor"",""lsd_functions"",""lsd_identities"",""lsd_props_functional"",""lsd_sounds"",""lsd_units_bluefor"",""lsd_units_redfor"",""lsd_units_redfor_deprecated"",""lsd_vehicles_VTOL"",""lsd_vehicles_cars"",""lsd_vehicles_heli"",""lsd_weapons"",""swlb_static"",""JMS_st_objectsColNew"",""SWLB_radios_beta"",""mti_common"",""mti_cuffbreak"",""mti_datapad"",""mti_disguise"",""mti_doors"",""mti_drones"",""mti_equipment"",""mti_fortify"",""mti_heavy_repeater"",""mti_hungergames"",""mti_intercom"",""mti_katarnOS"",""mti_medical"",""mti_medical_defib"",""mti_medical_stretcher"",""mti_minedetector"",""mti_modules"",""mti_mortar"",""mti_mse6"",""mti_pangolin"",""mti_pronelauncher"",""mti_props"",""mti_screenshot_mode"",""mti_tech"",""mti_TPW"",""mti_turrets"",""mti_vehicles"",""mti_vehicles_mutt"",""mti_Ven_Cannon"",""mti_weapons_core"",""mti_weapons_dc19sc"",""mti_weapons_dc42"",""mti_weapons_firepuncher"",""mti_weapons_GH"",""mti_weapons_haad"",""mti_weapons_handgun"",""mti_weapons_knife"",""mti_weapons_launcher"",""mti_weapons_nt"",""mti_weapons_primary"",""mti_weapons_verpine"",""mti_zeus"",""NCA_armor"",""NCA_core_modules"",""NCA_customArmor"",""NCA_customArmor_backpacks"",""NCA_customArmor_helmets"",""NCA_customArmor_uniforms"",""NCA_vehicles_arc170"",""NCA_vehicles_delta7"",""NCA_vehicles_Delta"",""NCA_vehicles_gozanti"",""NCA_vehicles_hmp"",""NCA_vehicles_laatc"",""NCA_vehicles_laati"",""NCA_vehicles_laatle"",""NCA_vehicles_maf"",""NCA_vehicles_nuclass"",""NCA_vehicles_rhoclass"",""NCA_vehicles_trifighter"",""NCA_vehicles_tri_fighter"",""NCA_vehicles_v19"",""NCA_vehicles_vc4Transport"",""NCA_vehicles_Transport"",""NCA_vehicles_vulture"",""NCA_vehicles_vultureDroid"",""NCA_vehicles_vwing"",""NCA_vehicles_ywing"",""NCA_vehicles_z95"",""NCA_vehicles_prowler"",""NCA_vehicles_recondrone"",""NCA_vehicles_scavdrone"",""NCA_vehicles_assaultCraft"",""NCA_vehicles_assault_craft"",""NCA_vehicles_atap"",""NCA_vehicles_atrt"",""NCA_vehicles_atte"",""NCA_vehicles_av7"",""NCA_vehicles_combatSpeeder"",""NCA_vehicles_fliknot"",""NCA_vehicles_hagm"",""NCA_vehicles_HAMG"",""NCA_vehicles_hailfire"",""NCA_vehicles_incineratoraat"",""NCA_vehicles_mtt"",""NCA_vehicles_n99"",""NCA_vehicles_px10"",""NCA_vehicles_pyrid"",""NCA_vehicles_rx200"",""NCA_vehicles_scoutTank"",""NCA_vehicles_Scout_Tank"",""NCA_vehicles_shieldAAT"",""NCA_vehicles_Shield_AAT"",""NCA_vehicles_swampSpeeder"",""NCA_vehicles_tx130"",""NCA_vehicles_utat"",""NCA_vehicles_autoTurret"",""NCA_equipment_autoTurret"",""NCA_vehicles_deka"",""NCA_vehicles_df9"",""NCA_vehicles_flakcannon"",""NCA_vehicles_j10"",""NCA_vehicles_keeradak"",""NCA_vehicles_og9"",""NCA_vehicles_particleCannon"",""NCA_vehicles_lancer"",""NCA_weapons_oppressor"",""mti_admin_messages"",""mti_ai"",""mti_arc_bracer"",""mti_boc"",""mti_capitalships"",""mti_catTab_core"",""mti_catTab_data"",""mti_catTab_ui"",""mti_drones_paap"",""mti_explosives"",""mti_logistics"",""mti_logistics_cratefiller"",""mti_mortar_turret"",""mti_supplies"",""mti_weapons_bowcaster"",""mti_weapons_BR77"",""mti_weapons_DC17SGF"",""mti_weapons_RSKF44"",""NCA_vehicles_aat"",""NCA_vehicles_adsd"",""NCA_vehicles_gat"",""NCA_vehicles_itt"",""NCA_vehicles_raptor"",""NCA_vehicles_protonCannon"",""mti_aircraft"",""mti_weapons_bc"",""NCA_vehicles_j1"",""mti_loadorder"",""mti_armoury_main"",""mti_factions_main"",""mti_factions_old_republic"",""NCA_vehicles_loadorder"",""mti_armoury_common"",""mti_armoury_covertops"",""mti_armoury_jumptrooper"",""mti_armoury_pilot"",""mti_armoury_trooper"",""mti_factions_common"",""mti_factions_compositions"",""mti_factions_deathwatch"",""mti_factions_imp"",""mti_factions_ION"",""mti_factions_mando"",""mti_factions_props"",""mti_factions_rebels"",""mti_factions_shadowcollective"",""SC_Optionals_BNS"",""mti_factions_sith_imperials"",""mti_factions_weapons"",""mti_factions_zombies"",""NCA_factions"",""NCA_factions_droids"",""NCA_factions_pyrishiCollective"",""NCA_factions_republic"",""NCA_factions_separatistArmy"",""NCA_factions_sithEmpireRemnants"",""NCA_loadorder"",""mti_armoury_arc"",""mti_armoury_commando"",""mti_armoury_fieldsupport"",""mti_factions_cis"",""mti_factions_cishuman""]]";
force ace_common_deployedSwayFactor = 1;
force ace_common_displayTextColor = [0,0,0,0.1];
force ace_common_displayTextFontColor = [1,1,1,1];
force ace_common_enableSway = true;
ace_common_epilepsyFriendlyMode = false;
force ace_common_magneticDeclination = false;
ace_common_progressBarInfo = 2;
force ace_common_restedSwayFactor = 1;
force ace_common_settingFeedbackIcons = 1;
force ace_common_settingProgressBarLocation = 0;
force ace_common_swayFactor = 1;

// ACE Cook-off
force ace_cookoff_ammoCookoffDuration = 0;
force ace_cookoff_cookoffDuration = 1;
force ace_cookoff_destroyVehicleAfterCookoff = false;
force ace_cookoff_enableAmmobox = false;
force ace_cookoff_enableAmmoCookoff = false;
force ace_cookoff_enableFire = false;
force ace_cookoff_probabilityCoef = 0.4;
force ace_cookoff_removeAmmoDuringCookoff = true;

// ACE Crew Served Weapons
force ace_csw_ammoHandling = 2;
force ace_csw_defaultAssemblyMode = false;
force ace_csw_dragAfterDeploy = true;
force ace_csw_handleExtraMagazines = false;
force ace_csw_handleExtraMagazinesType = 0;
force ace_csw_progressBarTimeCoefficent = 1;

// ACE Dragging
force ace_dragging_allowRunWithLightweight = true;
force ace_dragging_dragAndFire = true;
force ace_dragging_skipContainerWeight = true;
force ace_dragging_weightCoefficient = 0.25;

// ACE Explosives
force ace_explosives_customTimerDefault = 30;
force ace_explosives_customTimerMax = 3600;
force ace_explosives_customTimerMin = 5;
force ace_explosives_explodeOnDefuse = true;
force ace_explosives_punishNonSpecialists = true;
force ace_explosives_requireSpecialist = true;

// ACE Field Rations
force ace_field_rations_zeusUpdates = false;
force acex_field_rations_affectAdvancedFatigue = false;
force acex_field_rations_enabled = false;
force acex_field_rations_hudShowLevel = 0;
force acex_field_rations_hudTransparency = -1;
force acex_field_rations_hudType = 0;
force acex_field_rations_hungerSatiated = 1;
force acex_field_rations_nearDepletedConsequence = 1;
force acex_field_rations_terrainObjectActions = false;
force acex_field_rations_thirstQuenched = 1;
force acex_field_rations_timeWithoutFood = 2;
force acex_field_rations_timeWithoutWater = 2;
force acex_field_rations_waterSourceActions = 2;

// ACE Fire
force ace_fire_dropWeapon = 1;
force ace_fire_enabled = false;
force ace_fire_enableFlare = false;
force ace_fire_enableScreams = false;

// ACE Fortify
force ace_fortify_markObjectsOnMap = 1;
force ace_fortify_timeCostCoefficient = 1;
force ace_fortify_timeMin = 1.5;
force acex_fortify_settingHint = 1;

// ACE Fragmentation Simulation
force ace_frag_enabled = false;
force ace_frag_reflectionsEnabled = false;
force ace_frag_spallEnabled = false;
force ace_frag_spallIntensity = 1;

// ACE G-Forces
force ace_gforces_coef = 1;
force ace_gforces_enabledFor = 0;

// ACE Goggles
ace_goggles_drawOverlay = true;
ace_goggles_effects = 2;
force ace_goggles_showClearGlasses = true;
force ace_goggles_showInThirdPerson = false;

// ACE Grenades
force ace_grenades_convertExplosives = true;

// ACE Headless
force acex_headless_delay = 10;
force acex_headless_enabled = true;
force acex_headless_endMission = 0;
force acex_headless_log = true;
force acex_headless_transferLoadout = 1;

// ACE Hearing
force ace_hearing_autoAddEarplugsToUnits = 1;
ace_hearing_disableEarRinging = true;
force ace_hearing_earplugsVolume = 0.5;
force ace_hearing_enableCombatDeafness = false;
force ace_hearing_enabledForZeusUnits = false;
ace_hearing_enableNoiseDucking = true;
force ace_hearing_explosionDeafnessCoefficient = 1;
force ace_hearing_unconsciousnessVolume = 0.4;

// ACE Interaction
force ace_interaction_disableNegativeRating = true;
force ace_interaction_enableAnimActions = true;
force ace_interaction_enableGroupRenaming = true;
force ace_interaction_enableMagazinePassing = true;
force ace_interaction_enableTeamManagement = true;
ace_interaction_enableThrowablePassing = true;
force ace_interaction_enableWeaponAttachments = true;
force ace_interaction_interactWithEnemyCrew = 0;
force ace_interaction_interactWithTerrainObjects = false;
force ace_interaction_remoteTeamManagement = true;

// ACE Interaction Menu
ace_gestures_showOnInteractionMenu = 2;
ace_interact_menu_actionOnKeyRelease = true;
force ace_interact_menu_addBuildingActions = true;
ace_interact_menu_alwaysUseCursorInteraction = true;
ace_interact_menu_alwaysUseCursorSelfInteraction = true;
ace_interact_menu_colorShadowMax = [0,0,0,1];
ace_interact_menu_colorShadowMin = [0,0,0,0.25];
ace_interact_menu_colorTextMax = [1,1,1,1];
ace_interact_menu_colorTextMin = [1,1,1,0.25];
ace_interact_menu_consolidateSingleChild = false;
ace_interact_menu_cursorKeepCentered = false;
ace_interact_menu_cursorKeepCenteredSelfInteraction = false;
ace_interact_menu_menuAnimationSpeed = 0;
ace_interact_menu_menuBackground = 0;
ace_interact_menu_menuBackgroundSelf = 0;
ace_interact_menu_selectorColor = [0.96,0.71,0];
ace_interact_menu_shadowSetting = 2;
ace_interact_menu_textSize = 2;
ace_interact_menu_useListMenu = true;
ace_interact_menu_useListMenuSelf = true;

// ACE Kill Tracker
force ace_killtracker_showCrewKills = true;
force ace_killtracker_showMedicalWounds = 2;
force ace_killtracker_trackAI = true;

// ACE Logistics
ace_cargo_carryAfterUnload = true;
ace_cargo_checkSizeInteraction = false;
force ace_cargo_enable = true;
force ace_cargo_enableDeploy = true;
force ace_cargo_enableRename = true;
force ace_cargo_loadTimeCoefficient = 5;
force ace_cargo_openAfterUnload = 3;
force ace_cargo_paradropTimeCoefficent = 0.2;
force ace_rearm_distance = 20;
force ace_rearm_enabled = true;
force ace_rearm_level = 0;
force ace_rearm_supply = 0;
force ace_refuel_cargoRate = 10;
force ace_refuel_enabled = true;
force ace_refuel_hoseLength = 12;
force ace_refuel_progressDuration = 2;
force ace_refuel_rate = 1;
force ace_towing_addRopeToVehicleInventory = true;

// ACE Magazine Repack
ace_magazinerepack_repackAnimation = true;
force ace_magazinerepack_repackLoadedMagazines = true;
force ace_magazinerepack_timePerAmmo = 1;
force ace_magazinerepack_timePerBeltLink = 8;
force ace_magazinerepack_timePerMagazine = 1;

// ACE Map
force ace_map_BFT_Enabled = true;
force ace_map_BFT_HideAiGroups = true;
force ace_map_BFT_Interval = 30;
force ace_map_BFT_ShowPlayerNames = false;
force ace_map_DefaultChannel = 1;
force ace_map_mapGlow = true;
force ace_map_mapIllumination = true;
force ace_map_mapLimitZoom = false;
force ace_map_mapShake = false;
force ace_map_mapShowCursorCoordinates = false;
force ace_markers_moveRestriction = 0;
force ace_markers_timestampEnabled = false;
force ace_markers_timestampFormat = "HH:MM";
force ace_markers_timestampHourFormat = 24;
force ace_markers_timestampTimezone = 0;
ace_markers_TimestampUTCMinutesOffset = 0;
force ace_markers_timestampUTCOffset = 0;

// ACE Map Gestures
ace_map_gestures_allowCurator = true;
force ace_map_gestures_allowSpectator = true;
force ace_map_gestures_briefingMode = 0;
force ace_map_gestures_defaultColor = [1,0.88,0,0.7];
force ace_map_gestures_defaultLeadColor = [1,0.88,0,0.95];
force ace_map_gestures_enabled = true;
force ace_map_gestures_interval = 0.03;
force ace_map_gestures_maxRange = 50;
force ace_map_gestures_maxRangeCamera = 14;
force ace_map_gestures_nameTextColor = [0.2,0.2,0.2,0.3];
force ace_map_gestures_onlyShowFriendlys = false;

// ACE Map Tools
force ace_maptools_drawStraightLines = true;
ace_maptools_plottingBoardAllowChannelDrawing = 1;
force ace_maptools_rotateModifierKey = 1;

// ACE Medical
force ace_medical_ai_enabledFor = 2;
force ace_medical_ai_requireItems = 2;
force ace_medical_AIDamageThreshold = 1;
force ace_medical_bleedingCoefficient = 0.3;
force ace_medical_blood_bloodLifetime = 600;
force ace_medical_blood_enabledFor = 2;
force ace_medical_blood_maxBloodObjects = 500;
force ace_medical_deathChance = 0.15;
force ace_medical_dropWeaponUnconsciousChance = 0;
force ace_medical_enableVehicleCrashes = false;
force ace_medical_engine_damagePassThroughEffect = 1;
force ace_medical_fatalDamageSource = 1;
force ace_medical_fractureChance = 0.15;
force ace_medical_fractures = 1;
force ace_medical_ivFlowRate = 1;
force ace_medical_limbDamageThreshold = 5;
force ace_medical_limping = 1;
force ace_medical_painCoefficient = 1.5;
force ace_medical_painUnconsciousChance = 0.1;
force ace_medical_painUnconsciousThreshold = 0.85;
force ace_medical_playerDamageThreshold = 2;
force ace_medical_spontaneousWakeUpChance = 0.25;
force ace_medical_spontaneousWakeUpEpinephrineBoost = 4;
force ace_medical_statemachine_AIUnconsciousness = true;
force ace_medical_statemachine_cardiacArrestBleedoutEnabled = true;
force ace_medical_statemachine_cardiacArrestTime = 900;
force ace_medical_statemachine_fatalInjuriesAI = 0;
force ace_medical_statemachine_fatalInjuriesPlayer = 1;
force ace_medical_useLimbDamage = 0;
force ace_medical_vitals_simulateSpO2 = true;

// ACE Medical Interface
ace_medical_feedback_bloodVolumeEffectType = 0;
force ace_medical_feedback_enableHUDIndicators = true;
ace_medical_feedback_painEffectType = 0;
ace_medical_gui_bloodLossColor_0 = [1,1,1,1];
ace_medical_gui_bloodLossColor_1 = [1,0.95,0.64,1];
ace_medical_gui_bloodLossColor_2 = [1,0.87,0.46,1];
ace_medical_gui_bloodLossColor_3 = [1,0.8,0.33,1];
ace_medical_gui_bloodLossColor_4 = [1,0.72,0.24,1];
ace_medical_gui_bloodLossColor_5 = [1,0.63,0.15,1];
ace_medical_gui_bloodLossColor_6 = [1,0.54,0.08,1];
ace_medical_gui_bloodLossColor_7 = [1,0.43,0.02,1];
ace_medical_gui_bloodLossColor_8 = [1,0.3,0,1];
ace_medical_gui_bloodLossColor_9 = [1,0,0,1];
ace_medical_gui_bodyPartOutlineColor = [1,1,1,1];
ace_medical_gui_damageColor_0 = [1,1,1,1];
ace_medical_gui_damageColor_1 = [0.75,0.95,1,1];
ace_medical_gui_damageColor_2 = [0.62,0.86,1,1];
ace_medical_gui_damageColor_3 = [0.54,0.77,1,1];
ace_medical_gui_damageColor_4 = [0.48,0.67,1,1];
ace_medical_gui_damageColor_5 = [0.42,0.57,1,1];
ace_medical_gui_damageColor_6 = [0.37,0.47,1,1];
ace_medical_gui_damageColor_7 = [0.31,0.36,1,1];
ace_medical_gui_damageColor_8 = [0.22,0.23,1,1];
ace_medical_gui_damageColor_9 = [0,0,1,1];
force ace_medical_gui_enableActions = 0;
force ace_medical_gui_enableMedicalMenu = 1;
force ace_medical_gui_enableSelfActions = true;
force ace_medical_gui_interactionMenuShowTriage = 1;
force ace_medical_gui_maxDistance = 3;
force ace_medical_gui_openAfterTreatment = true;
force ace_medical_gui_peekMedicalInfoReleaseDelay = 0;
force ace_medical_gui_peekMedicalOnHit = false;
force ace_medical_gui_peekMedicalOnHitDuration = 0;
force ace_medical_gui_showBleeding = 2;
force ace_medical_gui_showBloodlossEntry = true;
force ace_medical_gui_showDamageEntry = false;
ace_medical_gui_tourniquetWarning = true;

// ACE Medical Treatment
force ace_medical_treatment_advancedBandages = 2;
force ace_medical_treatment_advancedDiagnose = 1;
force ace_medical_treatment_advancedMedication = true;
force ace_medical_treatment_allowBodyBagUnconscious = true;
force ace_medical_treatment_allowGraveDigging = 2;
force ace_medical_treatment_allowLitterCreation = true;
force ace_medical_treatment_allowSelfIV = 1;
force ace_medical_treatment_allowSelfPAK = 1;
force ace_medical_treatment_allowSelfStitch = 1;
force ace_medical_treatment_allowSharedEquipment = 0;
force ace_medical_treatment_bandageEffectiveness = 1;
force ace_medical_treatment_bandageRollover = true;
force ace_medical_treatment_clearTrauma = 0;
force ace_medical_treatment_consumePAK = 0;
force ace_medical_treatment_consumeSurgicalKit = 0;
force ace_medical_treatment_convertItems = 0;
force ace_medical_treatment_cprSuccessChanceMax = 0.8;
force ace_medical_treatment_cprSuccessChanceMin = 0.1;
force ace_medical_treatment_graveDiggingMarker = true;
force ace_medical_treatment_holsterRequired = 0;
force ace_medical_treatment_litterCleanupDelay = 240;
force ace_medical_treatment_locationAdenosine = 0;
force ace_medical_treatment_locationEpinephrine = 0;
force ace_medical_treatment_locationIV = 0;
force ace_medical_treatment_locationMorphine = 0;
force ace_medical_treatment_locationPAK = 3;
force ace_medical_treatment_locationsBoostTraining = false;
force ace_medical_treatment_locationSplint = 0;
force ace_medical_treatment_locationSurgicalKit = 0;
force ace_medical_treatment_maxLitterObjects = 300;
force ace_medical_treatment_medicAdenosine = 0;
force ace_medical_treatment_medicEpinephrine = 0;
force ace_medical_treatment_medicIV = 1;
force ace_medical_treatment_medicMorphine = 0;
force ace_medical_treatment_medicPAK = 2;
force ace_medical_treatment_medicSplint = 0;
force ace_medical_treatment_medicSurgicalKit = 1;
force ace_medical_treatment_numericalPulse = 1;
force ace_medical_treatment_timeCoefficientPAK = 0.1;
force ace_medical_treatment_treatmentTimeAutoinjector = 2;
force ace_medical_treatment_treatmentTimeBodyBag = 10;
ace_medical_treatment_treatmentTimeCoeffZeus = 1;
force ace_medical_treatment_treatmentTimeCPR = 15;
force ace_medical_treatment_treatmentTimeGrave = 20;
force ace_medical_treatment_treatmentTimeIV = 8;
force ace_medical_treatment_treatmentTimeSplint = 7;
force ace_medical_treatment_treatmentTimeTourniquet = 3;
force ace_medical_treatment_treatmentTimeTrainedAutoinjector = 5;
force ace_medical_treatment_treatmentTimeTrainedIV = 12;
force ace_medical_treatment_treatmentTimeTrainedSplint = 7;
force ace_medical_treatment_treatmentTimeTrainedTourniquet = 7;
force ace_medical_treatment_woundReopenChance = 1;
force ace_medical_treatment_woundStitchTime = 3;

// ACE Name Tags
force ace_nametags_ambientBrightnessAffectViewDist = 1;
force ace_nametags_defaultNametagColor = [0.77,0.51,0.08,1];
ace_nametags_nametagColorBlue = [0.27,0.53,0.95,1];
ace_nametags_nametagColorGreen = [0.11,0.64,0.38,1];
ace_nametags_nametagColorMain = [1,1,1,1];
ace_nametags_nametagColorRed = [0.85,0.13,0.15,1];
ace_nametags_nametagColorYellow = [1,0.81,0.29,1];
force ace_nametags_playerNamesMaxAlpha = 0.8;
force ace_nametags_playerNamesViewDistance = 50;
force ace_nametags_showCursorTagForVehicles = true;
force ace_nametags_showNamesForAI = false;
force ace_nametags_showPlayerNames = 1;
force ace_nametags_showPlayerRanks = false;
force ace_nametags_showSoundWaves = 1;
force ace_nametags_showVehicleCrewInfo = true;
force ace_nametags_tagSize = 2;

// ACE Nightvision
force ace_nightvision_aimDownSightsBlur = 0.05;
force ace_nightvision_disableNVGsWithSights = false;
force ace_nightvision_effectScaling = 0.05;
force ace_nightvision_fogScaling = 0.05;
force ace_nightvision_noiseScaling = 0;
force ace_nightvision_shutterEffects = true;

// ACE Overheating
force ace_overheating_cookoffCoef = 0;
force ace_overheating_coolingCoef = 1;
force ace_overheating_displayTextOnJam = true;
force ace_overheating_enabled = true;
force ace_overheating_heatCoef = 0.2;
force ace_overheating_jamChanceCoef = 0.4;
force ace_overheating_overheatingDispersion = true;
force ace_overheating_overheatingRateOfFire = false;
force ace_overheating_particleEffectsAndDispersionDistance = 3000;
force ace_overheating_showParticleEffects = true;
force ace_overheating_showParticleEffectsForEveryone = false;
force ace_overheating_suppressorCoef = 1;
force ace_overheating_unJamFailChance = 0;
force ace_overheating_unJamOnreload = false;
force ace_overheating_unJamOnSwapBarrel = false;

// ACE Pointing
force ace_finger_enabled = true;
force ace_finger_indicatorColor = [0.83,0.68,0.21,0.75];
force ace_finger_indicatorForSelf = true;
force ace_finger_maxRange = 50;
force ace_finger_proximityScaling = false;
force ace_finger_sizeCoef = 1;

// ACE Pylons
force ace_pylons_enabledForZeus = true;
force ace_pylons_enabledFromAmmoTrucks = true;
force ace_pylons_rearmNewPylons = true;
force ace_pylons_requireEngineer = false;
force ace_pylons_requireToolkit = false;
force ace_pylons_searchDistance = 15;
force ace_pylons_timePerPylon = 5;

// ACE Quick Mount
force ace_quickmount_distance = 5;
force ace_quickmount_enabled = true;
force ace_quickmount_enableMenu = 3;
force ace_quickmount_priority = 3;
force ace_quickmount_speed = 18;

// ACE Repair
force ace_repair_addSpareParts = true;
force ace_repair_autoShutOffEngineWhenStartingRepair = true;
force ace_repair_consumeItem_toolKit = 0;
force ace_repair_displayTextOnRepair = true;
force ace_repair_enabled = true;
force ace_repair_engineerSetting_fullRepair = 1;
force ace_repair_engineerSetting_repair = 1;
force ace_repair_engineerSetting_wheel = 0;
force ace_repair_fullRepairLocation = 0;
force ace_repair_fullRepairRequiredItems = ["ace_repair_anyToolKit"];
force ace_repair_locationsBoostTraining = false;
force ace_repair_miscRepairRequiredItems = [];
force ace_repair_miscRepairTime = 10;
force ace_repair_patchWheelEnabled = 0;
force ace_repair_patchWheelLocation = ["ground","vehicle"];
force ace_repair_patchWheelMaximumRepair = 0.3;
force ace_repair_patchWheelRequiredItems = ["ace_repair_anyToolKit"];
force ace_repair_patchWheelTime = 5;
force ace_repair_repairDamageThreshold = 0.6;
force ace_repair_repairDamageThreshold_engineer = 0.3;
force ace_repair_timeCoefficientFullRepair = 0.25;
force ace_repair_wheelChangeTime = 10;
force ace_repair_wheelRepairRequiredItems = [];

// ACE Respawn
force ace_respawn_removeDeadBodiesDisconnected = true;
force ace_respawn_savePreDeathGear = true;

// ACE Scopes
force ace_scopes_correctZeroing = true;
force ace_scopes_deduceBarometricPressureFromTerrainAltitude = false;
force ace_scopes_defaultZeroRange = 100;
force ace_scopes_enabled = false;
force ace_scopes_forceUseOfAdjustmentTurrets = false;
ace_scopes_inScopeAdjustment = false;
force ace_scopes_overwriteZeroRange = false;
force ace_scopes_simplifiedZeroing = false;
ace_scopes_useLegacyUI = false;
force ace_scopes_zeroReferenceBarometricPressure = 1013.25;
force ace_scopes_zeroReferenceHumidity = 0;
force ace_scopes_zeroReferenceTemperature = 15;

// ACE Sitting
force acex_sitting_enable = true;

// ACE Spectator
force ace_spectator_enableAI = false;
force ace_spectator_maxFollowDistance = 5;
force ace_spectator_restrictModes = 1;
force ace_spectator_restrictVisions = 0;

// ACE Switch Units
force ace_switchunits_enableSafeZone = false;
force ace_switchunits_enableSwitchUnits = false;
force ace_switchunits_safeZoneRadius = 100;
force ace_switchunits_switchToCivilian = false;
force ace_switchunits_switchToEast = false;
force ace_switchunits_switchToIndependent = false;
force ace_switchunits_switchToWest = false;

// ACE Trenches
force ace_trenches_bigEnvelopeDigDuration = 25;
force ace_trenches_bigEnvelopeRemoveDuration = 15;
force ace_trenches_smallEnvelopeDigDuration = 20;
force ace_trenches_smallEnvelopeRemoveDuration = 12;

// ACE Uncategorized
force ace_fastroping_autoAddFRIES = false;
force ace_fastroping_requireRopeItems = false;
ace_flags_enableCarrying = true;
ace_flags_enablePlacing = true;
force ace_gunbag_swapGunbagEnabled = true;
force ace_hitreactions_minDamageToTrigger = 0.1;
force ace_hitreactions_weaponDropChanceArmHitAI = 0;
force ace_hitreactions_weaponDropChanceArmHitPlayer = 0;
ace_inventory_inventoryDisplaySize = 0;
force ace_laser_dispersionCount = 2;
force ace_laser_showLaserOnMap = 0;
force ace_marker_flags_placeAnywhere = true;
force ace_microdagr_mapDataAvailable = 2;
force ace_microdagr_waypointPrecision = 3;
force ace_noradio_enabled = true;
force ace_optionsmenu_showNewsOnMainMenu = true;
force ace_overpressure_backblastDistanceCoefficient = 1;
force ace_overpressure_overpressureDistanceCoefficient = 1;
force ace_parachute_failureChance = 0.0518587;
force ace_parachute_hideAltimeter = false;
force ace_tagging_quickTag = 2;

// ACE User Interface
force ace_ui_allowSelectiveUI = true;
ace_ui_ammoCount = true;
ace_ui_ammoType = true;
ace_ui_commandMenu = true;
force ace_ui_enableSpeedIndicator = true;
ace_ui_firingMode = true;
ace_ui_groupBar = false;
ace_ui_gunnerAmmoCount = true;
ace_ui_gunnerAmmoType = true;
ace_ui_gunnerFiringMode = true;
ace_ui_gunnerLaunchableCount = true;
ace_ui_gunnerLaunchableName = true;
ace_ui_gunnerMagCount = true;
ace_ui_gunnerWeaponLowerInfoBackground = true;
ace_ui_gunnerWeaponName = true;
ace_ui_gunnerWeaponNameBackground = true;
ace_ui_gunnerZeroing = true;
ace_ui_hideDefaultActionIcon = false;
ace_ui_magCount = true;
ace_ui_soldierVehicleWeaponInfo = true;
ace_ui_staminaBar = true;
ace_ui_stance = true;
ace_ui_throwableCount = true;
ace_ui_throwableName = true;
ace_ui_vehicleAltitude = true;
ace_ui_vehicleCompass = true;
ace_ui_vehicleDamage = true;
ace_ui_vehicleFuelBar = true;
ace_ui_vehicleInfoBackground = true;
ace_ui_vehicleName = true;
ace_ui_vehicleNameBackground = true;
ace_ui_vehicleRadar = true;
ace_ui_vehicleSpeed = true;
ace_ui_weaponLowerInfoBackground = true;
ace_ui_weaponName = true;
ace_ui_weaponNameBackground = true;
ace_ui_zeroing = true;

// ACE Vehicle Lock
force ace_vehiclelock_defaultLockpickStrength = 10;
force ace_vehiclelock_lockVehicleInventory = false;
force ace_vehiclelock_vehicleStartingLockState = -1;

// ACE Vehicle Medical
MIRA_Vehicle_Medical_CacheInterval = 0.4;
MIRA_Vehicle_Medical_EnableAVM = true;
MIRA_Vehicle_Medical_EnableIncapacitated = false;
MIRA_Vehicle_Medical_EnableStable = true;
MIRA_Vehicle_Medical_EnableUnstable = true;
MIRA_Vehicle_Medical_Incapacitated_CanUnloadAll = true;
MIRA_Vehicle_Medical_Incapacitated_ShowCount = false;
MIRA_Vehicle_Medical_Stable_ShowCount = true;
MIRA_Vehicle_Medical_Stable_ThresholdLowBP = 80;
MIRA_Vehicle_Medical_Stable_ThresholdLowHR = 50;
MIRA_Vehicle_Medical_Stable_TrackFractures = true;
MIRA_Vehicle_Medical_Stable_TrackIV = true;
MIRA_Vehicle_Medical_Stable_TrackLowBP = true;
MIRA_Vehicle_Medical_Stable_TrackLowHR = true;
MIRA_Vehicle_Medical_Stable_TrackNeedsBandage = true;
MIRA_Vehicle_Medical_Stable_TrackSplints = true;
MIRA_Vehicle_Medical_Stable_TrackStitchableWounds = true;
MIRA_Vehicle_Medical_Stable_TrackTourniquets = true;
MIRA_Vehicle_Medical_Unstable_AllowUnload = true;
MIRA_Vehicle_Medical_Unstable_DogtagsDeadOnly = true;
MIRA_Vehicle_Medical_Unstable_ShowCount = true;
MIRA_Vehicle_Medical_Unstable_TakeDogtags = true;
MIRA_Vehicle_Medical_Unstable_ThresholdLowBP = 80;
MIRA_Vehicle_Medical_Unstable_ThresholdLowHR = 50;
MIRA_Vehicle_Medical_Unstable_TrackBleeding = true;
MIRA_Vehicle_Medical_Unstable_TrackCardiacArrest = true;
MIRA_Vehicle_Medical_Unstable_TrackDead = true;
MIRA_Vehicle_Medical_Unstable_TrackIV = true;
MIRA_Vehicle_Medical_Unstable_TrackLegFractures = true;
MIRA_Vehicle_Medical_Unstable_TrackLegSplints = true;
MIRA_Vehicle_Medical_Unstable_TrackLowBP = true;
MIRA_Vehicle_Medical_Unstable_TrackLowHR = true;
MIRA_Vehicle_Medical_Unstable_TrackUnconscious = true;
MIRA_Vehicle_Medical_Vehicles_EnableCar = true;
MIRA_Vehicle_Medical_Vehicles_EnableHelicopter = true;
MIRA_Vehicle_Medical_Vehicles_EnablePlane = true;
MIRA_Vehicle_Medical_Vehicles_EnableShip = true;
MIRA_Vehicle_Medical_Vehicles_EnableTank = true;
MIRA_Vehicle_Medical_VERSION = false;
MIRA_Vehicle_Medical_WarnViewingDead = true;

// ACE Vehicles
force ace_novehicleclanlogo_enabled = false;
ace_vehicles_hideEjectAction = false;
force ace_vehicles_keepEngineRunning = false;
ace_vehicles_speedLimiterStep = 5;
force ace_viewports_enabled = true;

// ACE View Distance Limiter
force ace_viewdistance_enabled = false;
force ace_viewdistance_limitViewDistance = 10000;
force ace_viewdistance_objectViewDistanceCoeff = 3;
force ace_viewdistance_viewDistanceAirVehicle = 0;
force ace_viewdistance_viewDistanceLandVehicle = 0;
force ace_viewdistance_viewDistanceOnFoot = 0;

// ACE View Restriction
force acex_viewrestriction_mode = 0;
force acex_viewrestriction_modeSelectiveAir = 0;
force acex_viewrestriction_modeSelectiveFoot = 0;
force acex_viewrestriction_modeSelectiveLand = 0;
force acex_viewrestriction_modeSelectiveSea = 0;
force acex_viewrestriction_preserveView = false;

// ACE Volume
force acex_volume_enabled = false;
force acex_volume_fadeDelay = 1;
force acex_volume_lowerInVehicles = true;
force acex_volume_reduction = 6;
force acex_volume_remindIfLowered = false;
force acex_volume_showNotification = true;

// ACE Weapons
force ace_common_persistentLaserEnabled = true;
force ace_reload_displayText = true;
force ace_reload_showCheckAmmoSelf = false;
ace_reloadlaunchers_displayStatusText = true;
force ace_weaponselect_displayText = true;

// ACE Weather
force ace_weather_enabled = false;
force ace_weather_showCheckAirTemperature = true;
force ace_weather_updateInterval = 300;
force ace_weather_windSimulation = true;

// ACE Wind Deflection
force ace_winddeflection_enabled = true;
force ace_winddeflection_simulationInterval = 0.05;
force ace_winddeflection_vehicleEnabled = true;

// ACE Zeus
force ace_zeus_autoAddObjects = true;
force ace_zeus_canCreateZeus = 0;
force ace_zeus_radioOrdnance = false;
force ace_zeus_remoteWind = false;
force ace_zeus_revealMines = 0;
force ace_zeus_zeusAscension = false;
force ace_zeus_zeusBird = false;

// AIME Ammo Type Menu
UPSL_aime_change_ammo_setting_ammo_class = true;
UPSL_aime_change_ammo_setting_vehicle_ammo_class = true;

// AIME General
UPSL_aime_setting_hide = true;

// AIME GPS and UAV Terminal
UPSL_aime_uav_terminal_setting_gps_action = true;
UPSL_aime_uav_terminal_setting_term_action = true;
UPSL_aime_uav_terminal_setting_uav_action = true;

// AIME Group Management
UPSL_aime_group_setting_drop_leader_action = true;

// AIME Inventory
UPSL_aime_inventory_setting_assemble_action = true;
UPSL_aime_inventory_setting_backpack_action = true;
UPSL_aime_inventory_setting_holder_action = true;
UPSL_aime_inventory_setting_open_action = true;

// AIME Vehicle Controls
UPSL_aime_vehicle_controls_setting_arty_computer_action = true;
UPSL_aime_vehicle_controls_setting_collision_action = true;
UPSL_aime_vehicle_controls_setting_engine_action = true;
UPSL_aime_vehicle_controls_setting_flaps_action = true;
UPSL_aime_vehicle_controls_setting_gear_action = true;
UPSL_aime_vehicle_controls_setting_hover_action = true;
UPSL_aime_vehicle_controls_setting_lights_action = true;
UPSL_aime_vehicle_controls_setting_manual_action = true;
UPSL_aime_vehicle_controls_setting_user_actions = true;

// AIME Vehicle Seats
UPSL_aime_vehicle_seats_setting_change_action = true;
UPSL_aime_vehicle_seats_setting_force_eject = false;
UPSL_aime_vehicle_seats_setting_getin_action = true;
UPSL_aime_vehicle_seats_setting_getout_action = true;
UPSL_aime_vehicle_seats_setting_turnout_action = true;

// ARMA 3 Chat Wheel - Redux
CWR_AutoMessages_Enabled = true;
CWR_AutoMessages_Uncon = true;
CWR_CustomMessages_1 = "Default";
CWR_CustomMessages_2 = "Default";
CWR_CustomMessages_3 = "Default";
CWR_CustomMessages_4 = "Default";
CWR_Debug_ShowMessages = false;
CWR_TagMenu_UseNewLine = true;
CWR_Voice_CoolDown = 3;
CWR_Voice_EnableVoiceLines = true;
CWR_Voice_VoiceRadius = 30;
CWR_Voice_VoiceVolume = 1;

// Blastcore Murr Edition
WarFXPE_BlastWave = 1;
WarFXPE_HeatHaze = true;
WarFXPE_WeatherEffects = true;

// Community Base Addons
cba_diagnostic_ConsoleIndentType = -1;
force cba_diagnostic_watchInfoRefreshRate = 0.2;
force cba_disposable_dropUsedLauncher = 2;
force cba_disposable_replaceDisposableLauncher = true;
cba_events_repetitionMode = 1;
force cba_network_loadoutValidation = 2;
cba_optics_usePipOptics = false;
cba_quicktime_qteShorten = false;
cba_ui_notifyLifetime = 4;
cba_ui_StorePasswords = 1;

// Crows Electronic Warfare
crowsEW_main_zeus_jam_immune = true;
crowsEW_main_zeus_jam_marker_show = true;
force crowsEW_spectrum_defaultClassForJammingSignal = "UGV_01_base_F,UGV_02_Base_F,UAV_01_base_F,UAV_02_base_F,UAV_03_base_F,UAV_04_base_F,UAV_05_Base_F,UAV_06_base_F";
force crowsEW_spectrum_defaultRangesForJammingSignal = "298,299,301,3002,3003,3004,3005,306";
crowsEW_spectrum_minJamSigStrength = -40;
crowsEW_spectrum_selfTracking = false;
crowsEW_spectrum_spectrumAutoline = true;
crowsEW_spectrum_spectrumAutolineColor1 = 2;
crowsEW_spectrum_spectrumAutolineColor2 = 7;
crowsEW_spectrum_spectrumAutolineColor3 = 8;
crowsEW_spectrum_spectrumAutolineColor4 = 5;
crowsEW_spectrum_spectrumAutolineLength = 6000;
crowsEW_spectrum_spectrumAutolineNoise = 0;
force crowsEW_spectrum_spectrumEnable = true;
force crowsEW_spectrum_tfarSideTrack = true;
crowsEW_spectrum_UAVterminalUserVisibleInSpectrum = false;

// Crows Zeus Additions
crowsza_pingbox_CBA_Setting_enabled = true;
crowsza_pingbox_CBA_Setting_fade_duration = 300;
crowsza_pingbox_CBA_Setting_fade_enabled = true;
crowsza_pingbox_CBA_Setting_oldLimit = 600;
crowsza_zeus_text_CBA_Setting_OnKilledModule_helper = true;
crowsza_zeus_text_CBA_Setting_OnKilledModule_helper_color = [1,1,1,1];
crowsza_zeus_text_CBA_Setting_rc_helper = true;
crowsza_zeus_text_CBA_Setting_rc_helper_color = [1,1,1,1];
crowsza_zeus_text_CBA_Setting_surrender_helper = true;
crowsza_zeus_text_CBA_Setting_surrender_helper_color = [1,1,1,1];
crowsza_zeus_text_CBA_Setting_zeusTextLine1 = true;
crowsza_zeus_text_CBA_Setting_zeusTextLine2 = true;
crowsza_zeus_text_CBA_Setting_zeusTextLine3 = false;

// DUI - Squad Radar - Indicators
force diwako_dui_indicators_crew_range_enabled = false;
diwako_dui_indicators_fov_scale = false;
diwako_dui_indicators_icon_buddy = true;
diwako_dui_indicators_icon_leader = true;
diwako_dui_indicators_icon_medic = true;
diwako_dui_indicators_range = 20;
diwako_dui_indicators_range_crew = 300;
diwako_dui_indicators_range_scale = false;
force diwako_dui_indicators_rangeLimit = 100;
diwako_dui_indicators_show = true;
diwako_dui_indicators_size = 1;
diwako_dui_indicators_style = "standard";
diwako_dui_indicators_useACENametagsRange = true;

// DUI - Squad Radar - Line Compass
diwako_dui_linecompass_ACEFingeringColor = [1,0.66,0,1];
force diwako_dui_linecompass_AllowNumericDrawBearing = true;
diwako_dui_linecompass_CompassAvailableShown = true;
diwako_dui_linecompass_compassRange = 35;
force diwako_dui_linecompass_compassRangeLimit = 50;
diwako_dui_linecompass_CustomWaypointColor = [0,0,0.87,1];
diwako_dui_linecompass_DefaultIconColor = [0.5,0.87,0.5,1];
diwako_dui_linecompass_DrawBearing = 2;
diwako_dui_linecompass_Enabled = true;
diwako_dui_linecompass_enableOcclusion = false;
diwako_dui_linecompass_IconOutline = 0;
diwako_dui_linecompass_occlusionFadeSpeed = 3.5;
diwako_dui_linecompass_showSpeaking = true;
diwako_dui_linecompass_SwapOrder = false;
diwako_dui_linecompass_WaypointColor = [0,0,0.87,1];

// DUI - Squad Radar - Main
diwako_dui_ace_hide_interaction = true;
diwako_dui_colors = "standard";
diwako_dui_font = "RobotoCondensed";
diwako_dui_icon_style = "standard";
diwako_dui_main_hide_dialog = true;
diwako_dui_main_hide_ui_by_default = false;
diwako_dui_main_squadBlue = [0,0,1,1];
diwako_dui_main_squadGreen = [0,1,0,1];
diwako_dui_main_squadMain = [1,1,1,1];
diwako_dui_main_squadRed = [1,0,0,1];
diwako_dui_main_squadYellow = [1,1,0,1];
diwako_dui_main_trackingColor = [0.93,0.26,0.93,1];
diwako_dui_reset_ui_pos = false;

// DUI - Squad Radar - Nametags
diwako_dui_nametags_customRankStyle = "[[""PRIVATE"",""CORPORAL"",""SERGEANT"",""LIEUTENANT"",""CAPTAIN"",""MAJOR"",""COLONEL""],[""Pvt."",""Cpl."",""Sgt."",""Lt."",""Capt."",""Maj."",""Col.""]]";
diwako_dui_nametags_deadColor = [0.2,0.2,0.2,1];
diwako_dui_nametags_deadRenderDistance = 3.5;
diwako_dui_nametags_drawRank = true;
diwako_dui_nametags_enabled = true;
diwako_dui_nametags_enableFOVBoost = true;
diwako_dui_nametags_enableOcclusion = true;
diwako_dui_nametags_fadeInTime = 0.05;
diwako_dui_nametags_fadeOutTime = 0.5;
diwako_dui_nametags_fontGroup = "RobotoCondensedLight";
diwako_dui_nametags_fontGroupNameSize = 8;
diwako_dui_nametags_fontName = "RobotoCondensedBold";
diwako_dui_nametags_fontNameSize = 10;
diwako_dui_nametags_groupColor = [1,1,1,1];
diwako_dui_nametags_groupFontShadow = 1;
diwako_dui_nametags_groupNameOtherGroupColor = [0.6,0.85,0.6,1];
diwako_dui_nametags_nameFontShadow = 1;
diwako_dui_nametags_nameOtherGroupColor = [0.2,1,0,1];
diwako_dui_nametags_rankNameStyle = "default";
diwako_dui_nametags_renderDistance = 40;
diwako_dui_nametags_showUnconAsDead = true;
diwako_dui_nametags_useLIS = true;
diwako_dui_nametags_useSideIsFriendly = true;

// DUI - Squad Radar - Radar
diwako_dui_compass_hide_alone_group = false;
diwako_dui_compass_hide_blip_alone_group = false;
diwako_dui_compass_icon_scale = 1;
diwako_dui_compass_opacity = 1;
diwako_dui_compass_style = ["\z\diwako_dui\addons\radar\UI\compass_styles\standard\compass_limited.paa","\z\diwako_dui\addons\radar\UI\compass_styles\standard\compass.paa"];
diwako_dui_compassRange = 35;
diwako_dui_compassRefreshrate = 0;
diwako_dui_dir_showMildot = false;
diwako_dui_dir_size = 1.25;
diwako_dui_distanceWarning = 3;
diwako_dui_enable_compass = true;
diwako_dui_enable_compass_dir = 1;
diwako_dui_enable_occlusion = false;
diwako_dui_enable_occlusion_cone = 360;
diwako_dui_hudScaling = 1;
diwako_dui_namelist = true;
diwako_dui_namelist_bg = 0;
diwako_dui_namelist_only_buddy_icon = false;
diwako_dui_namelist_size = 1;
diwako_dui_namelist_text_shadow = 2;
diwako_dui_namelist_width = 215;
diwako_dui_radar_ace_finger = true;
force diwako_dui_radar_ace_medic = true;
diwako_dui_radar_always_show_unit_numbers = false;
diwako_dui_radar_compassRangeCrew = 500;
force diwako_dui_radar_compassRangeLimit = 50;
diwako_dui_radar_dir_padding = 25;
diwako_dui_radar_dir_shadow = 2;
diwako_dui_radar_enable_seat_icons = 2;
diwako_dui_radar_group_by_vehicle = false;
diwako_dui_radar_icon_opacity = 1;
diwako_dui_radar_icon_opacity_no_player = true;
force diwako_dui_radar_icon_priority_setting = 1;
diwako_dui_radar_icon_scale_crew = 6;
diwako_dui_radar_leadingZeroes = false;
diwako_dui_radar_namelist_hideWhenLeader = false;
diwako_dui_radar_namelist_vertical_spacing = 1;
diwako_dui_radar_occlusion_fade_in_time = 1;
diwako_dui_radar_occlusion_fade_time = 10;
diwako_dui_radar_pointer_color = [1,0.5,0,1];
diwako_dui_radar_pointer_style = "standard";
diwako_dui_radar_show_cardinal_points = true;
diwako_dui_radar_showSpeaking = true;
diwako_dui_radar_showSpeaking_radioOnly = false;
diwako_dui_radar_showSpeaking_replaceIcon = true;
force diwako_dui_radar_sortType = "none";
force diwako_dui_radar_sqlFirst = false;
force diwako_dui_radar_syncGroup = false;
force diwako_dui_radar_vehicleCompassEnabled = false;
diwako_dui_use_layout_editor = false;

// GRAD Trenches
force grad_trenches_functions_allowBigEnvelope = true;
force grad_trenches_functions_allowCamouflage = true;
force grad_trenches_functions_allowDigging = true;
force grad_trenches_functions_allowEffects = true;
force grad_trenches_functions_allowGiantEnvelope = true;
force grad_trenches_functions_allowHitDecay = true;
force grad_trenches_functions_allowLongEnvelope = true;
force grad_trenches_functions_allowShortEnvelope = true;
force grad_trenches_functions_allowSmallEnvelope = true;
force grad_trenches_functions_allowTextureLock = true;
force grad_trenches_functions_allowTrenchDecay = false;
force grad_trenches_functions_allowVehicleEnvelope = true;
force grad_trenches_functions_bigEnvelopeDamageMultiplier = 2;
force grad_trenches_functions_bigEnvelopeDigTime = 40;
force grad_trenches_functions_bigEnvelopeRemovalTime = -1;
force grad_trenches_functions_buildFatigueFactor = 1;
force grad_trenches_functions_camouflageRequireEntrenchmentTool = true;
force grad_trenches_functions_createTrenchMarker = false;
force grad_trenches_functions_decayTime = 1800;
force grad_trenches_functions_giantEnvelopeDamageMultiplier = 1;
force grad_trenches_functions_giantEnvelopeDigTime = 90;
force grad_trenches_functions_giantEnvelopeRemovalTime = -1;
force grad_trenches_functions_hitDecayMultiplier = 1;
force grad_trenches_functions_LongEnvelopeDigTime = 100;
force grad_trenches_functions_LongEnvelopeRemovalTime = -1;
force grad_trenches_functions_playersInAreaRadius = 0;
force grad_trenches_functions_shortEnvelopeDamageMultiplier = 2;
force grad_trenches_functions_shortEnvelopeDigTime = 15;
force grad_trenches_functions_shortEnvelopeRemovalTime = -1;
force grad_trenches_functions_smallEnvelopeDamageMultiplier = 3;
force grad_trenches_functions_smallEnvelopeDigTime = 30;
force grad_trenches_functions_smallEnvelopeRemovalTime = -1;
force grad_trenches_functions_stopBuildingAtFatigueMax = false;
force grad_trenches_functions_textureLockDistance = 5;
force grad_trenches_functions_timeoutToDecay = 7200;
force grad_trenches_functions_vehicleEnvelopeDamageMultiplier = 1;
force grad_trenches_functions_vehicleEnvelopeDigTime = 120;
force grad_trenches_functions_vehicleEnvelopeRemovalTime = -1;
force grad_trenches_functions_vehicleTrenchBuildSpeed = 5;

// Helmet on Ass
hoa_sling_allowedModesSetting = "[1, 2, 3]";
hoa_sling_canHideHelmet = true;
force hoa_sling_enabled = true;
hoa_sling_slungHelmetPosition = ["pelvis",[-0.15,0.35,-0.2],[[0.469846,-0.813798,0.34202],[-0.17101,0.296198,0.939693]]];

// Improved Melee System (Client Settings)
IMS_CustomCamer_Y = 3;
IMS_CustomCameraUsedByUserAllowed = true;
IMS_EnablePlayerSounds = false;
IMS_HudCoordinate_X = 0.01;
IMS_HudCoordinate_Y = 0.9;
IMS_ShowHealthHud = true;

// Improved Melee System (Server Settings)
force IMS_AddKnifeToUnit = false;
force IMS_BayonetDistance = "10";
force IMS_BayonetOnAI = false;
force IMS_BluntWeapon = false;
force IMS_CustomAIHEALTH = "2";
force IMS_DamageMultiplierParam = "1";
force IMS_DamageMultiplierParamPlayer = "1";
force IMS_ExecutionChanceParametr = "40";
force IMS_isFistsAllowd = true;
force IMS_isHumansCanHitSM = false;
force IMS_isImsCanHitAllies = true;
force IMS_isKickButtInstaKill = false;
force IMS_isStaticDeaths = false;
force IMS_RifleDodgeSet = true;
force IMS_StealthAI_Ears = 15;
force IMS_StealthAI_Eyes = 40;
force IMS_WBK_CUSTOMCAMSERVER = false;
force IMS_WBK_MAINFPTP = true;

// JLTS - Debug
force JLTS_settings_Debug_chat = true;
force JLTS_settings_Debug_mainSwitch = 0;
force JLTS_settings_Debug_rpt = true;

// JLTS - Special equipment
force JLTS_settings_jumppack_customConsumption = false;
force JLTS_settings_jumppack_customConsumptionCoef = 1;
force JLTS_settings_jumppack_mainSwitch = 0;
JLTS_settings_jumppack_profileDescentCoef = 0.3;
JLTS_settings_jumppack_profileDescentRatio = "1,1";
JLTS_settings_jumppack_profileHighCoef = 1;
JLTS_settings_jumppack_profileHighRatio = "1,2";
JLTS_settings_jumppack_profileLongCoef = 1;
JLTS_settings_jumppack_profileLongRatio = "2,1";
JLTS_settings_jumppack_profileStandardCoef = 1;
JLTS_settings_jumppack_profileStandardRatio = "1,1";
force JLTS_settings_jumppack_stances = 1;

// JLTS - Weapons
force JLTS_settings_Common_dropShield = true;
force JLTS_settings_EMP_EMPEffectScope = 0;
force JLTS_settings_EMP_mainSwitch = 1;
force JLTS_settings_EMP_notifyPlayer = true;
force JLTS_settings_EMP_repairTimeHandgun = 20;
force JLTS_settings_EMP_repairTimePrimary = 30;
force JLTS_settings_EMP_repairTimeSecondary = 40;
force JLTS_settings_Stun_mainSwitch = 1;
force JLTS_settings_Stun_worksInVehicles = false;

// LAMBS Danger
force lambs_danger_cqbRange = 60;
force lambs_danger_disableAIAutonomousManoeuvres = false;
force lambs_danger_disableAIDeployStaticWeapons = false;
force lambs_danger_disableAIFindStaticWeapons = false;
force lambs_danger_disableAIHideFromTanksAndAircraft = true;
force lambs_danger_disableAIPlayerGroup = false;
force lambs_danger_disableAIPlayerGroupReaction = false;
force lambs_danger_disableAutonomousFlares = false;
force lambs_danger_disableAutonomousSmokeGrenades = false;
force lambs_danger_panicChance = 0;

// LAMBS Danger Eventhandlers
force lambs_eventhandlers_ExplosionEventHandlerEnabled = true;
force lambs_eventhandlers_ExplosionReactionTime = 9;

// LAMBS Danger WP
force lambs_wp_autoAddArtillery = true;

// LAMBS Main
force lambs_main_combatShareRange = 200;
force lambs_main_debug_drawAllUnitsInVehicles = false;
force lambs_main_debug_Drawing = false;
force lambs_main_debug_FSM = false;
force lambs_main_debug_FSM_civ = false;
force lambs_main_debug_functions = false;
force lambs_main_debug_RenderExpectedDestination = false;
force lambs_main_disableAICallouts = false;
force lambs_main_disableAIDodge = false;
force lambs_main_disableAIFleeing = true;
force lambs_main_disableAIGestures = false;
force lambs_main_disableAutonomousMunitionSwitching = false;
force lambs_main_disablePlayerGroupSuppression = false;
force lambs_main_indoorMove = 0.20405;
force lambs_main_maxRevealValue = 1;
force lambs_main_minFriendlySuppressionDistance = 5;
force lambs_main_minObstacleProximity = 5;
force lambs_main_minSuppressionRange = 50;
force lambs_main_radioBackpack = 2000;
force lambs_main_radioDisabled = false;
force lambs_main_radioEast = 500;
force lambs_main_radioGuer = 500;
force lambs_main_radioShout = 100;
force lambs_main_radioWest = 500;

// Legion Studios: Core
ls_activecamo_allowFiring = true;
ls_activecamo_camouflageCoefficient = 0;
ls_activecamo_camouflageCoefficientVehicle = 0;
ls_activecamo_cooldown = 5;
ls_activecamo_enabled = true;
ls_activecamo_maxAllowedHits = 5;
ls_compat_ace_customBloodDropsEnabled = true;
ls_equipment_enableRangefinderOverlay = true;
ls_holoprojector_maxDistance = 50;
ls_impulsor_enableOverchargeCooldown = true;
ls_impulsor_hintDisplay = 1;
force ls_impulsor_overchargeDamageChance = 0;
ls_lighting_ai_enableFlashlights = true;
ls_vehicles_vivLoadingRange = 5;
ls_weapons_adsSound_enabled = true;

// Lightsaber's And Force
force IMS_ForceKillFriendlies = false;
force IMS_LightSabers_GlobalDamageKnight = "25";
force IMS_LightSabers_GlobalDamageMaster = "50";
force IMS_LightSabers_GlobalDamagePadawan = "25";
force IMS_LightSabers_Mana_Knight = "0.001";
force IMS_LightSabers_Mana_Master = "0.001";
force IMS_LightSabers_Mana_Padawan = "0.001";

// LRG AI
force LRG_AI_AimingAccuracy = 0.1;
force LRG_AI_AimingShake = 0.45;
force LRG_AI_AimingSpeed = 0.3;
force LRG_AI_CivCourage = 1;
force LRG_AI_CivFleeing = false;
force LRG_AI_Commanding = 1;
force LRG_AI_Courage = 1;
force LRG_AI_DynSim = false;
force LRG_AI_General = 1;
force LRG_AI_InitialAI = false;
force LRG_AI_ReloadSpeed = 0.5;
force LRG_AI_Reporting = false;
force LRG_AI_SpotDistance = 0.4;
force LRG_AI_SpotTime = 0.2;

// LRG AIS Revive
force LRG_AIS_ACTION_DISTANCE = 6;
force LRG_AIS_AI_HELP_RADIUS = 100;
force LRG_AIS_BLEEDOUT_MULTIPLIER = 1;
force LRG_AIS_BLEEDOUT_TIME = 400;
force LRG_AIS_CONSUME_FAKS = true;
force LRG_AIS_DAMAGE_TOLLERANCE_FACTOR = 1;
force LRG_AIS_DISABLE_RESPAWN_BUTTON = 30;
force LRG_AIS_IMPACT_EFFECTS = false;
force LRG_AIS_MASTER_ENABLE = false;
force LRG_AIS_MEDICAL_EDUCATION = 2;
force LRG_AIS_NO_CHAT = false;
force LRG_AIS_REQUIRE_MEDIKIT = true;
force LRG_AIS_RESTORE_LOADOUT = true;
force LRG_AIS_REVIVE_GUARANTY = false;
force LRG_AIS_REVIVE_HEAL = true;
force LRG_AIS_REVIVE_INIT_UNITS = 0;
force LRG_AIS_REVIVETIME = 20;
force LRG_AIS_SHOW_COUNTDOWN = false;
force LRG_AIS_SHOW_DIARYINFO = false;
force LRG_AIS_SHOW_UNC_3D_MARKERS = false;
force LRG_AIS_SHOW_UNC_MARKERS = false;
force LRG_AIS_SHOW_UNC_MESSAGE_TO = 0;
force LRG_AIS_STABILIZETIME = 15;
force LRG_AIS_TOGGLE_RADIO = false;

// LRG Channels
force LRG_Channels_CommandDuration = 0;
force LRG_Channels_CommandText = false;
force LRG_Channels_CommandVoice = false;
force LRG_Channels_DirectDuration = 0;
force LRG_Channels_DirectText = true;
force LRG_Channels_DirectVoice = false;
force LRG_Channels_GlobalDuration = 0;
force LRG_Channels_GlobalText = false;
force LRG_Channels_GlobalVoice = false;
force LRG_Channels_GroupDuration = 0;
force LRG_Channels_GroupText = true;
force LRG_Channels_GroupVoice = false;
force LRG_Channels_SideDuration = 60;
force LRG_Channels_SideText = true;
force LRG_Channels_SideVoice = false;
force LRG_Channels_VehicleDuration = 0;
force LRG_Channels_VehicleText = false;
force LRG_Channels_VehicleVoice = false;

// LRG Civilians
force LRG_Civilians_enableFollowGestures = true;
force LRG_Civilians_enableGestures = true;
force LRG_Civilians_enableGetDownGestures = true;
force LRG_Civilians_enableGoAwayGestures = true;
force LRG_Civilians_enableGreetingGestures = true;
force LRG_Civilians_enableStopGestures = true;
force LRG_Civilians_successChance_armed = 0.5;
force LRG_Civilians_successChance_unarmed = 0.8;

// LRG Creator Actions
force LRG_CreatorActions_Channels = true;
force LRG_CreatorActions_EndMission = true;
force LRG_CreatorActions_Master = true;

// LRG Logistics
force LRG_Logistics_axeMaxTime = 40;
force LRG_Logistics_axeTimeFactor = 1;

// LRG Main
force LRG_Main_ArsenalSaveLoad = true;
force LRG_Main_CHViewDistance = true;
force LRG_Main_CueCards = true;
force LRG_Main_Diary = false;
force LRG_Main_DynamicGroups = false;
force LRG_Main_DynamicSim = false;
force LRG_Main_Earplugs = false;
force LRG_Main_FatigueVanilla = false;
force LRG_Main_FlipVehicle = true;
force LRG_Main_FPSCounter = true;
force LRG_Main_LockCamVehicle = false;
force LRG_Main_Logging = false;
force LRG_Main_MapIcons = true;
force LRG_Main_MaydayAccess = 2;
force LRG_Main_PilotCheck = true;
force LRG_Main_QSMagRepack = false;
force LRG_Main_TFARTerrainInterference = 1;
force LRG_Main_TFARTransmitRange = 2.5;
force LRG_Main_VehicleCrewList = true;
force LRG_Main_ViewDistanceMaxDistance = 10000;
force LRG_Main_ViewDistanceMaxObjectDistance = 10000;
force LRG_Main_ViewDistanceNoGrass = false;
force LRG_Main_VoyagerCompass = false;

// LRG QS Icons
force LRG_QS_ST_AINames = false;
force LRG_QS_ST_colorInjured = [0.75,0.55,0,0.75];
force LRG_QS_ST_enableGroupIcons = true;
force LRG_QS_ST_gps_enableUnitIcons = true;
force LRG_QS_ST_GPSDist = 300;
force LRG_QS_ST_GPSshowGroupOnly = false;
force LRG_QS_ST_GPSshowNames = false;
force LRG_QS_ST_groupTextFactionOnly = true;
force LRG_QS_ST_iconColor_CIVILIAN = [0.4,0,0.5,0.65];
force LRG_QS_ST_iconColor_EAST = [0.5,0,0,0.65];
force LRG_QS_ST_iconColor_RESISTANCE = [0,0.5,0,0.65];
force LRG_QS_ST_iconColor_UNKNOWN = [0.7,0.6,0,0.5];
force LRG_QS_ST_iconColor_WEST = [0,0.3,0.6,0.65];
force LRG_QS_ST_iconMapText = false;
force LRG_QS_ST_iconTextFonts = 5;
force LRG_QS_ST_iconUpdatePulseDelay = 30;
force LRG_QS_ST_map_enableUnitIcons = true;
force LRG_QS_ST_MasterEnable = false;
force LRG_QS_ST_MedicalIconColor = [1,0.41,0,1];
force LRG_QS_ST_MedicalSystem = 3;
force LRG_QS_ST_showAI = false;
force LRG_QS_ST_showAIGroups = false;
force LRG_QS_ST_showAINames = false;
force LRG_QS_ST_showCivilianIcons = false;
force LRG_QS_ST_showFactionOnly = true;
force LRG_QS_ST_showGroupHudIcons = false;
force LRG_QS_ST_showGroupMapIcons = true;
force LRG_QS_ST_showGroupOnly = true;
force LRG_QS_ST_showMedicalWounded = false;
force LRG_QS_ST_showMOS = false;
force LRG_QS_ST_showMOS_range = 3500;
force LRG_QS_ST_showOwnGroup = false;

// LRG Weather
force LRG_Weather_DayTimeAcc = 1;
force LRG_Weather_Master = false;
force LRG_Weather_MaxTime = 60;
force LRG_Weather_MinTime = 1;
force LRG_Weather_NightTimeAcc = 1;
force LRG_Weather_RealTime = true;
force LRG_Weather_StartWeather = 1;
force LRG_Weather_SyncTime = 60;

// LRG Zeus
force LRG_Zeus_Module_AISpawnsEast = true;
force LRG_Zeus_Module_AISpawnsIndep = true;
force LRG_Zeus_Module_AISpawnsWest = true;
force LRG_Zeus_Module_CivilianSpawns = true;
force LRG_Zeus_Module_MedicalDummy = true;
force LRG_Zeus_Module_SafeZone = true;

// MokTech Industries - Admin Messages
force mti_admin_messages_enable = true;

// MokTech Industries - Aircraft
force mti_aircraft_cmColoursEnabled = true;
force mti_aircraft_laatc_loadDistance = 25;
force mti_aircraft_laatc_loadSpeed = 15;
force mti_aircraft_requirePilot = true;
force mti_aircraft_serviceTime_long = 60;
force mti_aircraft_serviceTime_short = 20;

// MokTech Industries - Backpack on Chest
force mti_boc_disabled = false;

// MokTech Industries - catTab (UI)
mti_catTab_ui_androidDesktopBackgroundMode = 0;
mti_catTab_ui_androidDesktopBackgroundPreset = "\z\mti\addons\catTab_data\img\ui\desktop\classic\android_desktop_background_0_co.paa";
mti_catTab_ui_androidDesktopColor = [0.239,0.863,0.517];
mti_catTab_ui_androidDesktopCustomImageName = "android_desktop_background_co.jpg";
force mti_catTab_ui_enableCustomBackground = true;
mti_catTab_ui_tabletDesktopBackgroundMode = 0;
mti_catTab_ui_tabletDesktopBackgroundPreset = "\z\mti\addons\catTab_data\img\ui\desktop\classic\tablet_desktop_background_0_co.paa";
mti_catTab_ui_tabletDesktopColor = [0,0.443,0.348];
mti_catTab_ui_tabletDesktopCustomImageName = "tablet_desktop_background_co.jpg";

// MokTech Industries - CIS
force mti_factions_cis_b2_health = 120;
mti_factions_cis_bx_health = 30;
force mti_factions_cis_deka_defaultShieldHealth = 750;
force mti_factions_cis_deka_shieldCooldown = 80;
force mti_factions_cis_deka_shieldTimeout = 60;
force mti_factions_cis_dispenser_coolDown = 60;

// MokTech Industries - Common
force mti_common_enableLogging = true;
force mti_common_loadoutWeightCheck = true;
force mti_common_respawnUpdateEnabled = true;
force mti_common_stanceChangeEnabled = true;
force mti_common_teleporterDuration = 2;
force mti_common_wsway_adjust = 0.9;
force mti_common_wsway_enabled = true;

// MokTech Industries - CuffBreak
force mti_cuffbreak_ai_enabled = true;
force mti_cuffbreak_defaultAIEscapeStrength = 12;
force mti_cuffbreak_enabled = true;

// MokTech Industries - Doors
force mti_doors_axe_time_coefficient = 1.25;
force mti_doors_buttkick_default_strength = 4;
force mti_doors_default_lockstrength = 20;
force mti_doors_kick_default_strength = 20;
force mti_doors_lockpick_fast_breakChance = 0.75;
force mti_doors_lockpick_fast_coefficient = 0.5;
force mti_doors_lockpick_fast_failChance = 0.25;
force mti_doors_lockpick_slow_breakChance = 0.25;
force mti_doors_lockpick_slow_failChance = 0.05;

// MokTech Industries - Equipment
force mti_equipment_flagsEnabled = true;
force mti_equipment_knifeEnabled = true;
mti_equipment_nvg_customBrightness = 0;
mti_equipment_nvg_customColour = [0.750812,0.750812,0.745176];
mti_equipment_nvg_customContrast = 4.23882;
mti_equipment_nvg_customEnabled = true;
mti_equipment_nvg_customWhiteP = false;

// MokTech Industries - Explosives
force mti_explosives_advSetup_requireDemo = true;
force mti_explosives_DP3_destroyAttached = true;
force mti_explosives_magneticModeEnabled = true;

// MokTech Industries - Field Defibrillator
force mti_medical_defib_arrest_chance = 0.1;
force mti_medical_defib_success_chance = 0.8;

// MokTech Industries - Fortify
force mti_fortify_allowSaving = true;
force mti_fortify_fortifyAllowed = true;
force mti_fortify_markObjectsOnMap = 1;
force mti_fortify_recallTimeCoef = 0.25;
force mti_fortify_timeCostCoefficient = 0.25;
force mti_fortify_timeMax = 30;
force mti_fortify_timeMin = 1.5;

// MokTech Industries - Hunger Games
force mti_hungergames_enabled = false;

// MokTech Industries - Intercom
force mti_intercom_maxRange = 100;
force mti_intercom_systemEnabled = true;

// MokTech Industries - Katarn_OS
force mti_katarnOS_intercom_enabled = true;
force mti_katarnOS_lowLight_enabled = true;
force mti_katarnOS_repulsorAngle = 90;
force mti_katarnOS_repulsorRange = 10;
force mti_katarnOS_shield_duration = 210;
force mti_katarnOS_shield_maxCharges = 3;

// MokTech Industries - Logistics
force mti_logistics_spawnCooldown = 45;
force mti_logistics_spawnDuration = 25;

// MokTech Industries - Logistics (Cratefiller)
force mti_logistics_cratefiller_param_cratefillerOverview = true;
force mti_logistics_cratefiller_param_inventoryBlacklist = "[]";
force mti_logistics_cratefiller_param_spawnAndDelete = true;
force mti_logistics_cratefiller_param_usageRadius = 25;

// MokTech Industries - Medical
force mti_medical_bactaPatch_timeMod = 1.25;
force mti_medical_bactaSpray_timeMod = 0.5;
force mti_medical_bodybagDisposalEnabled = true;
force mti_medical_enableDiary = true;
force mti_medical_halothaneThreshold = 6;
force mti_medical_locationInhaler = 0;
force mti_medical_locationMedisensor = 0;
force mti_medical_lungDamageEnabled = false;
mti_medical_medicalHint_message = "%1 is treating you.";
force mti_medical_medicRequired_Bandages = 1;
force mti_medical_medicRequired_batroxobine = 1;
force mti_medical_medicRequired_deraformine = 1;
force mti_medical_medicRequired_glitteryl = 1;
force mti_medical_medicRequired_Inhaler = 0;
force mti_medical_medicRequired_latheniol = 2;
force mti_medical_medicRequired_Medisensor = 1;
force mti_medical_medicRequired_nevastrin8 = 2;
force mti_medical_medicRequired_pba = 1;
force mti_medical_medicRequired_reorient = 1;
force mti_medical_medicRequired_symoxin = 0;
force mti_medical_medicRequired_vutalamine = 1;
force mti_medical_nevastrin8_maxCount = 5;
force mti_medical_pba_cpr_boost = 5;
force mti_medical_pba_od_enabled = true;
force mti_medical_pba_od_time = 90;
force mti_medical_pba_pain_boost = 10;
force mti_medical_pba_speed_boost = 1.2;
force mti_medical_pba_sway_boost = 1.15;
force mti_medical_showBloodLevel = true;
force mti_medical_systemEnabled = true;
force mti_medical_timeInhaler = 5;
force mti_medical_timeMedisensor = 10;
force mti_medical_vutalamine_speed_reduction = 0.8;
force mti_medical_vutalamine_sway_reduction = 0.75;

// MokTech Industries - Pangolin
force mti_pangolin_baseShieldRegen = 2;
force mti_pangolin_baseShieldStrength = 100;
force mti_pangolin_cqcShieldRegenBoost = 1.5;
force mti_pangolin_cqcShieldTimeoutMod = 0.5;
mti_pangolin_disableBreachVoice = false;
force mti_pangolin_enabled = true;
force mti_pangolin_medicShieldBoost = 1.25;
force mti_pangolin_regenTimeoutBreach = 15;
force mti_pangolin_regenTimeoutHit = 7;

// MokTech Industries - Tech
mti_tech_disable_animations = false;
force mti_tech_droidhack_firewalls = 3;
force mti_tech_droidwave_firewalls = 2;
force mti_tech_firewall_prompts = 3;
force mti_tech_hackdance_firewalls = 20;
force mti_tech_hackfear_firewalls = 2;
force mti_tech_hackintel_firewalls = 1;
force mti_tech_hackmines_firewalls = 1;
force mti_tech_hackpacify_firewalls = 2;
force mti_tech_hackremote_firewalls = 3;

// MokTech Industries - Weapons
force mti_weapons_core_acid_duration = 300;
force mti_weapons_core_airburstEnabledSettings = true;
force mti_weapons_core_ion_charge_max = 5;
force mti_weapons_core_ion_duration = 10;
force mti_weapons_core_stun_charge_max = 5;
force mti_weapons_core_stun_duration = 10;
force mti_weapons_core_tracking_duration = 900;
force mti_weapons_core_tracking_enabled = true;
force mti_weapons_core_tracking_scanDelay = 5;

// MokTech Industries - Zeus
force mti_zeus_ZEN_useTraits = true;

// OPTRE Powered MJOLNIR
OPTRE_HUD_ENEMY_COLOR = [1,0.2,0.2,1];
OPTRE_HUD_FRIENDLY_COLOR = [0.7,1,1,1];
OPTRE_HUD_GROUP_COLOR = [1,1,1,1];
OPTRE_HUD_HUMAN_ICON = "\OPTRE_Suit_Scripts\textures\OPTRE_MJOLNIR_hudTargetInfantry.paa";
OPTRE_HUD_HUMAN_SIZE = 0.3;
OPTRE_HUD_NEUTRAL_COLOR = [1,1,0,1];
OPTRE_HUD_STATIC_ICON = "\OPTRE_Suit_Scripts\textures\OPTRE_MJOLNIR_hudTargetEmplacement.paa";
OPTRE_HUD_STATIC_SIZE = 0.4;
OPTRE_HUD_VEHICLE_ICON = "\OPTRE_Suit_Scripts\textures\OPTRE_MJOLNIR_hudTargetVehicle.paa";
OPTRE_HUD_VEHICLE_SIZE = 0.6;
force OPTRE_JUMP_SUITS_SETTING = "";
force OPTRE_MJOLNIR_ACTIVATE_AI = true;
force OPTRE_MJOLNIR_ALLOW_LOWLIGHT_SETTING = true;
force OPTRE_MJOLNIR_ALLOW_TARGETING_SETTING = true;
OPTRE_MJOLNIR_BOOTUP_COLOR = [0.694,0.933,0.345,1];
force OPTRE_MJOLNIR_CAMSHAKE = false;
OPTRE_MJOLNIR_CHARGE_EFFECT_COLOR = [0.8,1,1,0.2];
OPTRE_MJOLNIR_CHARGE_TEXTURE_COLOR = [0.8,1,1,1];
OPTRE_MJOLNIR_DEPLETED_ALERT_COLOR = [1,0.2,0.2,0.8];
OPTRE_MJOLNIR_DEPLETED_EFFECT_COLOR = [1,0.2,0.2,1];
force OPTRE_MJOLNIR_ENABLE_JUMP = false;
force OPTRE_MJOLNIR_ENABLE_SPARKS_HIT = true;
force OPTRE_MJOLNIR_ENABLE_SPARKS_SHIELD = true;
force OPTRE_MJOLNIR_ENERGY_BAR_ACTIVE = false;
OPTRE_MJOLNIR_ENERGY_BAR_COLOR = [0.5,0.9,0.9,0.8];
OPTRE_MJOLNIR_ENERGY_BAR_TEXT_COLOR = [0.7,1,1,0.8];
OPTRE_MJOLNIR_HITEFFECT_COLOR = [1,1,0.2,1];
OPTRE_MJOLNIR_HITEFFECT_DEPLETED_COLOR = [1,0.2,0.2,1];
force OPTRE_MJOLNIR_HUD_ACTIVE_INTRO = false;
force OPTRE_MJOLNIR_INCREASED_SPEED = false;
OPTRE_MJOLNIR_INFODISPLAY_COLOR = [0.7,1,1,0.8];
OPTRE_MJOLNIR_INFOTEXT_COLOR = [0.7,1,1,0.8];
force OPTRE_MJOLNIR_JUMP_FORWARD = 3;
force OPTRE_MJOLNIR_JUMP_UP_HIGH = 3;
force OPTRE_MJOLNIR_JUMP_UP_LOW = 5;
OPTRE_MJOLNIR_OVERLAY_COLOR = [0.7,1,1,0.4];
force OPTRE_MJOLNIR_OVERWRITE_CONFIG_SHIELD = false;
force OPTRE_MJOLNIR_PREVENT_FALLDAMAGE = false;
OPTRE_MJOLNIR_RADAR_COLOR = [0.7,1,1,0.8];
force OPTRE_MJOLNIR_RECOIL_MODIFIER = 0.3;
force OPTRE_MJOLNIR_SHIELD_DELAY = 0.1;
force OPTRE_MJOLNIR_SHIELD_ENERGY = 50;
force OPTRE_MJOLNIR_SHIELD_ENERGY_AI = 100;
force OPTRE_MJOLNIR_SHIELD_MODIFIER_1 = 1;
force OPTRE_MJOLNIR_SHIELD_MODIFIER_2 = 1.5;
force OPTRE_MJOLNIR_SHIELD_MODIFIER_3 = 2;
force OPTRE_MJOLNIR_SHIELD_MODIFIER_4 = 2.5;
force OPTRE_MJOLNIR_SHIELD_MODIFIER_5 = 3;
force OPTRE_MJOLNIR_SHIELD_MODIFIER_SUITS_1 = "";
force OPTRE_MJOLNIR_SHIELD_MODIFIER_SUITS_2 = "";
force OPTRE_MJOLNIR_SHIELD_MODIFIER_SUITS_3 = "";
force OPTRE_MJOLNIR_SHIELD_MODIFIER_SUITS_4 = "";
force OPTRE_MJOLNIR_SHIELD_MODIFIER_SUITS_5 = "";
force OPTRE_MJOLNIR_SHIELD_REGEN = 0.8;
force OPTRE_MJOLNIR_SHIELD_REGEN_AI = 1;
force OPTRE_MJOLNIR_SHOW_ACTIVATE = false;
force OPTRE_MJOLNIR_SHOW_DEACTIVATE = false;
OPTRE_MJOLNIR_SHOW_OUTLINE = true;
OPTRE_MJOLNIR_SHOW_OVERLAY = true;
force OPTRE_MJOLNIR_SPEED_MODIFIER = 1;
force OPTRE_MJOLNIR_SUPPRESS_RECOIL = false;
force OPTRE_MJOLNIR_TARGETING_INTERVAL_RANGE_SETTING = 100;
force OPTRE_MJOLNIR_TARGETING_MAX_RANGE_SETTING = 1000;
force OPTRE_MJOLNIR_TARGETING_MIN_RANGE_SETTING = 100;
OPTRE_MJOLNIR_WEAPON_ICON_COLOR = [0.7,1,1,0.8];
force OPTRE_POWERED_HELMETS = "OPTRE_MJOLNIR_Mk4Helmet,OPTRE_MJOLNIR_Mk4Helmet_Blue,OPTRE_MJOLNIR_Mk4Helmet_Red,OPTRE_FC_MJOLNIR_MKV_Helmet,OPTRE_FC_MJOLNIR_MKV_Helmet_Black,OPTRE_FC_MJOLNIR_MKV_Helmet_117,OPTRE_FC_MJOLNIR_MKV_Helmet_Caboose,OPTRE_FC_MJOLNIR_MKV_Helmet_Freeman,OPTRE_FC_MJOLNIR_MKV_Helmet_Church,OPTRE_FC_MJOLNIR_MKV_Helmet_Donut,OPTRE_FC_MJOLNIR_MKV_Helmet_Simmons,OPTRE_FC_MJOLNIR_MKV_Helmet_Night,OPTRE_FC_MJOLNIR_MKV_Helmet_Olive,OPTRE_FC_MJOLNIR_MKV_Helmet_Grif,OPTRE_FC_MJOLNIR_MKV_Helmet_Sarge,OPTRE_FC_MJOLNIR_MKV_Helmet_Tucker,OPTRE_MJOLNIR_MkVBHelmet,OPTRE_MJOLNIR_MkVBHelmet_UA,OPTRE_MJOLNIR_MkVBHelmet_UA_HUL,OPTRE_MJOLNIR_MkVBHelmet_Red,OPTRE_MJOLNIR_MkVBHelmet_Blue,OPTRE_MJOLNIR_MkVBHelmet_Black,OPTRE_MJOLNIR_Commando,OPTRE_MJOLNIR_Commando_HUL3,OPTRE_MJOLNIR_Commando_DefaultV_HUL3,OPTRE_MJOLNIR_Commando_SilverV_HUL3,OPTRE_MJOLNIR_Commando_BlueV_HUL3,OPTRE_MJOLNIR_Commando_BlackV_HUL3,OPTRE_MJOLNIR_Commando_Black_HUL3,OPTRE_MJOLNIR_Commando_Black_DefaultV_HUL3,OPTRE_MJOLNIR_Commando_Black_SilverV_HUL3,OPTRE_MJOLNIR_Commando_Black_BlueV_HUL3,OPTRE_MJOLNIR_Commando_Black_BlackV_HUL3,OPTRE_MJOLNIR_Commando_Blue_HUL3,OPTRE_MJOLNIR_Commando_Blue_DefaultV_HUL3,OPTRE_MJOLNIR_Commando_Blue_SilverV_HUL3,OPTRE_MJOLNIR_Commando_Blue_BlueV_HUL3,OPTRE_MJOLNIR_Commando_Blue_BlackV_HUL3,OPTRE_MJOLNIR_Commando_Red_HUL3,OPTRE_MJOLNIR_Commando_Red_DefaultV_HUL3,OPTRE_MJOLNIR_Commando_Red_SilverV_HUL3,OPTRE_MJOLNIR_Commando_Red_BlueV_HUL3,OPTRE_MJOLNIR_Commando_Red_BlackV_HUL3,OPTRE_MJOLNIR_MkVBHelmet_BLKV,OPTRE_MJOLNIR_MkVBHelmet_BLUV,OPTRE_MJOLNIR_MkVBHelmet_SLVV,OPTRE_MJOLNIR_MkVBHelmet_Black_SLVV,OPTRE_MJOLNIR_Commando_DefaultV,OPTRE_MJOLNIR_Commando_SilverV,OPTRE_MJOLNIR_Commando_BlueV,OPTRE_MJOLNIR_Commando_BlackV,OPTRE_MJOLNIR_Commando_Black,OPTRE_MJOLNIR_Commando_Black_DefaultV,OPTRE_MJOLNIR_Commando_Black_SilverV,OPTRE_MJOLNIR_Commando_Black_BlueV,OPTRE_MJOLNIR_Commando_Black_BlackV,OPTRE_MJOLNIR_Commando_Blue,OPTRE_MJOLNIR_Commando_Blue_DefaultV,OPTRE_MJOLNIR_Commando_Blue_SilverV,OPTRE_MJOLNIR_Commando_Blue_BlueV,OPTRE_MJOLNIR_Commando_Blue_BlackV,OPTRE_MJOLNIR_Commando_Red,OPTRE_MJOLNIR_Commando_Red_DefaultV,OPTRE_MJOLNIR_Commando_Red_SilverV,OPTRE_MJOLNIR_Commando_Red_BlueV,OPTRE_MJOLNIR_Commando_Red_BlackV,OPTRE_MJOLNIR_CQB,OPTRE_MJOLNIR_CQC,OPTRE_MJOLNIR_Pilot,OPTRE_MJOLNIR_Operator,OPTRE_MJOLNIR_EOD,OPTRE_MJOLNIR_ODST,OPTRE_FC_MJOLNIR_Mark_VI_Helmet,OPTRE_FC_MJOLNIR_Mark_VI_Helmet_White,OPTRE_FC_MJOLNIR_Mark_VI_Helmet_Olive,OPTRE_FC_MJOLNIR_Mark_VI_Helmet_Tan,OPTRE_FC_MJOLNIR_Mark_VI_Helmet_Tex,OPTRE_FC_MJOLNIR_Mark_VI_Helmet_Caboose,OPTRE_FC_MJOLNIR_Mark_VI_Helmet_Church,OPTRE_FC_MJOLNIR_Mark_VI_Helmet_Donut,OPTRE_FC_MJOLNIR_Mark_VI_Helmet_Grif,OPTRE_FC_MJOLNIR_Mark_VI_Helmet_Simmons,OPTRE_FC_MJOLNIR_Mark_VI_Helmet_Sarge,OPTRE_FC_MJOLNIR_Mark_VI_Helmet_Kaikaina,OPTRE_FC_MJOLNIR_Mark_VI_Helmet_Lopez,OPTRE_FC_MJOLNIR_Mark_VI_Helmet_Doc,OPTRE_FC_MJOLNIR_Mark_VI_Helmet_North,OPTRE_FC_MJOLNIR_Mark_VI_Helmet_South,OPTRE_FC_MJOLNIR_Mark_VI_Helmet_York,OPTRE_FC_MJOLNIR_Mark_VI_Helmet_Washington,OPTRE_FC_MJOLNIR_Mark_VI_Helmet_Tucker,OPTRE_MJOLNIR_EVAHelmet,OPTRE_MJOLNIR_EVAHelmet_Emily,OPTRE_MJOLNIR_MPHelmet,OPTRE_MJOLNIR_ReconHelmet,OPTRE_FC_Elite_Helmet_FieldMarshal,OPTRE_FC_Elite_Helmet_HonorGuard_Ultra,OPTRE_FC_Elite_Helmet_HonorGuard,OPTRE_FC_Elite_Helmet_Major,OPTRE_FC_Elite_Helmet_Officer,OPTRE_FC_Elite_Helmet_Minor,OPTRE_FC_Elite_Helmet_SpecOps,OPTRE_FC_Elite_Helmet_Ultra,OPTRE_FC_Elite_Helmet_Zealot,OPTRE_FC_MJOLNIR_Mark_VI_Rogue_Helmet,OPTRE_FC_MJOLNIR_Mark_VI_Rogue_Olive_Helmet,OPTRE_FC_MJOLNIR_Mark_VI_Rogue_Tan_Helmet,OPTRE_FC_MJOLNIR_Mark_VI_Rogue_Black_Helmet,OPTRE_FC_MJOLNIR_Mark_VI_Rogue_White_Helmet,OPTRE_FC_MJOLNIR_EVA_Helmet,OPTRE_FC_MJOLNIR_EVA_Helmet_Olive,OPTRE_FC_MJOLNIR_EVA_Helmet_Tan,OPTRE_FC_MJOLNIR_EVA_Helmet_White,OPTRE_FC_MJOLNIR_EVA_Helmet_Black,OPTRE_FC_MJOLNIR_EOD_Helmet,OPTRE_FC_MJOLNIR_EOD_Helmet_Olive,OPTRE_FC_MJOLNIR_EOD_Helmet_Tan,OPTRE_FC_MJOLNIR_EOD_Helmet_White,OPTRE_FC_MJOLNIR_EOD_Helmet_Black,OPTRE_FC_MJOLNIR_Scout_Helmet,OPTRE_FC_MJOLNIR_Scout_Helmet_Olive,OPTRE_FC_MJOLNIR_Scout_Helmet_Tan,OPTRE_FC_MJOLNIR_Scout_Helmet_White,OPTRE_FC_MJOLNIR_Scout_Helmet_Black,OPTRE_FC_MJOLNIR_Security_Helmet,OPTRE_FC_MJOLNIR_Security_Helmet_Olive,OPTRE_FC_MJOLNIR_Security_Helmet_Tan,OPTRE_FC_MJOLNIR_Security_Helmet_White,OPTRE_FC_MJOLNIR_Security_Black";
force OPTRE_POWERED_SUITS_SETTING = "";
force OPTRE_START_ON_INIT = true;

// OPTRE Settings
OPTRE_AircraftHUD_colour = [0.082,0.408,0.039,1];
OPTRE_Debug_Mode = false;
force OPTRE_Enable_AI_Door_On_Gear_Pelican = true;
force OPTRE_Enable_Humans_To_Detach = false;
OPTRE_Enable_Player_Door_On_Gear_Pelican = true;
force OPTRE_Enable_Supercombustion_dev = true;
force OPTRE_Enable_Turret_Detach = true;
OPTRE_Falcon_PIP_Position = "0,1";
force OPTRE_Hijack_FriendlyFireEnabled = false;
force OPTRE_Hijack_Mode = 0;
force OPTRE_Human_Non_Detachable_Turrets = "";
force OPTRE_Spartan_Non_Detachable_Turrets = "";
force OPTRE_Spartan_Randomize = true;

// Ragdoll-on-Command
jet_freefall_checkbox = true;
jet_freefall_parachutes_array = "[""B_Parachute"",""ACE_ReserveParachute""]";
jet_freefall_screaming_checkbox = true;
small_ragdoll_jumping_checkbox = true;
small_ragdoll_main_checkbox = true;

// Ride Where You Look
RWYL_FFVAnywhere_enable = false;
RWYL_HopVehicleRange = 5;
RWYL_OtherSeatsColour = [0.2,0.2,0.2,0.4];
RWYL_OtherSeatsIconSize = 0.8;
RWYL_SelectedSeatColour = [0.95,0.95,0.95,1];
RWYL_SelectedSeatIconSize = 1;

// Sci-fi Support PLUS
force ScifiSupportPlus_AmbientShipSound_Radius = "5000";
force ScifiSupportPlus_Archer = true;
force ScifiSupportPlus_ArcherBarrage = true;
force ScifiSupportPlus_CrashShip = true;
force ScifiSupportPlus_DisengageEngageToggle = true;
force ScifiSupportPlus_DroidDispenser = true;
force ScifiSupportPlus_DroidDispenser_customUnit = "[""WBK_B1_Officer"",""WBK_B1_standart"",""WBK_B1_SquadLead"",""WBK_B1_Heavy"",""WBK_B1_Shotgun"",""WBK_BX_Assasin_commander"",""WBK_BX_Assasin_1""]";
force ScifiSupportPlus_EXTERMINATUSHot = false;
force ScifiSupportPlus_EXTERMINATUSVirus = false;
force ScifiSupportPlus_HMP_VicDrop = true;
force ScifiSupportPlus_IonCannon = true;
force ScifiSupportPlus_IonCannonVolley = true;
force ScifiSupportPlus_JumpShipIn = true;
force ScifiSupportPlus_JumpShipOut = true;
force ScifiSupportPlus_LAATc = true;
force ScifiSupportPlus_MACStrike = true;
force ScifiSupportPlus_MoveShip = true;
force ScifiSupportPlus_MoveShip_Speed = "0.001";
force ScifiSupportPlus_MunificentQRFDeployment = true;
force ScifiSupportPlus_OrbitalAutocannon = true;
force ScifiSupportPlus_OrbitalBlasterCannonBlue = true;
force ScifiSupportPlus_OrbitalBlasterCannonBlueHE = true;
force ScifiSupportPlus_OrbitalBlasterCannonRed = true;
force ScifiSupportPlus_OrbitalBlasterCannonRedHE = true;
force ScifiSupportPlus_OrbitalStrike = true;
force ScifiSupportPlus_PatrolShip = true;
force ScifiSupportPlus_Pelicanvehicledrop = true;
force ScifiSupportPlus_Resupply_customItems = "[[""FirstAidKit"",2], [""Medikit"", 1]]";
force ScifiSupportPlus_ShredderCannon = true;
force ScifiSupportPlus_SupportShip_CooldownTimer_value = "30";
force ScifiSupportPlus_SupportShip_CustomTurretArray = "[""OPTRE_FC_T56_AAG_INV""]";
force ScifiSupportPlus_SupportShip_EnageRadius = "2000";
force ScifiSupportPlus_SupportShip_FireAtTarget = true;
force ScifiSupportPlus_SupportShip_HP_value = "1000";
force ScifiSupportPlus_SupportShip_PatrolCooldownTimer_value = "180";
force ScifiSupportPlus_TurboLaser = true;
force ScifiSupportPlus_TurboLaserVolley = true;
force ScifiSupportPlus_UNSC_ConstructionPod = true;
force ScifiSupportPlus_UNSC_HeavyInsertionPod_customUnit = "[""OPTRE_FC_Marines_Soldier_Rifleman_AT"",""OPTRE_FC_Marines_Soldier_Rifleman_BR"",""OPTRE_FC_Marines_Soldier_Rifleman_Light"",""OPTRE_FC_Marines_Soldier_Rifleman_AR""]";
force ScifiSupportPlus_UNSC_OrbitalVehicleDeployment = true;
force ScifiSupportPlus_UNSC_SquadInsert = true;
force ScifiSupportPlus_UNSC_SquadInsert_customUnit = "[""OPTRE_FC_Marines_Soldier_Rifleman_AT"",""OPTRE_FC_Marines_Soldier_Rifleman_BR"",""OPTRE_FC_Marines_Soldier_Rifleman_Light"",""OPTRE_FC_Marines_Soldier_Rifleman_AR""]";
force ScifiSupportPlus_UNSC_sup_pod = true;
force ScifiSupportPlus_UNSCHeavyInsertionPod = true;
force ScifiSupportPlus_WH40K_DaemonTeleporter = true;
force ScifiSupportPlus_WH40K_DaemonTeleporter_customUnit = "[""O_Soldier_F"",""B_Soldier_F""]";
force ScifiSupportPlusMissilebarrageAT = true;
force ScifiSupportPlusMissilebarrageHE = true;

// SHGT Survivable Wrecks
force SHGT_SW_damageMultiplier = 0;
force SHGT_SW_damageTreshold = 0.916838;
force SHGT_SW_eject_crew = true;
force SHGT_SW_ignore_AI_Units = true;
force SHGT_SW_ignore_AI_vehicles = true;
SHGT_SW_ignore_grounded_vehicles = false;
force SHGT_SW_immune_damage = true;
force SHGT_SW_unconscious = false;
force SHGT_SW_vehicle_destruction_enabled = false;
force SHGT_SW_VehTypes_ClassIgnore_setting = "[""classname1"",""classname2""]";
force SHGT_SW_VehTypes_Drone = false;
force SHGT_SW_VehTypes_Ground = false;
force SHGT_SW_VehTypes_Heli = true;
force SHGT_SW_VehTypes_Plane = true;

// TFAR - Clientside settings
TFAR_curatorCamEars = false;
TFAR_default_radioVolume = 7;
TFAR_intercomDucking = 0.2;
TFAR_intercomVolume = 0.1;
force TFAR_moveWhileTabbedOut = true;
TFAR_noAutomoveSpectator = false;
force TFAR_oldVolumeHint = true;
TFAR_pluginTimeout = 4;
TFAR_PosUpdateMode = 0.1;
force TFAR_showChannelChangedHint = true;
force TFAR_ShowDiaryRecord = false;
force TFAR_showTransmittingHint = true;
TFAR_ShowVolumeHUD = false;
TFAR_splendidCamEars = false;
TFAR_tangentReleaseDelay = 0;
TFAR_VolumeHudTransparency = 0;
TFAR_volumeModifier_forceSpeech = false;

// TFAR - Global settings
force TFAR_AICanHearPlayer = true;
force TFAR_AICanHearSpeaker = true;
force TFAR_allowDebugging = false;
tfar_core_noTSNotConnectedHint = false;
force TFAR_defaultIntercomSlot = -0.857932;
force TFAR_disableAutoMute = true;
force TFAR_enableIntercom = true;
force TFAR_experimentalVehicleIsolation = true;
force TFAR_externalIntercomEnable = 1;
force TFAR_externalIntercomMaxRange_Phone = 5;
force TFAR_externalIntercomMaxRange_Wireless = 15;
force TFAR_fullDuplex = true;
force TFAR_giveLongRangeRadioToGroupLeaders = false;
force TFAR_giveMicroDagrToSoldier = false;
force TFAR_givePersonalRadioToRegularSoldier = false;
force TFAR_globalRadioRangeCoef = 1;
force TFAR_instantiate_instantiateAtBriefing = false;
force TFAR_objectInterceptionEnabled = true;
force TFAR_objectInterceptionStrength = 400;
force tfar_radiocode_east = "_opfor";
force tfar_radiocode_independent = "_independent";
force tfar_radiocode_west = "_bluefor";
force tfar_radioCodesDisabled = true;
force TFAR_SameLRFrequenciesForSide = false;
force TFAR_SameSRFrequenciesForSide = false;
force TFAR_setting_defaultFrequencies_lr_east = "";
force TFAR_setting_defaultFrequencies_lr_independent = "";
force TFAR_setting_defaultFrequencies_lr_west = "";
force TFAR_setting_defaultFrequencies_sr_east = "";
force TFAR_setting_defaultFrequencies_sr_independent = "";
force TFAR_setting_defaultFrequencies_sr_west = "";
force TFAR_setting_DefaultRadio_Airborne_east = "TFAR_mr6000l";
force TFAR_setting_DefaultRadio_Airborne_Independent = "TFAR_anarc164";
force TFAR_setting_DefaultRadio_Airborne_West = "TFAR_anarc210";
force TFAR_setting_DefaultRadio_Backpack_east = "TFAR_mr3000";
force TFAR_setting_DefaultRadio_Backpack_Independent = "TFAR_anprc155";
force TFAR_setting_DefaultRadio_Backpack_west = "TFAR_rt1523g";
force TFAR_setting_DefaultRadio_Personal_east = "TFAR_fadak";
force TFAR_setting_DefaultRadio_Personal_Independent = "TFAR_anprc148jem";
force TFAR_setting_DefaultRadio_Personal_West = "TFAR_anprc152";
force TFAR_setting_DefaultRadio_Rifleman_East = "TFAR_pnr1000a";
force TFAR_setting_DefaultRadio_Rifleman_Independent = "TFAR_anprc154";
force TFAR_setting_DefaultRadio_Rifleman_West = "TFAR_rf7800str";
force TFAR_setting_externalIntercomWirelessHeadgear = "";
force TFAR_spectatorCanHearEnemyUnits = true;
force TFAR_spectatorCanHearFriendlies = true;
force TFAR_takingRadio = 2;
force TFAR_Teamspeak_Channel_Name = "ARCATFAR";
force TFAR_Teamspeak_Channel_Password = "Arca";
force tfar_terrain_interception_coefficient = 7;
force TFAR_voiceCone = true;

// TFAR Radio Profiles
trp_profiles_restoreOnLoadout = true;
trp_profiles_restoreOnRespawn = true;

// TTS Beam Laser
force tts_beam_cleanupSkeletons = true;
force tts_beam_cleanupSkeletonsDelay = 300;
force tts_beam_createCraters = true;
tts_beam_disableImpactFlash = false;
force tts_beam_structureFireChance = 0.03;
force tts_beam_structureFireMaxDuration = 120;
force tts_beam_structureFireMinDuration = 60;
force tts_beam_structureFiresEnabled = true;
force tts_beam_vaporiseBodies = true;

// Turret Enhanced
Fat_Lurch_Grid = true;
Fat_Lurch_GridNum = 6;
Fat_Lurch_MapSlew = true;
Fat_Lurch_Markers = true;
Fat_Lurch_Measure = true;
Fat_Lurch_ShowAz = true;
Fat_Lurch_ShowEl = true;
Fat_Lurch_ShowNorth = true;
Fat_Lurch_ShowTarget = true;

// WebKnight Droids
force WBK_Droid_b1_damage = "4";
force WBK_Droid_b2_damage = "120";

// WebKnight HeadLamps
force WBK_HeadLamps_IsAIActivateHeadlamps = true;
force WBK_HeadLamps_IsVolumetricAppearOnAIParam = true;

// WebKnight's Zombies
force WBK_Zommbies_Halth_Runner = "50";
force WBK_Zommbies_Halth_Shamb = "40";
force WBK_Zommbies_Halth_Trig = "30";
force WBK_Zommbies_Halth_Walker = "30";
force WBK_Zommbies_HeadshotMultiplier = "5";
force WBK_Zommbies_HowFarCanSee = "150";
force WBK_Zommbies_HowFarCanSee_Goliath = "600";
force WBK_Zommbies_HowFarCanSee_SI = "300";
force WBK_Zommbies_HowFarCanSee_Smash = "500";
force WBK_Zommbies_PathingDebug = false;
force WBK_Zommbies_PathingPositionChange = "8";
force WBK_ZommbiesBloaterHealthParam = "80";
force WBK_ZommbiesCorruptedHealthParam = "200";
force WBK_ZommbiesCorruptedTakeMusicParam = true;
force WBK_ZommbiesCorruptedTakeParam = true;
force WBK_ZommbiesCorruptedTakeTimeParam = "40";
force WBK_ZommbiesGoliathHealthParam = "15000";
force WBK_ZommbiesGoliathPickupAttackParam = true;
force WBK_ZommbiesGoliathThrowParam = true;
force WBK_ZommbiesGoliathThrowShardsParam = true;
force WBK_ZommbiesGoliathUndergroundAttackParam = true;
force WBK_ZommbiesGoliathUndergroundAttackParam_distance = "50";
force WBK_ZommbiesGoliathUndergroundAttackParam_max = "10";
force WBK_ZommbiesLeaperHealthParam = "120";
force WBK_ZommbiesMeleeHealthParam = "60";
force WBK_ZommbiesScreamerCoolParam = "20";
force WBK_ZommbiesScreamerDistParam = "100";
force WBK_ZommbiesScreamerHealthParam = "160";
force WBK_ZommbiesSmasherHealthParam = "3500";
force WBK_ZommbiesSmasherHealthParam_Acid = "4000";
force WBK_ZommbiesSmasherHealthParam_Hell = "5000";
force WBK_ZommbiesSmasherJumpParam = true;
force WBK_ZommbiesSmasherThrowParam = true;
force WBK_ZommbiesSmasherThrowParam_Deb = "45";
force WBK_ZommbiesSmasherThrowParam_Deb_Fire = "15";
force WBK_ZommbiesSmasherThrowParam_Deb_Spewer = "20";
force WBK_ZommbiesSmasherThrowParam_Deb_TP = "40";

// Zeus Enhanced
force zen_area_markers_editableMarkers = 0;
force zen_building_markers_enabled = false;
zen_camera_adaptiveSpeed = true;
zen_camera_defaultSpeedCoef = 1;
zen_camera_fastSpeedCoef = 1;
zen_camera_followTerrain = true;
force zen_common_ascensionMessages = false;
force zen_common_autoAddObjects = true;
force zen_common_cameraBird = false;
zen_common_darkMode = false;
force zen_common_disableGearAnim = true;
force zen_common_preferredArsenal = 1;
force zen_compat_ace_hideModules = false;
zen_context_menu_enabled = 2;
zen_context_menu_overrideWaypoints = false;
force zen_editor_addGroupIcons = true;
zen_editor_addModIcons = false;
force zen_editor_declutterEmptyTree = false;
force zen_editor_disableLiveSearch = true;
zen_editor_moveDisplayToEdge = true;
force zen_editor_parachuteSounds = true;
zen_editor_previews_enabled = true;
zen_editor_randomizeCopyPaste = false;
force zen_editor_removeWatermark = true;
force zen_editor_unitRadioMessages = 2;
force zen_placement_enabled = true;
zen_remote_control_cameraExitPosition = 2;
force zen_visibility_enabled = 0;
zen_visibility_maxDistance = 5000;
force zen_vision_enableBlackHot = true;
zen_vision_enableBlackHotGreenCold = false;
zen_vision_enableBlackHotRedCold = false;
zen_vision_enableGreenHotCold = false;
force zen_vision_enableNVG = true;
zen_vision_enableRedGreenThermal = false;
zen_vision_enableRedHotCold = false;
force zen_vision_enableWhiteHot = true;
zen_vision_enableWhiteHotRedCold = false;

// Zeus Enhanced - Attributes
zen_attributes_enableAbilities = true;
zen_attributes_enableAmmo = true;
zen_attributes_enableAmmoCargo = true;
zen_attributes_enableArsenal = true;
zen_attributes_enableBuildingMarker = true;
zen_attributes_enableDamage = true;
zen_attributes_enableEngine = true;
zen_attributes_enableExecute = true;
zen_attributes_enableFuel = true;
zen_attributes_enableFuelCargo = true;
zen_attributes_enableGarage = true;
zen_attributes_enableGroupBehaviour = true;
zen_attributes_enableGroupCombatMode = true;
zen_attributes_enableGroupExecute = true;
zen_attributes_enableGroupFormation = true;
zen_attributes_enableGroupID = true;
zen_attributes_enableGroupSide = true;
zen_attributes_enableGroupSkill = true;
zen_attributes_enableGroupSpeed = true;
zen_attributes_enableGroupStance = true;
zen_attributes_enableHealth = true;
zen_attributes_enableInventory = true;
zen_attributes_enableLights = true;
zen_attributes_enableMarkerAlpha = true;
zen_attributes_enableMarkerColor = true;
zen_attributes_enableMarkerText = true;
zen_attributes_enableName = true;
zen_attributes_enablePlateNumber = true;
zen_attributes_enableRank = true;
zen_attributes_enableRepairCargo = true;
zen_attributes_enableRespawnPosition = true;
zen_attributes_enableRespawnVehicle = true;
zen_attributes_enableSensors = true;
zen_attributes_enableSkill = true;
zen_attributes_enableSkills = true;
zen_attributes_enableStance = true;
zen_attributes_enableStates = true;
zen_attributes_enableTraits = true;
zen_attributes_enableVehicleLock = true;
zen_attributes_enableWaypointBehaviour = true;
zen_attributes_enableWaypointCombatMode = true;
zen_attributes_enableWaypointFormation = true;
zen_attributes_enableWaypointLoiterAltitude = true;
zen_attributes_enableWaypointLoiterDirection = true;
zen_attributes_enableWaypointLoiterRadius = true;
zen_attributes_enableWaypointSpeed = true;
zen_attributes_enableWaypointTimeout = true;
zen_attributes_enableWaypointType = true;

// Zeus Enhanced - Faction Filter
zen_faction_filter_0_3AS_CIS = true;
zen_faction_filter_0_3AS_Rebel = true;
zen_faction_filter_0_DESERT = true;
zen_faction_filter_0_DESERT_groups = true;
zen_faction_filter_0_EdCat_GO_CSAT_Arctic = true;
zen_faction_filter_0_JLTS_CIS = true;
zen_faction_filter_0_JUNGLE = true;
zen_faction_filter_0_ls_cis = true;
zen_faction_filter_0_ls_mandalorians = true;
zen_faction_filter_0_ls_pirates = true;
zen_faction_filter_0_mti_factions_cis = true;
zen_faction_filter_0_mti_factions_cishuman = true;
zen_faction_filter_0_mti_factions_cishuman_groups = true;
zen_faction_filter_0_mti_factions_deathwatch = true;
zen_faction_filter_0_mti_factions_imp = true;
zen_faction_filter_0_mti_factions_shadowcollective = true;
zen_faction_filter_0_mti_factions_sith_imperials = true;
zen_faction_filter_0_mti_factions_zombies = true;
zen_faction_filter_0_mti_factions_zombies_groups = true;
zen_faction_filter_0_NCA_categoryPyrishiCollective = true;
zen_faction_filter_0_NCA_categorySeparatistArmy = true;
zen_faction_filter_0_NCA_categorySithEmpire = true;
zen_faction_filter_0_OPF_F = true;
zen_faction_filter_0_OPF_G_F = true;
zen_faction_filter_0_OPF_GEN_F = true;
zen_faction_filter_0_OPF_R_F = true;
zen_faction_filter_0_OPF_T_F = true;
zen_faction_filter_0_OPTRE_Ins = true;
zen_faction_filter_0_OPTRE_Ins_groups = true;
zen_faction_filter_0_SFA_groups_imp = true;
zen_faction_filter_0_SFA_Sith_Assets = true;
zen_faction_filter_0_SNOW = true;
zen_faction_filter_0_SNOW_groups = true;
zen_faction_filter_0_TKE_Ext_S_Spaceforce_Redfor = true;
zen_faction_filter_0_WBK_AI = true;
zen_faction_filter_0_WBK_AI_Melee = true;
zen_faction_filter_0_WBK_AI_ZHAMBIES = true;
zen_faction_filter_0_WBK_Droid_groups = true;
zen_faction_filter_0_WM_ParaRebel = true;
zen_faction_filter_0_WM_ParaRebel_groups = true;
zen_faction_filter_0_WM_Rebels = true;
zen_faction_filter_1_3AS_Imperial = true;
zen_faction_filter_1_3AS_Rep = true;
zen_faction_filter_1_BLU_CTRG_F = true;
zen_faction_filter_1_BLU_F = true;
zen_faction_filter_1_BLU_G_F = true;
zen_faction_filter_1_BLU_GEN_F = true;
zen_faction_filter_1_BLU_T_F = true;
zen_faction_filter_1_BLU_W_F = true;
zen_faction_filter_1_Default = true;
zen_faction_filter_1_DSA_DeltaX = true;
zen_faction_filter_1_DSA_DeltaX_groups = true;
zen_faction_filter_1_EdCat_GO_NATO_Arctic = true;
zen_faction_filter_1_IMP_F = true;
zen_faction_filter_1_IND_G_F = true;
zen_faction_filter_1_JLTS_GAR = true;
zen_faction_filter_1_ls_csf = true;
zen_faction_filter_1_ls_gar = true;
zen_faction_filter_1_ls_gar_legions = true;
zen_faction_filter_1_ls_jedi = true;
zen_faction_filter_1_ls_orsf = true;
zen_faction_filter_1_ls_osrf = true;
zen_faction_filter_1_lsb_turret = true;
zen_faction_filter_1_mti_faction_SOB = true;
zen_faction_filter_1_NCA_categoryGalacticRepublic = true;
zen_faction_filter_1_NCA_republicCloneTrooper = true;
zen_faction_filter_1_OPTRE_UNSC = true;
zen_faction_filter_1_SFA_groups_rep = true;
zen_faction_filter_1_SFA_Rep_Assets = true;
zen_faction_filter_1_TKE_Ext_S_Spaceforce_Blufor = true;
zen_faction_filter_1_TKE_UCN_Drop_Pods = true;
zen_faction_filter_1_WBK_AI = true;
zen_faction_filter_1_WBK_AI_Melee = true;
zen_faction_filter_1_WBK_AI_ZHAMBIES = true;
zen_faction_filter_1_WM_Empire = true;
zen_faction_filter_2_3AS_BlackSun = true;
zen_faction_filter_2_IND_C_F = true;
zen_faction_filter_2_IND_E_F = true;
zen_faction_filter_2_IND_F = true;
zen_faction_filter_2_IND_G_F = true;
zen_faction_filter_2_IND_L_F = true;
zen_faction_filter_2_ls_jabiim = true;
zen_faction_filter_2_ls_mandalorians = true;
zen_faction_filter_2_ls_memefor = true;
zen_faction_filter_2_ls_mercenaries = true;
zen_faction_filter_2_mti_factions_edcat_OR = true;
zen_faction_filter_2_mti_factions_ION = true;
zen_faction_filter_2_mti_factions_ION_groups = true;
zen_faction_filter_2_mti_factions_mando = true;
zen_faction_filter_2_mti_factions_mando_groups = true;
zen_faction_filter_2_mti_factions_rebels = true;
zen_faction_filter_2_mti_factions_rebels_groups = true;
zen_faction_filter_2_mti_factions_shadowcollective = true;
zen_faction_filter_2_mti_factions_zombies = true;
zen_faction_filter_2_mti_factions_zombies_groups = true;
zen_faction_filter_2_OPTRE_CAA = true;
zen_faction_filter_2_OPTRE_DME = true;
zen_faction_filter_2_OPTRE_Ins = true;
zen_faction_filter_2_OPTRE_PD = true;
zen_faction_filter_2_OPTRE_UEG_Civ = true;
zen_faction_filter_2_SFA_Cartel_Assets = true;
zen_faction_filter_2_SFA_Mando_Assets = true;
zen_faction_filter_2_SFA_Onderon_Assets = true;
zen_faction_filter_2_SFA_Revanite_Assets = true;
zen_faction_filter_2_SFA_Telos_Assets = true;
zen_faction_filter_2_WBK_AI_ZHAMBIES = true;
zen_faction_filter_3_3AS_Civilian = true;
zen_faction_filter_3_CIV_F = true;
zen_faction_filter_3_CIV_IDAP_F = true;
zen_faction_filter_3_DSA_Spooks = true;
zen_faction_filter_3_EdCat_jbad_vehicles = true;
zen_faction_filter_3_IND_L_F = true;
zen_faction_filter_3_ls_civilians = true;
zen_faction_filter_3_OPTRE_UEG_Civ = true;
