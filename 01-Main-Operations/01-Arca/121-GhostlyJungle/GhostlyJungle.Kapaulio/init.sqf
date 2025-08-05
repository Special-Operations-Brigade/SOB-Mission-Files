//THIS GOES INTO THE INIT.SQF FILE

if ((!isServer) && (player != player)) then {waitUntil {player == player};};

[] execVM "fn_loot.sqf";
[] execVM "fn_simpleCivilianPresence.sqf";
[] execVM "fn_simpleApocalypseEnvironment.sqf";

// Initialize ticket display for players
[] execVM "functions\fn_initTicketSystem.sqf";
