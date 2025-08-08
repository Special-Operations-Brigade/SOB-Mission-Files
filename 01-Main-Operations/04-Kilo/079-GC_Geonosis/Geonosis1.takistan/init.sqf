//THIS GOES INTO THE INIT.SQF FILE

if ((!isServer) && (player != player)) then {waitUntil {player == player};};

[] execVM "fn_simpleApocalypseEnvironment.sqf";

// Mission opening runs for all players with interface
if (hasInterface) then {
    [] execVM "missionOpening.sqf";
};

// Test if player has interface before running objective system
if (hasInterface) then {
    [] execVM "fn_geonosisComms.sqf";
};