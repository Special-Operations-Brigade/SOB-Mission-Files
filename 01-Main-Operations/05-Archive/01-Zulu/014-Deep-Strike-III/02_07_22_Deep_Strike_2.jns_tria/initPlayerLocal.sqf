params ["_player", "_didJIP"];

["arca_mission_timerStart",{
	if ([] call arca_admin_messages_fnc_isAdminOrZeus) then {
		[3600] call arca_common_fnc_showCountdown;
	};
	["TaskSucceeded", ["", "Antennas activated!"]] call BIS_fnc_showNotification;
}] call CBA_fnc_addEventHandler;

["arca_mission_timerFailed",{
	["TaskFailed", ["", "Antennas destroyed!"]] call BIS_fnc_showNotification;
}] call CBA_fnc_addEventHandler;

["arca_mission_timerSucceeded",{
	["TaskSucceeded", ["", "Location revealed!"]] call BIS_fnc_showNotification;
}] call CBA_fnc_addEventHandler;
