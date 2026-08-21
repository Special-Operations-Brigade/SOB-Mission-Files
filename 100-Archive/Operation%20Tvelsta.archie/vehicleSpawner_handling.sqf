NCA_vs_spawnVehicle = {
    params ["_vehicle", "_pad"];

    _nearEntities = _pad nearEntities 8; // Checks for alive players and vehicles within 4mR of the pad

    if (count _nearEntities > 0) exitWith { // Exits the script if there is something obstructing the pad
        playSound3D [getMissionPath "sounds\clear_hanger_area.ogg", _pad, true, getPosASL _pad, 5, 1, 200];
        sleep 5;
    };

    _veh = createVehicle [_vehicle, [0,0,0], [], 0, "NONE"];
    _veh allowDamage false;
    _veh setPosASL getPosASL _pad;
    _veh setDir getDir _pad;
    _veh allowDamage true;
    if (getNumber ((configOf _veh) >> "isUAV") == 1) then {
    createVehicleCrew _veh;
    };
};

NCA_vs_clearPad = {
	params ["_pad"];

	_nearEntities = _pad nearEntities 8;
	{
		if !(typeOf _x isKindOf "Man") then {
			deleteVehicle _x;
		};
	} forEach _nearEntities;
};

NCA_vs_spawnCrate = {
	params ["_crate", "_cargopad"];

	_nearEntities = _cargopad nearEntities 1; // Checks for alive players and vehicles within 4mR of the pad

	if (count _nearEntities > 0) exitWith { // Exits the script if there is something obstructing the pad
		playSound3D [getMissionPath "sounds\clear_hanger_area.ogg", _cargopad, true, getPosASL _cargopad, 5, 1, 200];
		sleep 5;
	};

	_veh = createVehicle [_crate, [0,0,0], [], 0, "NONE"];
	_veh allowDamage false;
	_veh setPosASL getPosASL _cargopad;
	_veh setDir getDir _cargopad;
	_veh allowDamage true;
};

NCA_vs_clearCargo = {
	params ["_cargopad"];

	_nearEntities = _pad nearEntities 8;
	{
		if !(typeOf _x isKindOf "Man") then {
			deleteVehicle _x;
		};
	} forEach _nearEntities;
};

NCA_vs_spawnWing = {
	params ["_wing", "_wingpad"];

	_nearEntities = _wingpad nearEntities 8; // Checks for alive players and vehicles within 4mR of the pad

	if (count _nearEntities > 0) exitWith { // Exits the script if there is something obstructing the pad
		playSound3D [getMissionPath "sounds\clear_hanger_area.ogg", _wingpad, true, getPosASL _wingpad, 5, 1, 200];
		sleep 5;
	};

	_veh = createVehicle [_wing, [0,0,0], [], 0, "NONE"];
	_veh allowDamage false;
	_veh setPosASL getPosASL _wingpad;
	_veh setDir getDir _wingpad;
	_veh allowDamage true;
};