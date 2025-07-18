missionNamespace setVariable ["_weaponConfigs", [ 
["MTI_BARM_Shotgun", "mti_factions_mag_purple_shotgun_slug", ""],
    ["MTI_DC15C", "mti_Mag_DC15C", "MTI_HMRCO_blu"],
    ["MTI_DC15S", "mti_Mag_DC15S", "MTI_Holosight_blu"],
    ["MTI_DC17M", "mti_Mag_DC17M_AR", "mti_Mag_DC17M_Anti"],
    ["MTI_DP23", "mti_Mag_DP23", ""],
    ["MTI_WestarM5", "mti_Mag_Westar", "3AS_Optic_Scope_WestarM5"],
    ["MTI_Z6_Small", "mti_Mag_Z6_Small", "ACE_Flashlight_Maglite_ML300L"],
    ["mti_factions_weapon_a280", "mti_factions_mag_ice_rifle",""],
    ["MTI_Factions_SpacePDW1", "MTI_Factions_spacePDW1_mag", "MTI_HRCO_blu"],
    ["MTI_DC15LE", "mti_Mag_DC15LE_HP", ""],
    ["MTI_DC15L", "mti_Mag_DC15L", "MTI_HRCO_blu"],
    ["MTI_DC15A", "mti_Mag_DC15A", "MTI_HRCO_grn"],
    ["MTI_BTX", "mti_Mag_BTX", "mti_Mag_SonicDet"],
    ["MTI_br77_Wood", "mti_Mag_BR77_HP", "MTI_br77_Scope"],
    ["MTI_ACPA", "mti_Mag_ACPA", "ACE_VMH3"],
    ["MTI_ACPR", "mti_Mag_ACPR", "Pipe_aluminium"],
    ["MTI_Valken38X", "mti_Mag_38X", "WBK_brush_axe"],
    ["MTI_Valken39Y", "mti_Mag_39Y", "WBK_brush_axe"],
    ["mti_factions_weapon_gravlance", "MTI_Factions_Rail_AT_Mag", "FireAxe"],
    ["mti_factions_weapon_sbb3", "mti_factions_mag_shotgun_slug", "FireAxe"],
    ["MTI_DC19SA", "mti_Mag_DC19SA", "Knife_kukri"],
    ["MTI_DW32S", "mti_Mag_DW32S", "Knife_kukri"],
    ["mti_factions_weapon_boltblaster_shotgun", "mti_factions_mag_yellow_shotgun_slug", "Bat_Spike"],
    ["mti_factions_weapon_e5c", "mti_factions_mag_purple_carbine", ""],
    ["mti_factions_weapon_e15", "mti_factions_mag_lime_mg", ""],
    ["mti_factions_weapon_pulsebreaker", "mti_factions_mag_sniper", ""],
    ["MTI_Verpine", "MTI_Verpine_mag", ""],
    ["MTI_Verpine_scope", "MTI_HMRCO_blu", ""],
    ["MTI_HRCO_red", "mti_drones_auto_turret_packed", ""],
    ["mti_Mag_ThermalDet", "mti_Mag_SmokeLightBlue", ""],
    ["MTI_RPS6_D_Loaded", "WBK_SciFi_Sword_2", ""],
    ["MTI_RPS6", "mti_Mag_RPS6_AT", ""],
    ["MTI_Z6", "mti_Mag_Z6", ""],
    ["MTI_T20", "mti_Mag_T20", ""],
    ["MTI_firepunch", "mti_Mag_Firepuncher", ""],
    ["mti_factions_weapon_E5S", "mti_factions_mag_grey_sniper", ""],
    ["MTI_DP24", "mti_Mag_DP24", ""],
    ["MTI_PLX1", "mti_Mag_PLX1_AT", ""],
    ["MTI_RSKF44", "mti_Mag_RSKF44", ""], 
    ["MTI_SE14R", "mti_Mag_SE14R", ""], 
    ["3AS_Arkanian_Pistol_F", "3AS_8Rnd_EY40_Mag", ""], 
    ["MTI_BactaPatch", "MTI_BactaSpray", "ACE_bloodIV"], 
    ["ACE_epinephrine", "MTI_PBA", "ACE_fieldDressing"], 
    ["ACE_elasticBandage", "mti_Mag_DC15LE_HP", ""]
]]; 

