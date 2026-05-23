[] execVM "garbage_cleanup.sqf";
[] execVM "vehicleSpawner_handling.sqf";
[] execVM "difficulty_enforcement.sqf";

// Sets freefall height
NCA_freefallHeight = 2000;

addMissionEventHandler ["EntityRespawned", {
	params ["_newEntity"];
	if (isPlayer _newEntity) then {
        _newEntity setUnitFreefallHeight NCA_freefallHeight;
    };
}];
addMissionEventHandler ["EntityCreated", {
	params ["_entity"];
	if (_entity isKindOf "Man") then {
	_entity setUnitFreefallHeight NCA_freefallHeight;
	};
}];

// End loading Screen
onPlayerConnected {
	for "_i" from 1 to 3 do { 
		endLoadingScreen;
		//sleep 3;
	};
};

// Enable ace fortify
missionNamespace setVariable ["fortifyAllowed", true];
["west 21stLogiFOB"] call ace_fortify_fnc_handleChatCommand;