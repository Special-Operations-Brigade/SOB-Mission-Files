//THIS GOES INTO THE INIT.SQF FILE

if ((!isServer) && (player != player)) then {waitUntil {player == player};};

setViewDistance 2000;
sleep 5;
[] execVM "fn_simpleApocalypseEnvironment.sqf";
[] execVM "fn_simpleCivilianPresence.sqf";
[] execVM "fn_loot.sqf";