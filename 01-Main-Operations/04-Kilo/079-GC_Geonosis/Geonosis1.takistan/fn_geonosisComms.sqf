comment "Geonosis Objective Zone System";
comment "Description: 
Creates objective zones with progress bars and Acclamator spawning
Includes trigger-based capture system with visual feedback
";

comment "Initialize objective system";
comment "Server handles logic, clients handle UI";

comment "Global variables for objective control";
GeonosisObjectivesActive = true;
GeonosisObjectiveProgress = [];
GeonosisCompletedObjectives = [];

comment "Sync variables across network";
if (isServer) then {
    publicVariable "GeonosisObjectivesActive";
    publicVariable "GeonosisObjectiveProgress";
    publicVariable "GeonosisCompletedObjectives";
};

comment "Objective zone configuration";
comment "Format: [position, radius, name, description, required_time, acclamator_spawn_pos]";
GeonosisObjectiveZones = [
    [[2000, 2000, 0], 50, "Aurek", "Secure Landing Zone Aurek", 180, [2100, 2100, 200]],
    [[3000, 3000, 0], 75, "Besh", "Secure Landing Zone Besh", 240, [3200, 3200, 250]],
    [[4000, 1500, 0], 60, "Cresh", "Secure Landing Zone Cresh", 200, [4300, 1600, 180]]
];

comment "Progress bar functions - Client side only";
Geonosis_fnc_showProgressBar = {
    if (!hasInterface) exitWith {}; // Only show on clients with interface
    params ["_objectiveName", "_progress"];
    
    private _progressPercent = (_progress * 100) min 100;
    private _barLength = 20;
    private _filledBars = round (_progressPercent / 100 * _barLength);
    private _emptyBars = _barLength - _filledBars;
    
    private _progressBar = "";
    for "_i" from 1 to _filledBars do { _progressBar = _progressBar + "█"; };
    for "_i" from 1 to _emptyBars do { _progressBar = _progressBar + "░"; };
    
    private _color = switch (true) do {
        case (_progressPercent >= 100): { "#00FF00" }; // Green when complete
        case (_progressPercent >= 75): { "#FFFF00" }; // Yellow when close
        case (_progressPercent >= 50): { "#FFA500" }; // Orange when halfway
        default { "#FF6600" }; // Red when starting
    };
    
    [
        format [
            "<t color='%1' size='1.1' font='PuristaMedium'>Landing Zone %2</t><br/><t color='#FFFFFF' size='0.9'>%3</t><br/><t color='%1' size='1.2'>%4</t>", 
            _color, 
            _objectiveName, 
            _progressBar,
            format ["%1%%", round _progressPercent]
        ],
        0.7, 0.1, 5, 0, 0, 1000
    ] spawn BIS_fnc_dynamicText;
};

comment "Objective completion notification function";
Geonosis_fnc_objectiveCompleted = {
    params ["_objectiveName"];
    
    comment "Screen shake for all players";
    [[], {
        addCamShake [3, 10, 25];
        playSound "a3\sounds_f\weapons\explosions\explosion_large_01.wss";
    }] remoteExec ["spawn", 0];
    
    comment "Announcement";
    [
        format ["<t color='#00FF00' size='1.4' font='PuristaBold'>OBJECTIVE %1 COMPLETE!</t><br/><t color='#FFFFFF' size='1.1'>Objective secured - Acclamator inbound!</t>", _objectiveName],
        0, 0, 8, 2, 0, 2000
    ] spawn BIS_fnc_dynamicText;
};

