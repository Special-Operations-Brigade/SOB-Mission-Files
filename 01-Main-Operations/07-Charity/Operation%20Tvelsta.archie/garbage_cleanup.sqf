if (isServer) then {
    diag_log "21st_GC: Garbage cleanup script initialized";
    systemChat "21st_GC: Garbage cleanup script initialized";

    NCA_GC_cleanedBodiesCount = 0;
    NCA_GC_cleanedTrenchesCount = 0;

    // Function to check if a body is near any alive player
    NCA_GC_isTargetNearPlayer = {
        params ["_target", "_distance"];
        private _alivePlayers = allPlayers select {alive _x};
        private _nearbyPlayerFound = _alivePlayers findIf { _target distance _x < _distance } != -1;
        _nearbyPlayerFound
    };

    // Function to handle the cleanup of a dead body
    NCA_GC_cleanupBody = {
        params ["_unit"];
        _target = _unit;

        // Wait for 5 minutes
        sleep 300;
        
        // Loop to check the condition every 1 minute if player is near the body
        while {true} do {
            if (([_target, 50] call NCA_GC_isTargetNearPlayer) or (simulationEnabled _target == false)) then {
                // Wait for 1 minute and check again
                sleep 60;
            } else {
                // Delete the body if no player is near
                deleteVehicle _target;
                NCA_GC_cleanedBodiesCount = NCA_GC_cleanedBodiesCount + 1;
                break; // Exit the loop
            };
        };
    };

    // Function to handle the cleanup of a trench
    NCA_GC_cleanupTrench = {
        params ["_object"];
        _target = _object;
        private _awayCounter = 0;

        // Loop to check the condition every 1 minute if player is near the trench
        while {true} do {
            if (!alive _target) exitWith {break}; 
            if ([_target, 1000] call NCA_GC_isTargetNearPlayer) then {
                // Reset counter if a player is within 1km
                _awayCounter = 0;
            } else {
                // Increment the counter if no player is near
                _awayCounter = _awayCounter + 1;
                // Delete the trench if the counter reaches 20 (20 minutes)
                if (_awayCounter >= 15) then {
                    deleteVehicle _target;
                    NCA_GC_cleanedTrenchesCount = NCA_GC_cleanedTrenchesCount + 1;
                    break; // Exit the loop
                };
            };
            // Wait for 1 minute (60 seconds) before the next check
            sleep 60;
        };
    };

    addMissionEventHandler ["EntityKilled", {
        params ["_unit"];

        // Check if the killed entity is a man
        if (typeOf _unit isKindOf "Man") then {
            [_unit] spawn NCA_GC_cleanupBody;
        };
    }];

    addMissionEventHandler ["EntityCreated", {
        params ["_entity"];
        _trenchTypes = ["ACE_envelope_big", "ACE_envelope_short", "ACE_envelope_small", "GRAD_envelope_vehicle", "GRAD_envelope_giant", "GRAD_envelope_long", "GRAD_envelope_short"];

        // Check if the created entity is a trench
        if (typeOf _entity in _trenchTypes) then {
            [_entity] spawn NCA_GC_cleanupTrench;
        };
    }];

    // Zeus reporting function
    NCA_GC_reportToZeus = {
        while {true} do {
            sleep 300; // Wait for 5 minutes
            private _message = "";
            if (NCA_GC_cleanedBodiesCount > 0) then {
                _message = format ["Units Deleted: %1", NCA_GC_cleanedBodiesCount];
            };
            if (NCA_GC_cleanedTrenchesCount > 0) then {
                if (_message != "") then {
                    _message = _message + "\n";
                };
                _message = _message + format ["Trenches Deleted: %1", NCA_GC_cleanedTrenchesCount];
            };
            if (_message != "") then {
                _message = _message + "\nIn the past 5 minutes.";
                {
                    private _curatorUnit = getAssignedCuratorUnit _x;
                    if (!isNull _curatorUnit) then {
                        [_message] remoteExec ["hint", _curatorUnit];
                    };
                } forEach allCurators;
                diag_log _message;
            };
            NCA_GC_cleanedBodiesCount = 0;
            NCA_GC_cleanedTrenchesCount = 0;
        };
    };

    // Start the reporting function
    [] spawn NCA_GC_reportToZeus;
};