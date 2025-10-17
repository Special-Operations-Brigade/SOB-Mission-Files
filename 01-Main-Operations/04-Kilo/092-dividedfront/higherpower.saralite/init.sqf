//THIS GOES INTO THE INIT.SQF FILE

if ((!isServer) && (player != player)) then {waitUntil {player == player};};

[] execVM "fn_simpleApocalypseEnvironment.sqf";
[] execVM "fn_simpleCivilianPresence.sqf";