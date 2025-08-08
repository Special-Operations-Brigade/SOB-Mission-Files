comment "Zombie Scenario by: Capt. Chris";
comment "Description:
Generates random smoke and forest fire across any map.
Also includes music and a screen color filter.
";

comment "Code to be executed on all clients and JIP";
[[],{
	if(!hasInterface) exitWith {};
	if !(isNil "ZombieScenarioRunning") exitWith {};
	if (isMultiplayer) then {waitUntil {sleep 0.1; getClientState == "BRIEFING READ"};};
	waitUntil {alive player};

	ZombieScenarioRunning = true;

	0 setOvercast 0.65;
	0 setRain 0;
	1e10 setRain 0;

	comment "Set color filter - INTENSE ORANGE GEONOSIS - Much more orange!";
	
	comment "Create intense orange post-processing effects";
	private _colorCorrections = true;
	
	if (_colorCorrections) then {
		"colorCorrections" ppEffectEnable true;
		"colorCorrections" ppEffectAdjust [2, 30, 0, [0, 0, 0, 0], [2.3, 0.9, 0, 0.7], [1.0, 0.6, 0.2, 0]];
		"colorCorrections" ppEffectCommit 0;

		"colorCorrections" ppEffectAdjust [0.7, 1.5, -0.001, [0, 0, 0, 0], [2.3, 0.9, 0, 0.7], [1.0, 0.6, 0.2, 0]];
		"colorCorrections" ppEffectCommit 12;

		"filmGrain" ppEffectEnable true;
		"filmGrain" ppEffectAdjust [0.02, 1, 1, 0.1, 1, false];
		"filmGrain" ppEffectCommit 5;
		
		comment "Add war-torn visual effects";
		"chromAberration" ppEffectEnable true;
		"chromAberration" ppEffectAdjust [0.005, 0.005, true];
		"chromAberration" ppEffectCommit 0;
		
		comment "Add subtle screen distortion for heat haze effect";
		"WetDistortion" ppEffectEnable true;
		"WetDistortion" ppEffectAdjust [1, 1, 1, 1, 1, 1, 1, 1.003, 1.003, 0.1, 0.1, 0, 0, 0, 0];
		"WetDistortion" ppEffectCommit 0;
	};
	
	comment "Disable peaceful ambient sounds (birds, etc.) for war atmosphere";
	enableRadio false;  comment "Disable radio chatter";
	enableSentences false;  comment "Disable AI chatter";
	
	comment "Force disable ambient environment sounds";
	[] spawn {
		while {alive player} do {
			enableEnvironment [false, false];  comment "Continuously disable environment";
			sleep 5;
		};
	};
	
	comment "Add atmospheric dust particles";
	[] spawn {
		while {alive player} do {
			_dustPos = player getPos [random 50, random 360];
			_dust = "#particlesource" createVehicleLocal _dustPos;
			_dust setParticleClass "DustCloudBig";
			_dust setDropInterval 0.1;
			sleep (30 + random 30);
			deleteVehicle _dust;
		};
	};
	
	waitUntil {!isNil "AllZombieScenarioTerrainLights"};
	comment "turn off terrain lights";
	{
		_x setHit ["light_1_hitpoint", 0.97];
		_x setHit ["light_2_hitpoint", 0.97];
		_x setHit ["light_3_hitpoint", 0.97];
		_x setHit ["light_4_hitpoint", 0.97];
	} forEach AllZombieScenarioTerrainLights;
	
	waitUntil {!isNil "AllZombieScenarioFireLights"};
	{
		_x setLightBrightness 5;
		_x setLightAmbient [0.75, 0.25, 0.1];
		_x setLightColor [0.75, 0.25, 0.1];
	} foreach AllZombieScenarioFireLights;

	[] spawn 
	{
		AllowZombieScenarioAmbientSounds = true;
		
		comment "Start constant war ambience";
		_warAmbienceLoop = [] spawn {
			while {AllowZombieScenarioAmbientSounds} do {
				comment "Play distant battle sounds continuously - using reliable sound paths";
				_warSounds = [
					["a3\sounds_f\weapons\explosions\explosion_medium_01.wss", 0.2, 0.9],
					["a3\sounds_f\weapons\explosions\explosion_medium_02.wss", 0.2, 0.9],
					["a3\sounds_f\weapons\explosions\explosion_medium_03.wss", 0.2, 0.9],
					["a3\sounds_f\weapons\explosions\explosion_small_01.wss", 0.3, 1.1],
					["a3\sounds_f\weapons\explosions\explosion_small_02.wss", 0.3, 1.1],
					["a3\sounds_f\weapons\explosions\explosion_small_03.wss", 0.3, 1.1]
				];
				
				_randomSound = selectRandom _warSounds;
				_soundPath = _randomSound select 0;
				_volume = _randomSound select 1;
				_pitch = _randomSound select 2;
				_distance = random [800, 1200, 1800];
				_direction = random 360;
				_soundPos = player getPos [_distance, _direction];
				
				comment "Debug: Log sound being played";
				diag_log format ["Geonosis War Ambience: Playing %1 at distance %2", _soundPath, _distance];
				
				playSound3D [_soundPath, player, false, _soundPos, _volume, _pitch, _distance];
				sleep random [20, 35, 50];
			};
		};
		
		comment "Add occasional distant explosions";
		while {AllowZombieScenarioAmbientSounds} do 
		{
			sleep random [60, 90, 120];
			comment "Play big explosions with screen shake";
			_explosionSounds = [
				["a3\sounds_f\weapons\explosions\explosion_large_01.wss", 0.15, 0.8],
				["a3\sounds_f\weapons\explosions\explosion_large_02.wss", 0.15, 0.8],
				["a3\sounds_f\weapons\explosions\explosion_large_03.wss", 0.15, 0.8],
				["a3\sounds_f\weapons\explosions\explosion_large_04.wss", 0.15, 0.8]
			];

			_rdmPos = player getPos [random [1000, 1500, 2000], random 360];
			_sound = selectRandom _explosionSounds;
			_path = _sound select 0;
			_volume = _sound select 1;
			_pitch = _sound select 2;
			
			comment "Debug: Log explosion being played";
			diag_log format ["Geonosis War Ambience: Big explosion %1", _path];
			
			playSound3D [_path, player, false, _rdmPos, _volume, _pitch, 1500];
			
			comment "Add screen shake for distant explosions";
			addCamShake [0.3, 3, 20];
		};
	};
}] remoteExec ["Spawn",0,"zombieScenario"];