missionNamespace setVariable ["_items", ["TKE_MercHelmV2VisorPolice","B_Carryall_cbr","mti_armoury_commando_helmet_base","mti_armoury_trooper_backpack_medic","mti_armoury_trooper_backpack_base","mti_factions_mando_backpack_JT12","mti_factions_zombies_helmet_SOBARC","mti_armoury_fieldsupport_helmet_FS_Tanker","mti_armoury_jumptrooper_helmet_Trooper","mti_factions_zombies_helmet_SOB","mti_armoury_arc_vest_trooper","MTI_EmergencyFlare","ACE_fieldDressing","mti_Mag_ThermalDet","WBK_ShoulderLampItem_Strong","ItemMap","MTI_BactaPatch","ACE_EntrenchingTool"]];

// Add rare items array
missionNamespace setVariable ["_rareItems", ["mti_factions_zombies_vest_RAMZ","TKE_AlicePackUCN","TKE_FlakJacketPV1","mti_armoury_trooper_backpack_RTO","mti_armoury_arc_backpack_base","mti_armoury_fieldsupport_backpack_fsb_trooper","mti_armoury_trooper_helmet_elite","mti_armoury_commando_vest_base","mti_armoury_trooper_nvg_Chip","JLTS_clone_comlink","ACE_surgicalKit"]]; // Example rare items, replace with your own


fnc_spawnLoot = {
    params ["_player"];
    // Reduced loot spawn search radius from 150 to 75 meters for better performance
    _nearBuildings = _player nearObjects ["Building", 75];

    if (isNil "DB_globalBuildingIndex") then { DB_globalBuildingIndex = 0; };
    {
        _building = _x;
        if (isNil {_building getVariable ["DB_buildingIndex", nil]}) then {
            _building setVariable ["DB_buildingIndex", DB_globalBuildingIndex, true];
            DB_globalBuildingIndex = DB_globalBuildingIndex + 1;
        };
        _bIdx = _building getVariable ["DB_buildingIndex", -1];
        if !(_building getVariable ["hasLoot", false]) then {
            if ((_bIdx % 5) == 0) then { // Only spawn loot in every 5th building globally
                _positions = _building buildingPos -1;
                if (count _positions > 0) then {
                    _building setVariable ["hasLoot", true, true];
                    _pos = selectRandom _positions;
                    // Spawn a crate at this position
                    _crate = createVehicle ["mti_supplies_crate_empty", _pos, [], 0, "CAN_COLLIDE"];
                    _crate setPos _pos;
                    _crate setVariable ["isLootCrate", true, true];
                    // Fill crate with 3-6 random weapons/items
                    _numLoot = 3 + floor random 4;
                    for "_j" from 1 to _numLoot do {
                        _itemType = selectRandom ["weapon", "item"];
                        switch (_itemType) do {
                            case "weapon": {
                                _weaponConfig = selectRandom (missionNamespace getVariable "_weaponConfigs");
                                _weapon = _weaponConfig select 0;
                                _compatibleMag = _weaponConfig select 1;
                                _crate addWeaponCargoGlobal [_weapon, 1];
                                _crate addMagazineCargoGlobal [_compatibleMag, 1 + floor(random 3)];
                            };
                            case "item": {
                                // 2% chance to spawn a rare item instead of a normal item
                                if ((random 1) < 0.02) then {
                                    _rareItem = selectRandom (missionNamespace getVariable "_rareItems");
                                    _crate addItemCargoGlobal [_rareItem, 1];
                                } else {
                                    _item = selectRandom (missionNamespace getVariable "_items");
                                    _crate addItemCargoGlobal [_item, 1];
                                };
                            };
                        };
                    };
                    // Start a despawn monitor for this crate
                    _despawnDistance = 100;
                    _despawnTime = 10;
                    [_crate, _despawnDistance, _despawnTime] spawn {
                        params ["_crate", "_despawnDistance", "_despawnTime"];
                        private _timer = 0;
                        while {alive _crate} do {
                            _near = allPlayers select {(_x distance _crate) < _despawnDistance};
                            if (count _near == 0) then {
                                _timer = _timer + 1;
                                if (_timer >= _despawnTime) exitWith {deleteVehicle _crate;};
                            } else {
                                _timer = 0;
                            };
                            sleep 1;
                        };
                    };
                };
            };
        };
    } forEach _nearBuildings;
};

[] spawn {
    while {true} do {
        {
            [_x] spawn {
                params ["_player"];
                [_player] call fnc_spawnLoot;
                sleep 0.5; // Stagger each player's loot spawn to reduce performance spikes
            };
        } forEach allPlayers;
        sleep 2; // Increase main loop delay for further performance improvement
    };
};