//THIS GOES INTO THE INIT.SQF FILE

if ((!isServer) && (player != player)) then {waitUntil {player == player};};

// Debug message to confirm init.sqf is running
systemChat "init.sqf is executing...";

// Server-side initialization
if (isServer) then {
	systemChat "Server-side initialization starting...";
	[] execVM "fn_MusicBox.sqf";
	systemChat "Server-side scripts started.";
};
