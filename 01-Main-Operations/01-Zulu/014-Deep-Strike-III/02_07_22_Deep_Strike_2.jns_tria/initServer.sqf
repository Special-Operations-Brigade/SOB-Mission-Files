arca_mission_manualCancel = false;
publicVariable "arca_mission_manualCancel";

["arca_mission_timerStart",{
	[
		{
			systemChat format["alive 1: %1 | alive 2: %2 | manual: %3",(alive antenna1),(alive antenna2),arca_mission_manualCancel];
			(!(alive antenna1) || !(alive antenna2) || arca_mission_manualCancel)
		},
		{
			// fail
			["arca_mission_timerFailed",[]] call CBA_fnc_globalEvent;
		},
		[],
		36/*00*/,
		{
			// success
			["arca_mission_timerSucceeded",[]] call CBA_fnc_globalEvent;
		}
	] call CBA_fnc_waitUntilAndExecute;
}] call CBA_fnc_addEventHandler;

["arca_mission_timerFailed",{}] call CBA_fnc_addEventHandler;

["arca_mission_timerSucceeded",{
	"|marker_13|[1281.5662,9663.6484,0.0000]|JLTS_CIS_installation|ICON|[1,1]|0|Solid|Default|1|" call BIS_fnc_stringToMarker;
}] call CBA_fnc_addEventHandler;
