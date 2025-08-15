//THIS GOES INTO THE INIT.SQF FILE

if ((!isServer) && (player != player)) then {waitUntil {player == player};};

// Client-side initialization  
if (hasInterface) then {
	// Direct ticket display implementation
	[] spawn {
		// Wait for player and display to be ready
		waitUntil {!isNull player};
		waitUntil {player == player};
		waitUntil {!isNull (findDisplay 46)};
		sleep 3;
		
		// Create the ticket display loop with fade effect
		[] spawn {
			private _controlId = 5000;
			private _lastTicketCount = -1;
			private _ticketText = controlNull;
			
			while {true} do {
				// Get current tickets
				private _currentTickets = [west] call BIS_fnc_respawnTickets;
				
				// Update display if tickets changed (someone died/respawned)
				if (!isNil "_currentTickets" && _currentTickets >= 0 && _lastTicketCount != _currentTickets) then {
					_lastTicketCount = _currentTickets;
					
					// Get display
					private _display = findDisplay 46;
					if (!isNull _display) then {
						// Remove old control if it exists
						if (!isNull _ticketText) then {
							ctrlDelete _ticketText;
						};
						
						// Create new control
						_ticketText = _display ctrlCreate ["RscText", _controlId];
						if (!isNull _ticketText) then {
							_ticketText ctrlSetPosition [0.001, 0.9, 0.2, 0.04];
							_ticketText ctrlSetBackgroundColor [0, 0, 0, 0.4];
							
							// Simple format - just show current tickets
							private _text = format ["SOB Manpower: %1", _currentTickets];
							
							// Color coding based on ticket count
							private _color = [1, 1, 1, 1]; // White
							if (_currentTickets <= 5) then {
								_color = [1, 0, 0, 1]; // Red when critical
							} else {
								if (_currentTickets <= 10) then {
									_color = [1, 1, 0, 1]; // Yellow when low
								};
							};
							
							_ticketText ctrlSetText _text;
							_ticketText ctrlSetTextColor _color;
							_ticketText ctrlCommit 0;
							_ticketText ctrlShow true;
							
							// Spawn fade out timer
							[_ticketText] spawn {
								params ["_ctrl"];
								sleep 10; // Show for 10 seconds
								
								// Fade out over 2 seconds
								if (!isNull _ctrl) then {
									for "_i" from 10 to 0 step -1 do {
										if (!isNull _ctrl) then {
											_ctrl ctrlSetTextColor [1, 1, 1, _i/10];
											_ctrl ctrlSetBackgroundColor [0, 0, 0, (0.4 * _i/10)];
											_ctrl ctrlCommit 0.2;
											sleep 0.2;
										};
									};
									// Hide completely after fade
									if (!isNull _ctrl) then {
										_ctrl ctrlShow false;
									};
								};
							};
						};
					};
				};
				
				sleep 1; // Check more frequently for ticket changes
			};
		};
	};
} else {
	systemChat "No interface detected - running as headless client or dedicated server.";
};