comment "Code to be executed on the server-side";
[[],{

	diag_log "Geonosis Environment: Server-side script started!";
	if (isMultiplayer) then {waitUntil {sleep 0.1; getClientState == "BRIEFING READ"};};
	if !(isNil "ZombieScenarioRunningServer") exitWith {diag_log "Geonosis Environment: Server script already running, exiting";};
	ZombieScenarioRunningServer = true;
	diag_log "Geonosis Environment: Server script initialized";

	comment "Combine default tracks with custom tracks from init.sqf";
	allZombieMusicTracks = 
	[
		"MTI_Track2",
		"EventTrack01b_F_Tacops",
		"Music_Russian_Theme",
		"TKE_OST_BattleforMars",
		"OPTRE_Music_Firefight",
		"OPTRE_Music_DesperateMeasures",
		"OPTRE_Music_Helljumpers",
		"LeadTrack03a_F_EPB"
	];
	comment "Radio tracks that can play alongside music";
	allGeonosisRadioTracks = 
	[
		"RadioAmbient1",
		"RadioAmbient2", 
		"RadioAmbient3",
		"RadioAmbient4",
		"RadioAmbient5",
		"RadioAmbient6",
		"RadioAmbient7",
		"RadioAmbient8",
		"RadioAmbient9",
		"RadioAmbient10",
		"RadioAmbient11"
	];

	comment "Music playlist";
	currentTrackNumber = round random (count allZombieMusicTracks - 1);

	comment "Add music event";
	_ehID = addMusicEventHandler ["MusicStop", 
	{
		[] spawn {
			currentTrackNumber = (currentTrackNumber + 1);
			if(currentTrackNumber >= (count allZombieMusicTracks)) then {currentTrackNumber = 0;};
			sleep random 90;
			[allZombieMusicTracks select currentTrackNumber] remoteExec ["playMusic",0];
		};
	}];

	comment "Radio track system - plays independently alongside music";
	[] spawn {
		while {true} do {
			sleep (180 + random 300); comment "Every 3-8 minutes";
			
			comment "25% chance to play a radio track";
			if (random 100 < 25) then {
				_radioTrack = selectRandom allGeonosisRadioTracks;
				
				comment "Play radio track as sound (not music) so it overlays";
				[[_radioTrack], {
					params ["_track"];
					playSound _track;
					diag_log format ["Geonosis Radio: Playing %1", _track];
				}] remoteExec ["spawn", 0];
				
				comment "Wait for radio track to finish before next possible radio";
				sleep (120 + random 180); comment "Additional 2-5 minute delay";
			};
		};
	};

	comment "Play player get up animation and effects";
	[[],{

	comment "Play first track and animation without video intro";
	private _playIntro = {
		if (vehicle player isEqualTo player) then {
			comment "Play first track";
			if (isServer) then {["MTI_Track1"] remoteExec ["playMusic",0];};
			// [player,"Acts_Executioner_1"] remoteExec ["switchMove",0];
			player switchCamera "INTERNAL";
		};
	};
	[] spawn _playIntro;
	}] remoteExec ["Spawn",0];

	comment "Set Weather";
	3 setFog 0.4;
	1e10 setFog 0.4;
	0 setOvercast 0.65;
	0 setRain 0;
	1e10 setRain 0;
	forceWeatherChange;

	AllZombieScenarioFireLights = [];

	comment "terrain houses add smoke, damage, etc.";
	{
		comment "Add Smoke";
		_pos = getPos _x;
		_chance = 65;
		_rdm = round random _chance;
		if((_rdm == _chance) && !(isObjectHidden _x)) then
		{
			_smokeNfire = createVehicle ["test_EmptyObjectForFireBig",_pos,[],0,"CAN_COLLIDE"]; 
			_light = createVehicle ["#lightpoint",_pos,[],0,"CAN_COLLIDE"];
			AllZombieScenarioFireLights pushBack _light;
		};

		comment "Set damage";
		if !(isObjectHidden _x) then {_x setDamage 0.5;};
	}
	forEach nearestTerrainObjects 
	[
		[worldSize/2, worldSize/2], 
		["House"],
		worldSize, 
		false
	];

	comment "random smoke/fire across the map for trees";
	{
		_pos = getPosWorld _x;
		_chance = 750;
		_rdm = round random _chance;
		if(_rdm == _chance) then 
		{
			_marker = createMarkerLocal ["marker_"+str((count allMapMarkers)+1),_pos];
			_source01 = createVehicle ["#particlesource",getMarkerPos _marker,[],0,"CAN_COLLIDE"]; 
			_source01 setParticleClass "ObjectDestructionFire1Smallx";

			_light = createVehicle ["#lightpoint",getMarkerPos _marker,[],0,"CAN_COLLIDE"];
			AllZombieScenarioFireLights pushBack _light;
		};
	}
	forEach nearestTerrainObjects 
	[
		[worldSize/2, worldSize/2], 
		["Tree"],
		worldSize, 
		false
	];

	ZSC_fnc_createSimpleObject = {
		params["_className","_position","_direction"];
		_info = [_className] call BIS_fnc_simpleObjectData;
		_path = (_info select 1);
		_obj = _className createVehicleLocal (_position);
		_obj setDir (_direction);
		_pos = getPosWorld _obj;
		_vectorDirUp = [vectorDir _obj, vectorUp _obj];
		deleteVehicle _obj;
		_simpleObj = createSimpleObject [_path, _pos];
		_simpleObj setVectorDirAndUp _vectorDirUp;
		_simpleObj
	};

	comment "Initialize wreck arrays for fire effects";
	_allWrecks = [];

	comment "spawn helicopter wrecks on all helipads";
	_classNames = 
	[
		"3AS_LAAT_Mk1_StaticWreck",
		"ls_vehicle_hmp_wreck",
		"ls_vehicle_laati_wreck",
		"3AS_Nu_Base_Destoryed_F"
	];

	{
		_pos = getPos _x;
		_obj = [selectRandom _classNames, _pos,(round random 360)] call ZSC_fnc_createSimpleObject;
		_obj setVariable ["deleteMe",true];
		_allWrecks pushBack _obj;
	} forEach ([0,0,0] nearobjects ["HeliH",worldsize * 10]);

	comment "set random wrecks on fire";
	{
		_pos = getPosWorld _x;
		_chance = 4;
		_rdm = round random _chance;
		if(_rdm == _chance) then 
		{			
			_marker = createMarkerLocal ["marker_"+str((count allMapMarkers)+1),_pos];
			_source01 = createVehicle ["#particlesource",getMarkerPos _marker,[],0,"CAN_COLLIDE"]; 
			_source01 setParticleClass "ObjectDestructionFire1Smallx";

			_light = createVehicle ["#lightpoint",getMarkerPos _marker,[],0,"CAN_COLLIDE"];
			AllZombieScenarioFireLights pushBack _light;
		};
	} foreach _allWrecks;

	comment "Find all Terrain Lights";
	AllZombieScenarioTerrainLights = nearestObjects [[worldSize/2, worldSize/2,0],[
		"Lamps_base_F",
		"PowerLines_base_F",
		"PowerLines_Small_base_F"
	], worldSize];

	publicVariable "AllZombieScenarioTerrainLights";
	publicVariable "AllZombieScenarioFireLights";
}] remoteExec ["Spawn",2];

comment "

ZombieScenarioRunning = nil;
ZombieScenarioRunningServer = nil;

";