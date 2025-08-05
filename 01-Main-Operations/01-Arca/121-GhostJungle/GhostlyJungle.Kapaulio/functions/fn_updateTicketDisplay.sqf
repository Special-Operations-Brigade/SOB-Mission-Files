/*
 * Updates the ticket display for clients - Multiplayer optimized
 */

if (!hasInterface) exitWith {};

// Use unique control ID for each client to prevent conflicts
private _controlId = 2000 + (clientOwner);

// Create ticket display
[] spawn {
    private _lastTicketCount = -1;
    
    while {true} do {
        // Get current tickets from Arma's system
        private _currentTickets = [west] call BIS_fnc_respawnTickets;
        
        // Get max tickets (store first value we see as the starting amount)
        if (isNil "STARTING_TICKETS") then {
            STARTING_TICKETS = _currentTickets;
        };
        private _maxTickets = STARTING_TICKETS;
        
        // Only update if ticket count changed (performance optimization)
        if (_lastTicketCount != _currentTickets) then {
            _lastTicketCount = _currentTickets;
            
            waitUntil {!isNull (findDisplay 46)};
            
            // Remove existing display
            private _display = findDisplay 46;
            (_display displayCtrl _controlId) ctrlShow false;
            
            // Create new text control with unique ID
            private _ticketText = _display ctrlCreate ["RscText", _controlId];
            _ticketText ctrlSetPosition [0.01, 0.01, 0.3, 0.04];
            _ticketText ctrlSetBackgroundColor [0, 0, 0, 0.5];
            _ticketText ctrlSetTextColor [1, 1, 1, 1];
            _ticketText ctrlSetFont "PuristaMedium";
            _ticketText ctrlSetFontSize 0.04;
            
            // Update text based on ticket count
            private _text = format ["Team Lives: %1/%2", _currentTickets, _maxTickets];
            private _color = [1, 1, 1, 1]; // White
            
            if (_currentTickets <= 5) then {
                _color = [1, 0, 0, 1]; // Red when close to failure
            } else {
                if (_currentTickets <= 10) then {
                    _color = [1, 1, 0, 1]; // Yellow when getting dangerous
                };
            };
            
            _ticketText ctrlSetText _text;
            _ticketText ctrlSetTextColor _color;
            _ticketText ctrlCommit 0;
            _ticketText ctrlShow true;
        };
        
        sleep 3; // Reduced update frequency for performance
    };
};
