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

	comment "Set Weather";
	3 setFog 0.1;
	1e10 setFog 0.1;
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

	comment "Road debris classnames";
	_allWrecks = [];
	_allUsedRoads = [];
	_wreckClassNames = 
	[
		"3AS_AAT_destroy_static",
		"3AS_AAT_wreck_static",
		"Land_Wreck_Car_F",
		"Land_Wreck_Car_F",
		"Land_Wreck_Car2_F",
		"Land_Wreck_Car2_F",
		"Land_Wreck_Car3_F",
		"Land_Wreck_Car3_F",
		"3AS_BoxBarricade5",
		"3AS_GAT_wreck_static",
		"3AS_GAT_Light_wreck_static",
		"Land_Wreck_HMMWV_F",
		"Land_Wreck_Hunter_F",
		"Land_Wreck_Hunter_F",
		"Land_Wreck_Offroad_F",
		"Land_Wreck_Offroad_F",
		"Land_Wreck_Offroad2_F",
		"Land_Wreck_Skodovka_F",
		"3AS_LAAT_Mk1_StaticWreck",
		"3AS_LAAT_Mk2_StaticWreck",
		"3AS_RTT_destroy_static",
		"BloodPool_01_Large_New_F",
		"3AS_Saber_01_destroy_Static",
		"3AS_BARCSidecar_destroyed_static",
		"Land_Wreck_Truck_dropside_F",
		"Land_Wreck_Truck_F",
		"Land_Wreck_Truck_F",
		"Land_Wreck_UAZ_F",
		"Land_Wreck_Ural_F",
		"Land_Wreck_Ural_F",
		"Land_Wreck_Van_F",
		"3AS_Jug_destroy_static",
		"3AS_Deka_Wreck"
	];
	
	_classNames = 
	[
		"CraterLong",
		"CraterLong_small",
		"Land_Barricade_01_10m_F",
		"3AS_BoxBarricade3",
		"CraterLong_02_F",
		"CraterLong_02_small_F",
		"Land_A_Villa_ruins_EP1",
		"Land_Sara_zluty_statek_ruins",
		"Land_Cargo40_china_color_V1_ruins_F",
		"Land_Cargo40_military_ruins_F",
		"3AS_Debris6_Prop",
		"3AS_Debris2_Prop",
		"Land_Cargo20_military_ruins_F",
		"Land_Cargo20_china_color_V2_ruins_F",
		"Crater",
		"Dirthump_1_F",
		"Land_DomeDebris_01_struts_large_green_F",
		"Land_DomeDebris_01_hex_damaged_green_F",
		"Land_DomeDebris_01_struts_small_green_F",
		"Land_Fortress_01_bricks_v1_F",
		"Land_Fortress_01_bricks_v2_F",
		"Land_FuelStation_03_roof_ruins_F",
		"Land_FuelStation_03_roof_ruins_F",
		"Land_Shed_07_ruins_F",
		"SpaceshipCapsule_01_debris_F",
		"CargoPlaftorm_01_rusty_ruins_F",
		"Land_ShellCrater_02_debris_F",
		"Land_ShellCrater_02_extralarge_F",
		"Land_ShellCrater_02_large_F",
		"Land_ShellCrater_02_small_F",
		"Land_ShellCrater_01_F",
		"Land_WaterTower_01_ruins_F",
		"Land_House_2W05_ruins_F",
		"Land_Shed_10_ruins_F",
		"Land_Shed_09_ruins_F",
		"Land_WoodenShelter_01_ruins_F",
		"Land_Turret_01_ruins_F",
		"Land_Camp_House_01_brown_ruins_F",
		"Land_BasaltKerb_01_pile_F",
		"3AS_Junk_Pile",
		"3AS_Debris9_Prop",
		"3AS_Junk_Pile_1",
		"3AS_ADSD_wreck_static"
	];
	{
		comment "spawn wrecks on roads all over";
		_pos = getPos _x;
		_chance = 4;
		_rdm = round random _chance;
		if(_rdm == _chance) then 
		{			
			_obj = [selectRandom _wreckClassNames, _pos,(round random 360)] call ZSC_fnc_createSimpleObject;
			_obj setVariable ["deleteMe",true];
			_allWrecks pushBack _obj;
			_allUsedRoads pushBack _x;
		};

		comment "Spawn Ruins on random roads";
		_pos = getPos _x;
		_chance = 6;
		_rdm = round random _chance;
		if(_rdm == _chance) then 
		{	
			if(_x in _allUsedRoads) exitWith {};
			_obj = [selectRandom _classNames, _pos,(round random 360)] call ZSC_fnc_createSimpleObject;
			_obj setVariable ["deleteMe",true];
		};
	} forEach ([worldSize/2, worldSize/2,0] nearRoads worldSize);

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