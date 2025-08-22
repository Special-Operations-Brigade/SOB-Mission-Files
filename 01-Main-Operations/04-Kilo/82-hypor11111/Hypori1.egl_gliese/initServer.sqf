// Set initial tickets
[west, 83, 0] call BIS_fnc_respawnTickets;

// Lock tickets to 5 even when players join
addMissionEventHandler ["PlayerConnected", {
    [west, 83, 0] call BIS_fnc_respawnTickets;
}];