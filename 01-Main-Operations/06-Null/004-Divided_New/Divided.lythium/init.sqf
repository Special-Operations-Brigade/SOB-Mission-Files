if ((!isServer) && (player != player)) then {waitUntil {player == player};};

// Server-side initialization
if (isServer) then {
	[] execVM "fn_simpleCivilianPresence.sqf";
};