comment "Objective zone creation function - Server side";
Geonosis_fnc_createObjectiveZone = {
    if (!isServer) exitWith {}; // Only run on server
    params ["_zoneData"];
    _zoneData params ["_position", "_radius", "_name", "_description", "_requiredTime", "_acclamatorPos"];
    
    comment "Initialize progress tracking on server";
    GeonosisObjectiveProgress pushBack [_name, 0, 0, false]; // [name, progress, startTime, active]
    publicVariable "GeonosisObjectiveProgress";
    
    comment "Create trigger for the zone";
    private _trigger = createTrigger ["EmptyDetector", _position];
    _trigger setTriggerArea [_radius, _radius, 0, false];
    _trigger setTriggerActivation ["WEST", "PRESENT", false];
    _trigger setTriggerStatements [
        "this && {alive _x && side _x == west} count thisList > 0",
        format ["['%1', '%2', %3, %4] call Geonosis_fnc_objectiveActivated;", _name, _description, _requiredTime, _acclamatorPos],
        format ["['%1'] call Geonosis_fnc_objectiveDeactivated;", _name]
    ];
    
    comment "Store trigger reference";
    _trigger setVariable ["objectiveName", _name];
    _trigger setVariable ["objectiveData", _zoneData];
    
    comment "Create global marker visible to all clients";
    private _marker = createMarker [format ["objective_%1", _name], _position];
    _marker setMarkerShape "ELLIPSE";
    _marker setMarkerSize [_radius, _radius];
    _marker setMarkerColor "ColorRed";
    _marker setMarkerBrush "Border";
    _marker setMarkerText format ["OBJ %1: %2", _name, _description];
    
    _trigger
};

comment "Objective activation handler";
Geonosis_fnc_objectiveActivated = {
    params ["_name", "_description", "_requiredTime", "_acclamatorPos"];
    
    comment "Find objective in progress array";
    private _objIndex = -1;
    {
        if ((_x select 0) == _name) exitWith { _objIndex = _forEachIndex; };
    } forEach GeonosisObjectiveProgress;
    
    if (_objIndex == -1) exitWith {};
    
    comment "Check if already completed";
    if (_name in GeonosisCompletedObjectives) exitWith {};
    
    comment "Start/continue progress";
    private _objData = GeonosisObjectiveProgress select _objIndex;
    _objData set [2, time]; // Set start time
    _objData set [3, true]; // Set active
    
    comment "Start progress loop";
    [_name, _description, _requiredTime, _acclamatorPos, _objIndex] spawn {
        params ["_name", "_description", "_requiredTime", "_acclamatorPos", "_objIndex"];
        
        while {
            private _objData = GeonosisObjectiveProgress select _objIndex;
            (_objData select 3) && // Still active
            !((_objData select 0) in GeonosisCompletedObjectives) && // Not completed
            GeonosisObjectivesActive // System active
        } do {
            private _objData = GeonosisObjectiveProgress select _objIndex;
            private _currentTime = time;
            private _startTime = _objData select 2;
            private _elapsed = _currentTime - _startTime;
            private _progress = (_elapsed / _requiredTime) min 1.0;
            
            comment "Update progress";
            _objData set [1, _progress];
            
            comment "Show progress bar";
            [_name, _progress] call Geonosis_fnc_showProgressBar;
            
            comment "Check if complete";
            if (_progress >= 1.0) exitWith {
                comment "Mark as completed";
                GeonosisCompletedObjectives pushBack _name;
                
                comment "Update marker to green";
                private _marker = format ["objective_%1", _name];
                _marker setMarkerColor "ColorGreen";
                
                comment "Notify objective completion";
                [_name] call Geonosis_fnc_objectiveCompleted;
                
                comment "Clear progress bar";
                (format ["<t color='#00FF00' size='1.2'>OBJECTIVE %1 SECURED!</t>", _name]) spawn {
                    [_this, 0.7, 0.1, 3, 0, 0, 1000] spawn BIS_fnc_dynamicText;
                };
            };
            
            sleep 1;
        };
    };
};

comment "Objective deactivation handler";
Geonosis_fnc_objectiveDeactivated = {
    params ["_name"];
    
    comment "Find and deactivate objective";
    {
        if ((_x select 0) == _name) exitWith {
            _x set [3, false]; // Set inactive
            comment "Clear progress bar";
            cutText ["", "PLAIN"];
        };
    } forEach GeonosisObjectiveProgress;
};

