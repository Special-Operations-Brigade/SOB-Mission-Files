[[],{
	// Only run on server
	if (!isServer) exitWith {};
	
	if !(isNil "isPopulateWorldAllowed") exitWith {};

	// Debug message to confirm system is starting
	"[CIVPOP] Starting civilian presence system on server" remoteExec ["systemChat", 0];

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
			"C_man_1",
			"C_man_polo_1_F",
			"C_man_polo_1_F_afro",
			"C_man_polo_1_F_euro",
			"C_man_polo_1_F_asia",
			"C_man_polo_2_F",
			"C_man_polo_2_F_afro",
			"C_man_polo_2_F_euro",
			"C_man_polo_2_F_asia",
			"C_man_polo_4_F",
			"C_man_polo_5_F",
			"C_man_polo_6_F",
			"C_man_p_fugitive_F",
			"C_man_w_worker_F",
			"C_scientist_F",
			"C_man_hunter_1_F",
			"C_man_pilot_F",
			"C_journalist_F",
			"C_Orestes",
			"C_Nikos_aged",
			"C_Marshal_F",
			"C_man_sport_1_F",
			"C_man_sport_1_F_afro",
			"C_man_sport_2_F",
			"C_man_sport_2_F_afro",
			"C_man_sport_3_F",
			"C_man_sport_3_F_afro",
			"C_Man_casual_1_F",
			"C_Man_casual_1_F_afro",
			"C_Man_casual_2_F",
			"C_Man_casual_2_F_afro",
			"C_Man_casual_3_F",
			"C_Man_casual_3_F_afro",
			"C_Man_casual_4_F",
			"C_Man_casual_4_F_afro",
			"C_Man_casual_5_F",
			"C_Man_casual_5_F_afro",
			"C_Man_casual_6_F",
			"C_Man_casual_6_F_afro",
			"C_Man_ConstructionWorker_01_Red_F",
			"C_Man_ConstructionWorker_01_Black_F",
			"C_Man_ConstructionWorker_01_Blue_F",
			"C_Man_ConstructionWorker_01_Vrana_F",
			"C_Man_Paramedic_01_F",
			"C_Man_UtilityWorker_01_F",
			"C_Man_UAV_06_F",
			"C_Man_Fisherman_01_F",
			"C_Man_Messenger_01_F",
			"C_Journalist_01_War_F",
			"C_Story_Mechanic_01_F",
			"C_Nikos_aged",
			"C_Nikos",
			"C_Orestes",
			"C_Story_EOD_01_F",
			"C_IDAP_Man_AidWorker_04_F",
			"C_IDAP_Man_AidWorker_06_F",
			"C_IDAP_Man_AidWorker_03_F",
			"C_IDAP_Man_AidWorker_05_F",
			"C_Man_1_enoch_F",
			"C_Man_2_enoch_F",
			"C_Man_3_enoch_F",
			"C_Man_4_enoch_F",
			"C_Farmer_01_enoch_F"
		];

		allCivilianVehicleClassNames =[
			"C_Offroad_01_F",
			"C_Offroad_01_repair_F",
			"C_Offroad_01_bluecustom_F",
			"C_Offroad_luxe_F",
			"C_Offroad_stripped_F",
			"C_Quadbike_01_F",
			"C_Truck_02_covered_F",
			"C_Truck_02_transport_F",
			"C_Truck_02_covered_F",
			"C_Truck_02_transport_F",
			"C_Hatchback_01_F",
			"C_Hatchback_01_sport_F",
			"C_Hatchback_01_beigecustom_F",
			"C_Hatchback_01_bluecustom_F",
			"C_SUV_01_F",
			"C_SUV_01_F",
			"C_SUV_01_F",
			"C_SUV_01_F",
			"C_Truck_02_fuel_F",
			"C_Truck_02_box_F",
			"C_Truck_02_fuel_F",
			"C_Truck_02_box_F",
			"C_Van_01_transport_F",
			"C_Van_01_box_F",
			"C_Van_01_box_F",
			"C_Van_01_fuel_F",
			"C_Kart_01_F",
			"C_Offroad_02_unarmed_F",
			"C_Offroad_02_unarmed_F",
			"C_Offroad_02_unarmed_F",
			"C_Offroad_02_unarmed_F",
			"C_Van_02_transport_F",
			"C_Van_02_vehicle_F",
			"C_Van_02_medevac_F",
			"C_Van_02_service_F"
		];

		allCISGroupClassNames = [
			"mti_factions_cis_B1_E5",
			"mti_factions_rebels_cis_unit_Nationalist",
			"mti_factions_rebels_cis_unit_Nationalist_Sniper",
			"mti_factions_cis_B1_Sniper",
			"mti_factions_cis_B1_SBB3",
			"mti_factions_cis_B1_Heavy",
			"mti_factions_cis_B1_Support"
		];

		allCISVehicleClassNames = [
			"mti_factions_cis_AAT_CIS",
			"mti_factions_cis_AAT_H_Camo",
			"mti_factions_cis_GAT_Jungle",
			"mti_factions_cis_GAT_Light_Jungle",
			"mti_factions_rebels_cis_AAT",
			"mti_factions_cis_n99",
			"mti_factions_cishuman_Rat",
			"mti_factions_cishuman_Rat2",
			"mti_factions_cis_Combat_speeder",
			"mti_factions_cishuman_Rawl",
			"mti_factions_cishuman_IFRIT_GMG",
			"mti_factions_cishuman_IFRIT_Sniper"
		];

		allPoliceClassNames = [
			"B_Captain_Dwarden_F",
			"B_GEN_Commander_F",
			"B_GEN_Soldier_F"
		];

		allPoliceVehicleClassNames = [
			"B_GEN_Offroad_01_gen_F",
			"B_GEN_Van_02_transport_F",
			"B_GEN_Van_02_vehicle_F",
			"B_GEN_Offroad_01_comms_F",
			"B_GEN_Offroad_01_covered_F"
		];

		allBlackListedAirportObjects = [
			"Land_Airport_Tower_F"
		];

		allBlackListedMilitaryBaseObjects = [
			"Land_Dome_Small_F"
		];

		CIVPOP_fnc_startValidSpawnDiscovery = {
			params[["_updateRate",4],["_minDistance",500],["_maxDistance",750],["_debug",false]]; // Increased update rate from 2 to 4

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

		CIVPOP_fnc_spawnCISGroup = {
			params ["_spawnPos"];
			
			// Create group and set to east side
			_group = createGroup east;
			
			// Spawn CIS droids one at a time with small delays to prevent stuttering
			for "_i" from 1 to 4 do {
				_unitClass = selectRandom allCISGroupClassNames;
				_unit = _group createUnit [_unitClass, _spawnPos, [], 5, "CAN_COLLIDE"]; // Increased spawn radius
				_unit setVariable ["isCivPopAgent", true];
				_unit setVariable ["faction", "CIS"];
				
				// Small delay to prevent stuttering
				if (_i < 4) then {
					sleep 0.1;
				};
			};
			
			// Set group behavior for combat capability
			_group setBehaviour "AWARE";
			_group setSpeedMode "LIMITED";
			_group setFormation "WEDGE";
			_group setCombatMode "YELLOW";
			
			// Add patrol waypoint
			_wp = _group addWaypoint [_spawnPos, 100];
			_wp setWaypointType "MOVE";
			_wp setWaypointBehaviour "AWARE";
			_wp setWaypointSpeed "LIMITED";
			
			_group
		};

		CIVPOP_fnc_spawnCISVehicleGroup = {
			params ["_spawnPos"];
			
			// Create group and set to east side
			_group = createGroup east;
			
			// Spawn vehicle first
			_vehicleClass = selectRandom allCISVehicleClassNames;
			_vehicle = createVehicle [_vehicleClass, _spawnPos, [], 10, "NONE"]; // Increased spawn radius
			_vehicle setVariable ["isCivPopAgent", true];
			_vehicle setVariable ["faction", "CIS"];
			
			// Spawn crew with delays to prevent stuttering
			_crewCount = 2 + floor(random 2); // 2 or 3 crew members
			for "_i" from 1 to _crewCount do {
				_unitClass = selectRandom allCISGroupClassNames;
				_unit = _group createUnit [_unitClass, _spawnPos, [], 5, "CAN_COLLIDE"];
				_unit setVariable ["isCivPopAgent", true];
				_unit setVariable ["faction", "CIS"];
				_unit setVariable ["ownedVehicle", _vehicle];
				
				// Assign crew positions
				if (_i == 1) then {
					_unit moveInDriver _vehicle;
				} else {
					_unit moveInCargo _vehicle;
				};
				
				// Small delay between crew spawning
				if (_i < _crewCount) then {
					sleep 0.05;
				};
			};
			
			// Set group behavior for combat capability
			_group setBehaviour "AWARE";
			_group setSpeedMode "LIMITED";
			_group setFormation "COLUMN";
			_group setCombatMode "YELLOW";
			
			// Add patrol waypoint
			_wp = _group addWaypoint [_spawnPos, 100];
			_wp setWaypointType "MOVE";
			_wp setWaypointBehaviour "AWARE";
			_wp setWaypointSpeed "LIMITED";
			
			[_group, _vehicle]
		};

		CIVPOP_fnc_initCISGroups = {
			params[["_maxGroupCount",4],["_maxRoads",600],["_minTravenDistance",75],["_maxTravelDistance",250],["_deleteDistance",500],["_movementUpdateRate",5],["_updateRate",1],["_debug",false]];

			AllCISGroups = [];

			[_maxGroupCount,_maxRoads,_minTravenDistance,_maxTravelDistance,_deleteDistance,_updateRate,_debug] spawn {
				params[["_maxGroupCount",4],["_maxRoads",600],["_minTravenDistance",75],["_maxTravelDistance",200],["_deleteDistance",500],["_updateRate",1],["_debug",false]];

				while {isPedestriansAllowed && isPopulateWorldAllowed} do 
				{
					_vs = missionNamespace getVariable "validRoadsForPedestrians";

					comment "Remove null objects from array";
					AllCISGroups = AllCISGroups select {!isNull _x && {count (units _x) > 0}};

					comment "delete groups that are too far";
					{
						_group = _x;
						_leader = leader _group;
						if (isNull _leader) then {continue};
						
						_min = 1e10;
						{
							_player = _x;
							_pos = [_player,250,30] call CIVPOP_fnc_getVelocityAdjustedPosition;
							_dist = _pos distance getPosATL _leader;
							if(_dist < _min) then {_min = _dist;};
						} foreach ([includeZeus] call CIVPOP_fnc_getAllPlayers);
						
						if(_min > (_deleteDistance)) then {
							{deleteVehicle _x} forEach units _group;
							deleteGroup _group;
						};
					} foreach AllCISGroups;

					comment "Adjust maximum group count based on validSpawns and maxRoads ratio";
					_modifiedGroupCount = 1;
					if !(isNil "_vs") then 
					{
						_modifiedGroupCount = (_maxGroupCount * ((count _vs)/_maxRoads));
						if(_modifiedGroupCount > _maxGroupCount) then {_modifiedGroupCount = _maxGroupCount};
					};

					comment "Spawn CIS infantry group";
					if (count AllCISGroups < _modifiedGroupCount) then 
					{
						if(isNil "_vs") exitWith {};
						if(count _vs == 0) exitWith {};
						_spawn = selectRandom _vs;
						if(isNil "_spawn") exitWith {};
						if(_spawn isEqualTo objNull) exitWith {};
						_isValid = [_spawn] call CIVPOP_fnc_checkForNearbyBlacklistedObjects;
						if(!_isValid) exitWith {};
						
						_group = [getPos _spawn] call CIVPOP_fnc_spawnCISGroup;
						
						// Move group to nearby road
						_leader = leader _group;
						[_leader,_minTravenDistance,_maxTravelDistance] call CIVPOP_fnc_moveToNearbyRandomRoad;
						
						AllCISGroups pushBack _group;

						comment "DEBUG";
						if (_debug) then 
						{
							_mkr = createMarker["DebugMarker_CIS_"+str count allMapMarkers,getPos _leader];
							_mkr setMarkerType "mil_box";
							_mkr setMarkerSize [0.75,0.75];
							_mkr setMarkerColor "colorEast";
							[_mkr,_group] spawn {
								while {isPedestriansAllowed && isPopulateWorldAllowed && !isNull (_this select 1) && {count (units (_this select 1)) > 0}} do 
								{
									sleep 0.1; 
									_leader = leader (_this select 1);
									if (!isNull _leader) then {
										(_this select 0) setMarkerPos (getPos _leader);
									};
								}; 
								deleteMarker (_this select 0);
							};
						};
					};
					sleep _updateRate;
				};
			};

			[_minTravenDistance,_maxTravelDistance,_movementUpdateRate] spawn {
				params ["_minTravenDistance","_maxTravelDistance","_movementUpdateRate"];
				while {isPedestriansAllowed && isPopulateWorldAllowed} do 
				{
					comment "Update Movement - CIS Infantry Groups";
					{
						_group = _x;
						_leader = leader _group;
						if (isNull _leader) then {continue};
						
						_minSpeed = 0.125;
						if((vectorMagnitude velocity _leader) < _minSpeed) then 
						{
							[_leader,_minTravenDistance,_maxTravelDistance] call CIVPOP_fnc_moveToNearbyRandomRoad;
						};
						uiSleep 0.1;
					} foreach AllCISGroups;
					sleep _movementUpdateRate;
				};
			};
		};

		CIVPOP_fnc_initCISVehicles = {
			params[["_maxUnitCount",30],["_maxRoads",600],["_minTravenDistance",75],["_maxTravelDistance",250],["_deleteDistance",500],["_movementUpdateRate",5],["_updateRate",1],["_debug",false]];

			AllCISVehicleOwners = [];

			[_maxUnitCount,_maxRoads,_minTravenDistance,_maxTravelDistance,_deleteDistance,_updateRate,_debug] spawn {
				params[["_maxUnitCount",30],["_maxRoads",600],["_minTravenDistance",75],["_maxTravelDistance",200],["_deleteDistance",500],["_updateRate",1],["_debug",false]];

				while {isPedestriansAllowed && isPopulateWorldAllowed} do 
				{
					_vs = missionNamespace getVariable "validRoadsForPedestrians";

					comment "Remove null objects from array";
					AllCISVehicleOwners = (AllCISVehicleOwners-[objNull]);

					comment "delete vehicles";
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
					} foreach (AllCISVehicleOwners);

					comment "Adjust maximum unit count based on validSpawns and maxRoads ratio";
					_modifiedUnitCount = 1;
					if !(isNil "_vs") then 
					{
						_modifiedUnitCount = (_maxUnitCount * ((count _vs)/_maxRoads));
						if(_modifiedUnitCount > _maxUnitCount) then {_modifiedUnitCount = _maxUnitCount};
					};

					comment "Spawn CIS vehicle unit";
					if (count AllCISVehicleOwners < _modifiedUnitCount) then 
					{
						if(isNil "_vs") exitWith {};
						if(count _vs == 0) exitWith {};
						_spawn = selectRandom _vs;
						if(isNil "_spawn") exitWith {};
						if(_spawn isEqualTo objNull) exitWith {};
						_isValid = [_spawn] call CIVPOP_fnc_checkForNearbyBlacklistedObjects;
						if(!_isValid) exitWith {};
						
						_classV = selectRandom allCISVehicleClassNames;
						
						// Create group for east side
						_group = createGroup east;
						
						// Create vehicle with proper crew automatically
						_veh = createVehicle [_classV, getPos _spawn, [], 5, "NONE"];
						_veh setVariable ["isCivPopAgent", true];
						_veh setVariable ["faction", "CIS"];
						
						// Try automatic crew creation first
						_crewGroup = _group createVehicleCrew _veh;
						_crew = units _crewGroup;
						
						// If automatic crew creation failed, manually create a driver
						if (count _crew == 0 || isNull (driver _veh)) then {
							_driverClass = selectRandom allCISGroupClassNames;
							_driver = _group createUnit [_driverClass, getPos _spawn, [], 3, "CAN_COLLIDE"];
							_driver moveInDriver _veh;
							_crew = [_driver];
						};
						
						// Set variables on all crew members
						{
							_x setVariable ["isCivPopAgent", true];
							_x setVariable ["faction", "CIS"];
							_x setVariable ["ownedVehicle", _veh];
						} forEach _crew;
						
						// Get the driver for tracking
						_driver = driver _veh;
						if (!isNull _driver) then {
							// Set unit behavior like civilian vehicles for natural patrol
							_driver disableAI "FSM";
							_driver setBehaviour "CARELESS";
							_driver setCombatMode "BLUE";
							_group setBehaviour "CARELESS";
							_group setSpeedMode "LIMITED";
							_group setCombatMode "BLUE";
							
							[_driver,_minTravenDistance,_maxTravelDistance] call CIVPOP_fnc_moveToNearbyRandomRoad;
							AllCISVehicleOwners pushBack _driver;
						};

						comment "DEBUG";
						if (_debug) then 
						{
							if (!isNull _driver) then {
								_mkr = createMarker["DebugMarker_CISVeh_"+str count allMapMarkers,getPos _driver];
								_mkr setMarkerType "mil_box";
								_mkr setMarkerSize [0.5,0.5];
								_mkr setMarkerColor "colorEast";
								[_mkr,_driver] spawn {while {isPedestriansAllowed && isPopulateWorldAllowed && alive (_this select 1)} do 
								{sleep 0.1; (_this select 0) setMarkerPos (getPos (_this select 1))}; deleteMarker (_this select 0);};
							};
						};
					};
					sleep _updateRate;
				};
			};

			[_minTravenDistance,_maxTravelDistance,_movementUpdateRate] spawn {
				params ["_minTravenDistance","_maxTravelDistance","_movementUpdateRate"];
				while {isPedestriansAllowed && isPopulateWorldAllowed} do 
				{
					comment "Update Movement - CIS Vehicles";
					{
						_minSpeed = 0.25;
						if((vectorMagnitude velocity _x) < _minSpeed) then 
						{
							[_x,_minTravenDistance,_maxTravelDistance] call CIVPOP_fnc_moveToNearbyRandomRoad;
						};
						uiSleep 0.1;
					} foreach AllCISVehicleOwners;
					sleep _movementUpdateRate;
				};
			};
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

		CIVPOP_fnc_initGroundVehicles = {
			params[["_maxUnitCount",30],["_maxRoads",600],["_minTravenDistance",75],["_maxTravelDistance",250],["_deleteDistance",500],["_movementUpdateRate",5],["_updateRate",1],["_debug",false]];

			AllCivilianGroundVehicleOwners = [];

			[_maxUnitCount,_maxRoads,_minTravenDistance,_maxTravelDistance,_deleteDistance,_updateRate,_debug] spawn {
				params[["_maxUnitCount",30],["_maxRoads",600],["_minTravenDistance",75],["_maxTravelDistance",200],["_deleteDistance",500],["_updateRate",1],["_debug",false]];

				while {isPedestriansAllowed && isPopulateWorldAllowed} do 
				{
					_vs = missionNamespace getVariable "validRoadsForPedestrians";

					comment "Remove null objects from array";
					AllCivilianGroundVehicleOwners = (AllCivilianGroundVehicleOwners-[objNull]);

					comment "delete vehicles";
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
					} foreach (AllCivilianGroundVehicleOwners);

					comment "Adjust maximum unit count based on validSpawns and maxRoads ratio";
					_modifiedUnitCount = 1;
					if !(isNil "_vs") then 
					{
						_modifiedUnitCount = (_maxUnitCount * ((count _vs)/_maxRoads));
						if(_modifiedUnitCount > _maxUnitCount) then {_modifiedUnitCount = _maxUnitCount};
					};

					comment "Spawn agent";
					if (count AllCivilianGroundVehicleOwners < _modifiedUnitCount) then 
					{
						if(isNil "_vs") exitWith {};
						if(count _vs == 0) exitWith {};
						_spawn = selectRandom _vs;
						if(isNil "_spawn") exitWith {};
						if(_spawn isEqualTo objNull) exitWith {};
						_isValid = [_spawn] call CIVPOP_fnc_checkForNearbyBlacklistedObjects;
						if(!_isValid) exitWith {};
						_class = selectRandom allCivilianClassNames;
						_classV = selectRandom allCivilianVehicleClassNames;
						_agent = createAgent [_class,getPos _spawn,[],0,"CAN_COLLIDE"];
						_veh = createVehicle [_classV, getPos _spawn, [], 0, "NONE"];
						_veh addEventHandler ['Hit',{['play', _this select 0] call BIS_fnc_carAlarm;}];
						{_veh disableCollisionWith _x;} foreach AllCivilianPedestrians;
						_agent moveInDriver _veh;
						_agent setVariable ["ownedVehicle",_veh];
						_agent setVariable ["isCivPopAgent",true];
						_agent disableAI "FSM";
						_agent forceWalk true;
						_agent allowFleeing 0;
						[_agent,_minTravenDistance,_maxTravelDistance,true] call CIVPOP_fnc_moveToNearbyRandomRoad;
						AllCivilianGroundVehicleOwners pushBack _agent;

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
						_minSpeed = 0.25;
						if((vectorMagnitude velocity _x) < _minSpeed) then 
						{
							[_x,_minTravenDistance,_maxTravelDistance] call CIVPOP_fnc_moveToNearbyRandomRoad;
						};
						uiSleep 0.1;
					} foreach  AllCivilianGroundVehicleOwners;
					sleep _movementUpdateRate;
				};
			};
		};

		[DeleteDeadTimeDelay] spawn CIVPOP_fnc_spawnDeleteDeadAgentsLoop;

		if (addAgentsToInterface) then 
		{
			[] spawn CIVPOP_fnc_spawnAddAgentsToInterfaceLoop;
		};

		_minSpawnDistance = 300;
		_deletionDistance = 800;

		[2,_minSpawnDistance,_deletionDistance,false] spawn CIVPOP_fnc_startValidSpawnDiscovery;

		comment "Staggered spawning - start civilian pedestrians first";
		_maxUnitCount = 15; // Increased from 6 for more civilian presence
		_maxRoads = 1000;
		_minTravenDistance = 300;
		_maxTravelDistance = 600;
		_deleteDistance = _deletionDistance;
		_movementUpdateRate = 8; // Increased from 5 for better MP performance
		_updateRate = 0.5; // Increased from 0.25 for better MP performance
		_debug = false;
		"[CIVPOP] Starting pedestrian spawning" remoteExec ["systemChat", 0];
		[_maxUnitCount,_maxRoads,_minTravenDistance,_maxTravelDistance,_deleteDistance,_movementUpdateRate,_updateRate,_debug] spawn CIVPOP_fnc_initPedestrians;

		comment "Wait 3 seconds then spawn civilian vehicles";
		[] spawn {
			sleep 3;
			_maxUnitCount = 8; // Increased from 3 for more civilian vehicle presence
			_maxRoads = 1000;
			_minTravenDistance = 1500;
			_maxTravelDistance = 2000;
			_deleteDistance = 800;
			_movementUpdateRate = 15; // Increased from 10 for better MP performance
			_updateRate = 2; // Increased from 1 for better MP performance
			_debug = false;
			"[CIVPOP] Starting civilian vehicle spawning" remoteExec ["systemChat", 0];
			[_maxUnitCount,_maxRoads,_minTravenDistance,_maxTravelDistance,_deleteDistance,_movementUpdateRate,_updateRate,_debug] spawn CIVPOP_fnc_initGroundVehicles;
		};

		comment "Wait 10 seconds then spawn CIS infantry groups";
		[] spawn {
			sleep 10;
			_maxGroupCount = 2; // Further reduced for less stuttering
			_maxRoads = 1000;
			_minTravenDistance = 200;
			_maxTravelDistance = 400;
			_deleteDistance = 800;
			_movementUpdateRate = 15; // Increased for better performance
			_updateRate = 5; // Increased significantly to reduce frequency
			_debug = false;
			"[CIVPOP] Starting CIS infantry spawning" remoteExec ["systemChat", 0];
			[_maxGroupCount,_maxRoads,_minTravenDistance,_maxTravelDistance,_deleteDistance,_movementUpdateRate,_updateRate,_debug] spawn CIVPOP_fnc_initCISGroups;
		};

		comment "Wait 15 seconds then spawn CIS vehicles";
		[] spawn {
			sleep 15;
			_maxUnitCount = 3; // Further reduced for less stuttering
			_maxRoads = 1000;
			_minTravenDistance = 300;
			_maxTravelDistance = 600;
			_deleteDistance = 800;
			_movementUpdateRate = 15; // Increased for better performance
			_updateRate = 4; // Increased to reduce frequency
			_debug = false;
			"[CIVPOP] Starting CIS vehicle spawning" remoteExec ["systemChat", 0];
			[_maxUnitCount,_maxRoads,_minTravenDistance,_maxTravelDistance,_deleteDistance,_movementUpdateRate,_updateRate,_debug] spawn CIVPOP_fnc_initCISVehicles;
		};
	};
	call CIVPOP_fnc_startSystem;
}] call spawn;

comment "
// run on server

isPopulateWorldAllowed = nil;
call CIVPOP_fnc_deleteAllAgents;

";