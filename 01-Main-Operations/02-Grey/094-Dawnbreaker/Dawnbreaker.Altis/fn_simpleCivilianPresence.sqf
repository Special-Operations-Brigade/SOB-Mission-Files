[[],{
	if !(isNil "isPopulateWorldAllowed") exitWith {};

	CIVPOP_fnc_startSystem = {
		isPopulateWorldAllowed = true;
		isPedestriansAllowed = true;
		isCivilianGroundVehiclesAllowed = true;
		includeZeus = false;
		addAgentsToInterface = true;
		DeleteDeadTimeDelay = 30;

		allInvalidRoadCache = [];

		comment "Class Name Arrays:";
		allCivilianClassNames = [
			"mti_factions_zombies_unit_Shambler_CIS_IND",
			"mti_factions_zombies_unit_SprintA_GAR_IND",
			"mti_factions_zombies_unit_SprinterA_REBEL_IND",
			"Zombie_G_RA_Civ",
			"Zombie_G_Shambler_Civ",
			"Zombie_G_RA_FIA",
			"Zombie_Special_GREENFOR_Boomer",
			"Zombie_Special_GREENFOR_Leaper_2",
			"Zombie_Special_GREENFOR_Screamer"
		];

		allCivilianVehicleClassNames =[

		];

		allIDAPClassNames = [
			"mti_factions_cishuman_unit_Para_Light",
			"B_G_Survivor_F",
			"O_G_Survivor_F"
		];

		allIDAPVehicleClassNames = [
			"OPTRE_Genet",
			"OPTRE_M12_CIV",
			"MTI_MUTT_I",
			"C_Offroad_01_F",
			"C_Van_01_transport_F",
			"O_G_Van_01_transport_F",
			"OPTRE_M12_FAV_ins",
			"3AS_BarcSideCar_501",
			"B_Truck_01_transport_F",
			"C_Van_01_fuel_F",
			"C_Offroad_01_repair_F",
			"B_G_Quadbike_01_F",
			"mti_factions_rebels_Jeep"
		];

		allBlackListedAirportObjects = [
			"Land_Airport_Tower_F"
		];

		allBlackListedMilitaryBaseObjects = [
			"Land_Dome_Big_F"
		];

		CIVPOP_fnc_startValidSpawnDiscovery = {
			params[["_updateRate",2],["_minDistance",500],["_maxDistance",750],["_debug",false]];

			while {isPopulateWorldAllowed} do 
			{
				comment "Initialize valid spawns";
				[_minDistance,_maxDistance,"validRoadsForPedestrians",_debug] spawn CIVPOP_fnc_updateValidSpawns;
				sleep _updateRate;
			};
		};

		CIVPOP_fnc_spawnAddAgentsToInterfaceLoop = {
			[] spawn {
				while {isPopulateWorldAllowed} do 
				{
					{
						_objects = [];
						{_objects pushBack agent _x;} foreach agents;
						_x addCuratorEditableObjects [_objects+vehicles,true];
					} foreach allCurators;
					sleep 3;
				};
			};
		};

		CIVPOP_fnc_spawnDeleteDeadAgentsLoop = {
			params["_deafultDelay"];
			
			while {isPopulateWorldAllowed} do 
			{
				{
					_agent = _x;
					_isCivPopAgent = _agent getVariable "isCivPopAgent";
					if !(isNil "_isCivPopAgent") then 
					{
						_t = _agent getVariable "deathTime";
						if(isNil "_t") then {_agent setVariable ["deathTime",_deafultDelay];}
						else 
						{
							_agent setVariable ["deathTime",(_t-1)];
							_t = (_t-1);
							if(_t <= 0) then 
							{
								_vehicle = _agent getVariable "ownedVehicle";
								if(!isNil "_vehicle") then 
								{
									_i = crew _vehicle findIf {_x in allPlayers};
									if(_i != -1) exitWith {};
									deleteVehicle _vehicle;
								};
								deleteVehicle _agent;
							};
						};
					};
				} foreach allDeadMen; 
				uisleep 1;
			};
		};

		CIVPOP_fnc_deleteAllAgents = {
			{
				_isCivPopAgent = agent _x getVariable "isCivPopAgent";
				if !(isNil "_isCivPopAgent") then 
				{
					deleteVehicle vehicle agent _x;
					if !(agent _x isEqualTo objNull) then {deleteVehicle agent _x;};
				};
			} foreach agents;
			
			comment "Clear all faction arrays";
			AllCivilianPedestrians = [];
			AllIDAPPedestrians = [];
			AllIDAPVehicleOwners = [];
		};

		CIVPOP_fnc_checkForNearbyBlacklistedObjects = {
			params["_road",["_minDistanceBase",125],["_minDistanceAirport",500]];

			_isValid = true;
			if(_road in allInvalidRoadCache) exitWith {false};
			_terobjs = nearestTerrainObjects [_road,["House"],_minDistanceAirport,false];
			_terobjs = (_terobjs + (_road nearObjects ["Land_LandMark_F", _minDistanceBase]));
			{
				_classname = typeOf _x;
				if (_classname in allBlackListedMilitaryBaseObjects) then 
				{
					_dist = _x distance _road;
					if (_dist < _minDistanceBase) then 
					{
						_isValid = false;
					};
				};
				if(!_isValid) exitWith {allInvalidRoadCache pushBack _road;};

				if (_classname in allBlackListedAirportObjects) then 
				{
					_isValid = false;
				};
				if(!_isValid) exitWith {allInvalidRoadCache pushBack _road;};
			} foreach _terobjs;
			_isValid
		};

		CIVPOP_fnc_getAllPlayers = {
			params[["_includeZeus",false]];
			_return = [];
			_return = if(_includeZeus || (count allPlayers isEqualTo 1)) then {allPlayers}
			else {(allPlayers - (call BIS_fnc_listCuratorPlayers))};
			_return
		};

		CIVPOP_fnc_getVelocityAdjustedPosition = {
			params["_object","_maxDistance","_maxVelocity"];

			_centerPos = getPosATL _object;
			_maxVectorLength = _maxDistance;
			_vectorDir = vectorNormalized(velocity _object);
			_vectorLength = ((vectorMagnitude velocity _object/_maxVelocity) * _maxVectorLength);
			if(_vectorLength > _maxVectorLength) then {_vectorLength = _maxVectorLength;};
			_finalPos = (_centerPos vectorAdd (_vectorDir vectorMultiply _vectorLength));
			_finalPos set[2,_centerPos select 2];
			_finalPos
		};

		CIVPOP_fnc_updateValidSpawns = {
			params[["_minDistance",500],["_maxDistance",1000],["_varName","defaultValidSpawns"],["_debug",false]];
			_vs = [];
			_ivs = [];
			{
					_player = _x;
					_pos = [_player,250,30] call CIVPOP_fnc_getVelocityAdjustedPosition;
					_r = _pos nearRoads _maxDistance;
					{
						if (((_player distance _x) > _minDistance) && !(_x in _ivs)) then 
						{
							_vs pushBackUnique _x;
						};
					} foreach (_r);
					_ivs append (_r - _vs);
					sleep 0.1;
			} foreach ([includeZeus] call CIVPOP_fnc_getAllPlayers);

			comment "DEBUG";
			if(_debug) then 
			{
				{deleteMarker _x;} foreach allMapMarkers;
				{_mkr = createMarker["marker_"+(str count allMapMarkers),getPos _x]; _mkr setMarkerType "mil_dot";} foreach _vs;
			};
			missionNamespace setVariable [_varName,_vs];
		};

		CIVPOP_fnc_moveToNearbyRandomRoad = {
			params ["_unit",["_minDistance",75],["_maxDistance",250],["_rotate",false]];

			_roads = _unit nearRoads _maxDistance;
			_dest = objNull;
			_v = [];

			if(count _roads == 0) exitWith {};
			{
				if ((_unit distance _x) > _minDistance) then {_v pushBack _x;};
			} forEach _roads;

			if(count _v == 0) exitWith {};
			_dest = selectRandom _v;

			_isValid = [_dest] call CIVPOP_fnc_checkForNearbyBlacklistedObjects;
			if(!_isValid) exitwith {};

			if(_rotate) then {vehicle _unit setDir ((getDir _unit)+(_unit getRelDir _dest))};
			_unit moveTo getPosATL _dest;
		};

		comment "FEATURE SPECIFIC FUNCTIONS BELOW";

		CIVPOP_fnc_initPedestrians = {
			params[["_maxUnitCount",30],["_maxRoads",600],["_minTravenDistance",75],["_maxTravelDistance",250],["_deleteDistance",500],["_movementUpdateRate",5],["_updateRate",1],["_debug",false]];

			AllCivilianPedestrians = [];

			[_maxUnitCount,_maxRoads,_minTravenDistance,_maxTravelDistance,_deleteDistance,_updateRate,_debug] spawn {
				params[["_maxUnitCount",30],["_maxRoads",600],["_minTravenDistance",75],["_maxTravelDistance",200],["_deleteDistance",500],["_updateRate",1],["_debug",false]];

				while {isPedestriansAllowed && isPopulateWorldAllowed} do 
				{
					_vs = missionNamespace getVariable "validRoadsForPedestrians";

					comment "Remove null objects from array";
					AllCivilianPedestrians = (AllCivilianPedestrians-[objNull]);

					comment "delete units";
					{
						_min = 1e10;
						_unit = _x;

						_isCivPopAgent = _unit getVariable "isCivPopAgent";
						if (isNil "_isCivPopAgent") then {continue};

						{
							_player = _x;
							_pos = [_player,250,30] call CIVPOP_fnc_getVelocityAdjustedPosition;
							_dist = _pos distance getPosATL _unit;
							if(_dist < _min) then {_min = _dist;};
						} foreach ([includeZeus] call CIVPOP_fnc_getAllPlayers);
						if(_min > (_deleteDistance)) then {deleteVehicle _unit;};
					} foreach (AllCivilianPedestrians+allDeadMen);

					comment "Adjust maximum unit count based on validSpawns and maxRoads ratio";
					_modifiedUnitCount = 1;
					if !(isNil "_vs") then 
					{
						_modifiedUnitCount = (_maxUnitCount * ((count _vs)/_maxRoads));
						if(_modifiedUnitCount > _maxUnitCount) then {_modifiedUnitCount = _maxUnitCount};
					};

					comment "Spawn agent";
					if (count AllCivilianPedestrians < _modifiedUnitCount) then 
					{
						if(isNil "_vs") exitWith {};
						if(count _vs == 0) exitWith {};
						_spawn = selectRandom _vs;
						if(isNil "_spawn") exitWith {};
						if(_spawn isEqualTo objNull) exitWith {};
						_isValid = [_spawn] call CIVPOP_fnc_checkForNearbyBlacklistedObjects;
						if(!_isValid) exitWith {};
						_class = selectRandom allCivilianClassNames;
						_agent = createAgent [_class,getPos _spawn,[],0,"CAN_COLLIDE"];
						_agent disableAI "FSM";
						_agent forceWalk true;
						_agent allowFleeing 0;
						_agent setVariable ["isCivPopAgent",true]; 
						[_agent,_minTravenDistance,_maxTravelDistance] call CIVPOP_fnc_moveToNearbyRandomRoad;
						AllCivilianPedestrians pushBack _agent;

						comment "DEBUG";
						if (_debug) then 
						{
							_mkr = createMarker["DebugMarker_"+str count allMapMarkers,getPos _agent];
							_mkr setMarkerType "mil_box";
							_mkr setMarkerSize [0.5,0.5];
							_mkr setMarkerColor "colorCivilian";
							[_mkr,_agent] spawn {while {isPedestriansAllowed && isPopulateWorldAllowed && alive (_this select 1)} do 
							{sleep 0.1; (_this select 0) setMarkerPos (getPos (_this select 1))}; deleteMarker (_this select 0);};
						};
					};
					sleep _updateRate;
				};
			};

			[_minTravenDistance,_maxTravelDistance,_movementUpdateRate] spawn {
				params ["_minTravenDistance","_maxTravelDistance","_movementUpdateRate"];
				while {isPedestriansAllowed && isPopulateWorldAllowed} do 
				{
					comment "Update Movement";
					_vs = missionNamespace getVariable "validRoadsForPedestrians";
					{
						_minSpeed = 0.125;
						if((vectorMagnitude velocity _x) < _minSpeed) then 
						{
							[_x,_minTravenDistance,_maxTravelDistance] call CIVPOP_fnc_moveToNearbyRandomRoad;
						};
						uiSleep 0.1;
					} foreach  AllCivilianPedestrians;
					sleep _movementUpdateRate;
				};
			};
		};

		CIVPOP_fnc_initIDAPPedestrians = {
			params[["_maxUnitCount",10],["_maxRoads",600],["_minTravenDistance",75],["_maxTravelDistance",250],["_deleteDistance",500],["_movementUpdateRate",5],["_updateRate",1],["_debug",false]];

			AllIDAPPedestrians = [];

			[_maxUnitCount,_maxRoads,_minTravenDistance,_maxTravelDistance,_deleteDistance,_updateRate,_debug] spawn {
				params[["_maxUnitCount",10],["_maxRoads",600],["_minTravenDistance",75],["_maxTravelDistance",200],["_deleteDistance",500],["_updateRate",1],["_debug",false]];

				while {isPedestriansAllowed && isPopulateWorldAllowed} do 
				{
					_vs = missionNamespace getVariable "validRoadsForPedestrians";

					comment "Remove null objects from array";
					AllIDAPPedestrians = (AllIDAPPedestrians-[objNull]);

					comment "delete units";
					{
						_min = 1e10;
						_unit = _x;

						_isCivPopAgent = _unit getVariable "isCivPopAgent";
						if (isNil "_isCivPopAgent") then {continue};

						{
							_player = _x;
							_pos = [_player,250,30] call CIVPOP_fnc_getVelocityAdjustedPosition;
							_dist = _pos distance getPosATL _unit;
							if(_dist < _min) then {_min = _dist;};
						} foreach ([includeZeus] call CIVPOP_fnc_getAllPlayers);
						if(_min > (_deleteDistance)) then {deleteVehicle _unit;};
					} foreach (AllIDAPPedestrians+allDeadMen);

					comment "Adjust maximum unit count based on validSpawns and maxRoads ratio";
					_modifiedUnitCount = 1;
					if !(isNil "_vs") then 
					{
						_modifiedUnitCount = (_maxUnitCount * ((count _vs)/_maxRoads));
						if(_modifiedUnitCount > _maxUnitCount) then {_modifiedUnitCount = _maxUnitCount};
					};

					comment "Spawn IDAP agent";
					if (count AllIDAPPedestrians < _modifiedUnitCount) then 
					{
						if(isNil "_vs") exitWith {};
						if(count _vs == 0) exitWith {};
						_spawn = selectRandom _vs;
						if(isNil "_spawn") exitWith {};
						if(_spawn isEqualTo objNull) exitWith {};
						_isValid = [_spawn] call CIVPOP_fnc_checkForNearbyBlacklistedObjects;
						if(!_isValid) exitWith {};
						_class = selectRandom allIDAPClassNames;
						_agent = createAgent [_class,getPos _spawn,[],0,"CAN_COLLIDE"];
						_agent disableAI "FSM";
						_agent forceWalk true;
						_agent allowFleeing 0;
						_agent setVariable ["isCivPopAgent",true];
						_agent setVariable ["factionType","IDAP"];
						[_agent,_minTravenDistance,_maxTravelDistance] call CIVPOP_fnc_moveToNearbyRandomRoad;
						AllIDAPPedestrians pushBack _agent;

						comment "DEBUG";
						if (_debug) then 
						{
							_mkr = createMarker["DebugMarker_IDAP_"+str count allMapMarkers,getPos _agent];
							_mkr setMarkerType "mil_box";
							_mkr setMarkerSize [0.5,0.5];
							_mkr setMarkerColor "colorBlufor";
							[_mkr,_agent] spawn {while {isPedestriansAllowed && isPopulateWorldAllowed && alive (_this select 1)} do 
							{sleep 0.1; (_this select 0) setMarkerPos (getPos (_this select 1))}; deleteMarker (_this select 0);};
						};
					};
					sleep _updateRate;
				};
			};

			[_minTravenDistance,_maxTravelDistance,_movementUpdateRate] spawn {
				params ["_minTravenDistance","_maxTravelDistance","_movementUpdateRate"];
				while {isPedestriansAllowed && isPopulateWorldAllowed} do 
				{
					comment "Update IDAP Movement";
					_vs = missionNamespace getVariable "validRoadsForPedestrians";
					{
						_minSpeed = 0.125;
						if((vectorMagnitude velocity _x) < _minSpeed) then 
						{
							[_x,_minTravenDistance,_maxTravelDistance] call CIVPOP_fnc_moveToNearbyRandomRoad;
						};
						uiSleep 0.1;
					} foreach AllIDAPPedestrians;
					sleep _movementUpdateRate;
				};
			};
		};

		CIVPOP_fnc_initIDAPVehicles = {
			params[["_maxUnitCount",5],["_maxRoads",600],["_minTravenDistance",75],["_maxTravelDistance",250],["_deleteDistance",500],["_movementUpdateRate",5],["_updateRate",1],["_debug",false]];

			AllIDAPVehicleOwners = [];

			[_maxUnitCount,_maxRoads,_minTravenDistance,_maxTravelDistance,_deleteDistance,_updateRate,_debug] spawn {
				params[["_maxUnitCount",5],["_maxRoads",600],["_minTravenDistance",75],["_maxTravelDistance",200],["_deleteDistance",500],["_updateRate",1],["_debug",false]];

				while {isCivilianGroundVehiclesAllowed && isPopulateWorldAllowed} do 
				{
					_vs = missionNamespace getVariable "validRoadsForPedestrians";

					comment "Remove null objects from array";
					AllIDAPVehicleOwners = (AllIDAPVehicleOwners-[objNull]);

					comment "delete IDAP vehicles";
					{
						_min = 1e10;
						_unit = _x;

						_isCivPopAgent = _unit getVariable "isCivPopAgent";
						if (isNil "_isCivPopAgent") then {continue};

						{
							_player = _x;
							_pos = [_player,250,30] call CIVPOP_fnc_getVelocityAdjustedPosition;
							_dist = _pos distance getPosATL _unit;
							if(_dist < _min) then {_min = _dist;};
						} foreach ([includeZeus] call CIVPOP_fnc_getAllPlayers);
						if(_min > (_deleteDistance)) then 
						{
							_vehicle = _unit getVariable "ownedVehicle";
							if(!isNil "_vehicle") then 
							{
								_i = crew _vehicle findIf {_x in allPlayers};
								if(_i != -1) exitWith {};
								deleteVehicle _vehicle;
							};
							deleteVehicle _unit;
						};
					} foreach (AllIDAPVehicleOwners);

					comment "Adjust maximum unit count based on validSpawns and maxRoads ratio";
					_modifiedUnitCount = 1;
					if !(isNil "_vs") then 
					{
						_modifiedUnitCount = (_maxUnitCount * ((count _vs)/_maxRoads));
						if(_modifiedUnitCount > _maxUnitCount) then {_modifiedUnitCount = _maxUnitCount};
					};

					comment "Spawn IDAP vehicle";
					if (count AllIDAPVehicleOwners < _modifiedUnitCount) then 
					{
						if(isNil "_vs") exitWith {};
						if(count _vs == 0) exitWith {};
						_spawn = selectRandom _vs;
						if(isNil "_spawn") exitWith {};
						if(_spawn isEqualTo objNull) exitWith {};
						_isValid = [_spawn] call CIVPOP_fnc_checkForNearbyBlacklistedObjects;
						if(!_isValid) exitWith {};
						_class = selectRandom allIDAPClassNames;
						_classV = selectRandom allIDAPVehicleClassNames;
						_agent = createAgent [_class,getPos _spawn,[],0,"CAN_COLLIDE"];
						_veh = createVehicle [_classV, getPos _spawn, [], 0, "NONE"];
						_veh setFuel 0.1; // Set vehicle to 10% fuel
						_veh setDamage 0.5; // 50% health
						_veh addEventHandler ['Hit',{['play', _this select 0] call BIS_fnc_carAlarm;}];
						{_veh disableCollisionWith _x;} foreach AllCivilianPedestrians;
						_agent moveInDriver _veh;
						_agent setVariable ["ownedVehicle",_veh];
						_agent setVariable ["isCivPopAgent",true];
						_agent setVariable ["factionType","IDAP"];
						_agent disableAI "FSM";
						_agent forceWalk true;
						_agent allowFleeing 0;
						[_agent,_minTravenDistance,_maxTravelDistance,true] call CIVPOP_fnc_moveToNearbyRandomRoad;
						AllIDAPVehicleOwners pushBack _agent;

						comment "DEBUG";
						if (_debug) then 
						{
							_mkr = createMarker["DebugMarker_IDAP_Veh_"+str count allMapMarkers,getPos _agent];
							_mkr setMarkerType "mil_box";
							_mkr setMarkerSize [0.5,0.5];
							_mkr setMarkerColor "colorBlufor";
							[_mkr,_agent] spawn {while {isCivilianGroundVehiclesAllowed && isPopulateWorldAllowed && alive (_this select 1)} do 
							{sleep 0.1; (_this select 0) setMarkerPos (getPos (_this select 1))}; deleteMarker (_this select 0);};
						};
					};
					sleep _updateRate;
				};
			};

			[_minTravenDistance,_maxTravelDistance,_movementUpdateRate] spawn {
				params ["_minTravenDistance","_maxTravelDistance","_movementUpdateRate"];
				while {isCivilianGroundVehiclesAllowed && isPopulateWorldAllowed} do 
				{
					comment "Update IDAP Vehicle Movement";
					_vs = missionNamespace getVariable "validRoadsForPedestrians";
					{
						_minSpeed = 0.25;
						if((vectorMagnitude velocity _x) < _minSpeed) then 
						{
							[_x,_minTravenDistance,_maxTravelDistance] call CIVPOP_fnc_moveToNearbyRandomRoad;
						};
						uiSleep 0.1;
					} foreach AllIDAPVehicleOwners;
					sleep _movementUpdateRate;
				};
			};
		};

		[DeleteDeadTimeDelay] spawn CIVPOP_fnc_spawnDeleteDeadAgentsLoop;

		if (addAgentsToInterface) then 
		{
			[] spawn CIVPOP_fnc_spawnAddAgentsToInterfaceLoop;
		};


		// Spawn and deletion distances for zombies (closer spawn, closer despawn)
		_minSpawnDistance = 200;
		_deletionDistance = 500;

		[2,_minSpawnDistance,_deletionDistance,false] spawn CIVPOP_fnc_startValidSpawnDiscovery;

		comment "Spawn Zombies (Pedestrians only)";
		_maxUnitCount = 35;
		_maxRoads = 1000;
		_minTravenDistance = 150;
		_maxTravelDistance = 300;
		_deleteDistance = _deletionDistance;
		_movementUpdateRate = 5;
		_updateRate = 0.25;
		_debug = false;
		[_maxUnitCount,_maxRoads,_minTravenDistance,_maxTravelDistance,_deleteDistance,_movementUpdateRate,_updateRate,_debug] spawn CIVPOP_fnc_initPedestrians;

		comment "Spawn IDAP Personnel (Pedestrians)";
		_maxUnitCount = 8;
		_maxRoads = 1000;
		_minTravenDistance = 200;
		_maxTravelDistance = 400;
		_deleteDistance = _deletionDistance;
		_movementUpdateRate = 7;
		_updateRate = 0.5;
		_debug = false;
		[_maxUnitCount,_maxRoads,_minTravenDistance,_maxTravelDistance,_deleteDistance,_movementUpdateRate,_updateRate,_debug] spawn CIVPOP_fnc_initIDAPPedestrians;

		comment "Spawn IDAP Vehicles";
		_maxUnitCount = 4;
		_maxRoads = 1000;
		_minTravenDistance = 800;
		_maxTravelDistance = 1200;
		_deleteDistance = _deletionDistance;
		_movementUpdateRate = 12;
		_updateRate = 1.5;
		_debug = false;
		[_maxUnitCount,_maxRoads,_minTravenDistance,_maxTravelDistance,_deleteDistance,_movementUpdateRate,_updateRate,_debug] spawn CIVPOP_fnc_initIDAPVehicles;

		// Spawn empty vehicles for player use
		[] spawn {
			private _maxEmptyVehicles = 13;
			private _spawnedVehicles = [];
			while {isPopulateWorldAllowed} do {
				_vs = missionNamespace getVariable ["validRoadsForPedestrians", []];
				// Remove null vehicles
				_spawnedVehicles = _spawnedVehicles - [objNull];
				// Delete vehicles too far from players
				{
					private _veh = _x;
					private _minDist = 1e10;
					{
						private _player = _x;
						private _dist = _player distance _veh;
						if (_dist < _minDist) then {_minDist = _dist;};
					} forEach ([includeZeus] call CIVPOP_fnc_getAllPlayers);
					if (_minDist > 2000) then {deleteVehicle _veh;};
				} forEach _spawnedVehicles;
				// Spawn new vehicles if below max
				if (count _spawnedVehicles < _maxEmptyVehicles) then {
					if (isNil "_vs" || {count _vs == 0}) exitWith {};
					private _spawn = selectRandom _vs;
					if (isNil "_spawn" || {_spawn isEqualTo objNull}) exitWith {};
					private _isValid = [_spawn] call CIVPOP_fnc_checkForNearbyBlacklistedObjects;
					if (!_isValid) exitWith {};
					private _classV = selectRandom allIDAPVehicleClassNames;
					private _veh = createVehicle [_classV, getPos _spawn, [], 0, "NONE"];
					_veh setFuel 0.08; // 8% fuel
					_veh setDamage 0.5; // 50% health
					_veh setVariable ["isCivPopEmptyVehicle", true];
					_spawnedVehicles pushBack _veh;
				};
				sleep 10;
			};
		};
	};
	call CIVPOP_fnc_startSystem;
}] remoteExec ["Spawn",2];

comment "
// run on server

isPopulateWorldAllowed = nil;
call CIVPOP_fnc_deleteAllAgents;

";