/*
 * Initializes ticket display for Arma's built-in ticket system
 */

// Client-side UI only
if (hasInterface) then {
    [] spawn {
        waitUntil {!isNull player};
        waitUntil {player == player}; // JIP fix
        
        // Start the ticket display
        [] execVM "functions\fn_updateTicketDisplay_new.sqf";
    };
};

systemChat "Ticket display system initialized.";
