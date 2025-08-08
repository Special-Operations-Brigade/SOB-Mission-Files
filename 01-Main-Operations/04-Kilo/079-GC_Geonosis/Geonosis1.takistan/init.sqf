//THIS GOES INTO THE INIT.SQF FILE

if ((!isServer) && (player != player)) then {waitUntil {player == player};};

[] execVM "fn_simpleApocalypseEnvironment.sqf";
// [] execVM "missionOpening.sqf";

// Test if player has interface before running objective system
if (hasInterface) then {
    [] execVM "fn_geonosisComms.sqf";
};