comment "Initialize all objective zones";
[] spawn {
    sleep 5; // Wait for mission to fully load
    
    {
        [_x] call Geonosis_fnc_createObjectiveZone;
        sleep 0.5;
    } forEach GeonosisObjectiveZones;
    
    comment "Announce objective system ready";
    [
        "<t color='#00CCFF' size='1.2' font='PuristaMedium'>GEONOSIS</t><br/><t color='#FFFFFF'>Day one</t>",
        0, 0, 6, 0, 0, 3000
    ] spawn BIS_fnc_dynamicText;
    
    diag_log format ["Geonosis Objectives: %1 objective zones created", count GeonosisObjectiveZones];
};

comment "Zeus helper functions";
Zeus_fnc_completeObjective = {
    params ["_objectiveName"];
    if !(_objectiveName in GeonosisCompletedObjectives) then {
        GeonosisCompletedObjectives pushBack _objectiveName;
        [_objectiveName] call Geonosis_fnc_objectiveCompleted;
    };
};

Zeus_fnc_resetObjectives = {
    GeonosisCompletedObjectives = [];
    GeonosisObjectiveProgress = [];
    // Recreate all zones
    [] spawn {
        {
            [_x] call Geonosis_fnc_createObjectiveZone;
        } forEach GeonosisObjectiveZones;
    };
};

comment "Manual trigger functions for editor-placed triggers";
Geonosis_fnc_manualObjectiveActivated = {
    params ["_name", "_description", "_requiredTime", "_acclamatorPos"];
    
    comment "Initialize progress tracking if not exists";
    private _objIndex = -1;
    {
        if ((_x select 0) == _name) exitWith { _objIndex = _forEachIndex; };
    } forEach GeonosisObjectiveProgress;
    
    if (_objIndex == -1) then {
        GeonosisObjectiveProgress pushBack [_name, 0, 0, false];
        _objIndex = (count GeonosisObjectiveProgress) - 1;
    };
    
    comment "Check if already completed";
    if (_name in GeonosisCompletedObjectives) exitWith {};
    
    comment "Start/continue progress";
    private _objData = GeonosisObjectiveProgress select _objIndex;
    _objData set [2, time]; // Set start time
    _objData set [3, true]; // Set active
    
    comment "Start progress loop";
    [_name, _description, _requiredTime, _acclamatorPos, _objIndex] spawn {
        params ["_name", "_description", "_requiredTime", "_acclamatorPos", "_objIndex"];
        
        while {
            private _objData = GeonosisObjectiveProgress select _objIndex;
            (_objData select 3) && // Still active
            !((_objData select 0) in GeonosisCompletedObjectives) && // Not completed
            GeonosisObjectivesActive // System active
        } do {
            private _objData = GeonosisObjectiveProgress select _objIndex;
            private _currentTime = time;
            private _startTime = _objData select 2;
            private _elapsed = _currentTime - _startTime;
            private _progress = (_elapsed / _requiredTime) min 1.0;
            
            comment "Update progress";
            _objData set [1, _progress];
            
            comment "Show progress bar";
            [_name, _progress] call Geonosis_fnc_showProgressBar;
            
            comment "Check if complete";
            if (_progress >= 1.0) exitWith {
                comment "Mark as completed";
                GeonosisCompletedObjectives pushBack _name;
                
                comment "Notify objective completion";
                [_name] call Geonosis_fnc_objectiveCompleted;
                
                comment "Clear progress bar";
                (format ["<t color='#00FF00' size='1.2'>OBJECTIVE %1 SECURED!</t>", _name]) spawn {
                    [_this, 0.7, 0.1, 3, 0, 0, 1000] spawn BIS_fnc_dynamicText;
                };
            };
            
            sleep 1;
        };
    };
};

Geonosis_fnc_manualObjectiveDeactivated = {
    params ["_name"];
    
    comment "Find and deactivate objective";
    {
        if ((_x select 0) == _name) exitWith {
            _x set [3, false]; // Set inactive
            comment "Clear progress bar";
            cutText ["", "PLAIN"];
        };
    } forEach GeonosisObjectiveProgress;
};

comment "Cleanup on mission end";
addMissionEventHandler ["Ended", {
    GeonosisObjectivesActive = false;
}];
