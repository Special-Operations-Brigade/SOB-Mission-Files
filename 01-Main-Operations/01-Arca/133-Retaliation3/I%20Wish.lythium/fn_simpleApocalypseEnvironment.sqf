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

	comment "Set color filter";
	"colorCorrections" ppEffectEnable true;
	"colorCorrections" ppEffectAdjust [1, 1.1, 0.0, [0.0, 0.0, 0.0, 0.0], [1.0,0.7, 0.6, 0.60], [0.200, 0.600, 0.100, 0.0]];
	"colorCorrections" ppEffectCommit 0;

	comment "visual settings";
	setViewDistance 2000;
	setObjectViewDistance 1000;
	setTerrainGrid 25;

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
		while {AllowZombieScenarioAmbientSounds} do 
		{
			sleep random [90,180,270];
			if !(isNil "isZombieSystemAllowed") then 
			{
				_sounds =
				[
					["a3\sounds_f_enoch\Assets\Environment\SpotFx\Fauna\Animals\Deer_Call_11.wss",0.1,4],
					["a3\sounds_f_enoch\Assets\Environment\SpotFx\Fauna\Animals\Deer_Call_01.wss",0.1,4],
					["a3\sounds_f_enoch\Assets\Environment\SpotFx\Fauna\Animals\Deer_Call_03.wss",0.1,4],
					["a3\sounds_f_enoch\Assets\Environment\SpotFx\Fauna\Animals\Deer_Call_04.wss",0.1,4],
					["a3\sounds_f_enoch\Assets\Environment\SpotFx\Fauna\Animals\Deer_Call_05.wss",0.1,4],
					["a3\sounds_f_enoch\Assets\Environment\SpotFx\Fauna\Animals\Deer_Call_06.wss",0.1,4],
					["a3\sounds_f_enoch\Assets\Environment\SpotFx\Fauna\Animals\Deer_Call_11.wss",0.1,4],
					["a3\sounds_f_enoch\Assets\Environment\SpotFx\Fauna\Animals\Deer_Call_01.wss",0.1,4],
					["a3\sounds_f_enoch\Assets\Environment\SpotFx\Fauna\Animals\Deer_Call_03.wss",0.1,4],
					["a3\sounds_f_enoch\Assets\Environment\SpotFx\Fauna\Animals\Deer_Call_04.wss",0.1,4],
					["a3\sounds_f_enoch\Assets\Environment\SpotFx\Fauna\Animals\Wolves_01.wss",0.1,5],
					["a3\sounds_f_enoch\Assets\Environment\SpotFx\Fauna\Animals\Wolves_02.wss",0.1,5],
					["a3\sounds_f_enoch\Assets\Environment\SpotFx\Fauna\Animals\Wolves_03.wss",0.1,5],
					["a3\sounds_f_enoch\Assets\Environment\SpotFx\Fauna\Animals\Wolves_04.wss",0.1,5],
					["a3\sounds_f_enoch\Assets\Environment\SpotFx\Fauna\Animals\Wolves_05.wss",0.1,5],
					["a3\sounds_f_enoch\Assets\Environment\SpotFx\Fauna\Animals\Wolves_06.wss",0.1,5]
				];

				_rdmPos = player getPos [random [100,150,200], random 360];
				_sound = (selectRandom _sounds);
				_path = _sound select 0;
				_pitch = _sound select 1;
				_volume = _sound select 2;
				playSound3D [_path, player,false,_rdmPos,_volume,_pitch,0];
			};
		};
	};
}] remoteExec ["Spawn",0,"zombieScenario"];

comment "Code to be executed on the server-side";
[[],{

	if (isMultiplayer) then {waitUntil {sleep 0.1; getClientState == "BRIEFING READ"};};
	if !(isNil "ZombieScenarioRunningServer") exitWith {};
	ZombieScenarioRunningServer = true;

	allZombieMusicTracks = 
	[
		"Track_C_02",
		"AmbientTrack02b_F_Tacops",
		"Track_C_09",
		"Wasteland",
		"EventTrack03b_F_Tacops",
		"Track_C_16",
		"SkyNet",
		"EventTrack02b_F_Tacops",
		"Track_C_19",
		"MAD",
		"LeadTrack04_F_Tank",
		"Track_P_15",
		"AmbientTrack01b_F_Tacops",
		"Track_C_04",
		"Music_Probe_Discovered",
		"Track_C_18",
		"Defcon",
		"AmbientTrack03b_F_Tacops",
		"OM_Music02",
		"EventTrack03a_F_Tacops",
		"Fallout",
		"OM_Music01"
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

	comment "Start first track immediately";
	[] spawn {
		sleep 5; // Brief delay to ensure everything is loaded
		[allZombieMusicTracks select currentTrackNumber] remoteExec ["playMusic",0];
	};

	comment "Set Weather";
	3 setFog 0.7;
	1e10 setFog 0.7;
	0 setOvercast 0.65;
	0 setRain 0;
	1e10 setRain 0;
	forceWeatherChange;
	setViewDistance 500;

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

	comment "Road debris classnames";
	_allWrecks = [];
	_allUsedRoads = [];
	
	comment "Road debris and vehicle spawning disabled for better vehicle movement";
	comment "Removed wreck spawning on roads to allow civilian and CIS vehicle patrol";

	comment "spawn helicopter wrecks on all helipads";
	_classNames = 
	[
		"3AS_LAAT_Mk1_StaticWreck",
		"ls_vehicle_hmp_wreck",
		"ls_vehicle_laati_wreck",
		"3AS_Nu_Base_Destoryed_F"
	];

	comment "Helicopter wreck spawning disabled to reduce clutter";
	comment "Removed helicopter wrecks from helipads for cleaner environment";

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