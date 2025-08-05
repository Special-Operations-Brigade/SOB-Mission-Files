/*
 * Updates the ticket display for clients - Multiplayer optimized
 */

systemChat "fn_updateTicketDisplay_new.sqf is executing...";

if (!hasInterface) exitWith {
    systemChat "Display script exiting - no interface";
};

systemChat "Interface check passed in display script...";

// Create ticket display
[] spawn {
    systemChat "Inside display spawn block...";
    
    // Use unique control ID for each client to prevent conflicts
    private _controlId = 2000 + (clientOwner);
    private _lastTicketCount = -1;
    private _maxTickets = 30; // Default fallback value
    private _displayCreated = false;
    
    systemChat format ["Using control ID: %1", _controlId];
    
    // Wait for display to be ready and stable
    waitUntil {!isNull (findDisplay 46)};
    sleep 1; // Additional stability wait
    
    systemChat "Starting ticket display system...";
    
    // Get initial ticket count to determine starting amount
    private _initialTickets = [west] call BIS_fnc_respawnTickets;
    systemChat format ["Initial tickets call result: %1", _initialTickets];
    
    if (!isNil "_initialTickets" && _initialTickets > 0) then {
        _maxTickets = _initialTickets;
        systemChat format ["Max tickets set to: %1", _maxTickets];
    } else {
        systemChat format ["Using default max tickets: 30 (initial was: %1)", _initialTickets];
    };
    
    while {true} do {
        // Get current tickets from Arma's system
        private _currentTickets = [west] call BIS_fnc_respawnTickets;
        
        // Skip if tickets system not ready or invalid
        if (isNil "_currentTickets" || _currentTickets < 0) then {
            if (!_displayCreated) then {
                systemChat "Waiting for ticket system to be ready...";
            };
            sleep 2;
            continue;
        };
        
        // Update max tickets if we get a higher value (in case of mission progression)
        if (_currentTickets > _maxTickets) then {
            _maxTickets = _currentTickets;
        };
        
        // Only update if ticket count changed (performance optimization)
        if (_lastTicketCount != _currentTickets || !_displayCreated) then {
            systemChat format ["Updating display - tickets: %1, created: %2", _currentTickets, _displayCreated];
            _lastTicketCount = _currentTickets;
            _displayCreated = true;
            
            // Ensure display is still available
            private _display = findDisplay 46;
            systemChat format ["Display 46 status: %1", !isNull _display];
            
            if (isNull _display) then {
                systemChat "Display lost, waiting for reconnection...";
                waitUntil {!isNull (findDisplay 46)};
                _display = findDisplay 46;
                systemChat "Display reconnected";
            };
            
            // Remove existing display
            private _oldControl = _display displayCtrl _controlId;
            systemChat format ["Old control exists: %1", !isNull _oldControl];
            if (!isNull _oldControl) then {
                ctrlDelete _oldControl;
                systemChat "Old control deleted";
            };
            
            // Create new text control with unique ID
            systemChat format ["Attempting to create control with ID: %1", _controlId];
            private _ticketText = _display ctrlCreate ["RscText", _controlId];
            systemChat format ["Control creation result: %1", !isNull _ticketText];
            if (isNull _ticketText) then {
                systemChat "FAILED to create ticket display control!";
                sleep 5;
                continue;
            };
            
            systemChat "Control created successfully, setting properties...";
            
            _ticketText ctrlSetPosition [0.4, 0.05, 0.2, 0.04]; // Center-top position
            _ticketText ctrlSetBackgroundColor [0, 0, 0, 0.7];
            _ticketText ctrlSetTextColor [1, 1, 1, 1];
            
            systemChat "Properties set, creating text...";
            
            // Update text based on ticket count
            private _text = format ["SOB Manpower: %1/%2", _currentTickets, _maxTickets];
            private _color = [1, 1, 1, 1]; // White
            
            if (_currentTickets <= 5) then {
                _color = [1, 0, 0, 1]; // Red when close to failure
            } else {
                if (_currentTickets <= 10) then {
                    _color = [1, 1, 0, 1]; // Yellow when getting dangerous
                };
            };
            
            systemChat format ["Setting text to: %1", _text];
            
            _ticketText ctrlSetText _text;
            _ticketText ctrlSetTextColor _color;
            _ticketText ctrlCommit 0;
            _ticketText ctrlShow true;
            
            systemChat format ["Ticket display should now be visible: %1", _text];
            
            if (_lastTicketCount == _currentTickets && !_displayCreated) then {
                systemChat format ["Ticket display created: %1", _text];
            };
        };
        
        sleep 3; // Reduced update frequency for performance
    };
};
