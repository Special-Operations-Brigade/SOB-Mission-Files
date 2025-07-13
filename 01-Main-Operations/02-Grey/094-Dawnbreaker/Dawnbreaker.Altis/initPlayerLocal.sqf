// This file runs for every player when they join the mission (including JIP)
if (vehicle player isEqualTo player) then {
    [1, "BLACK", 30, 1] spawn BIS_fnc_fadeEffect;
    ["intro.ogv"] spawn BIS_fnc_playVideo;
    sleep 25;
    // Play first track (only one client should trigger this, so use isServer)
    if (isServer) then { ["Music_Arrival"] remoteExec ["playMusic",0]; };
    [player,"acts_unconsciousStandUp_part1"] remoteExec ["switchMove",0];
    player switchCamera "INTERNAL";
};
