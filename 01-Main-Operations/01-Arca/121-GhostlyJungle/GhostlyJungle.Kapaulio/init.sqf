//THIS GOES INTO THE INIT.SQF FILE

if ((!isServer) && (player != player)) then {waitUntil {player == player};};

// Server-side initialization
if (isServer) then {
	[] execVM "fn_loot.sqf";
	[] execVM "fn_simpleCivilianPresence.sqf";
	[] execVM "fn_simpleApocalypseEnvironment.sqf";
};

// Client-side initialization  
if (hasInterface) then {
	// Initialize ticket display for players
	[] execVM "functions\fn_initTicketSystem.sqf";
};
