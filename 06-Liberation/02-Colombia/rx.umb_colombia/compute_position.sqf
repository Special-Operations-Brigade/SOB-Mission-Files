// Mega Search
// Search Objects by classname (only when dev)

//----------------------------------------------------------------------
// example:
// create all markers
// [0] execVM "compute_position.sqf";

// Delete unwanted markers (alt + left clic)
// player onMapSingleClick "
// if (_alt) then {
//  _nearest_marker = (allMapMarkers select {markerPos _x distance2D _pos < 30});
//  if (count _nearest_marker == 0) exitWith {};
//  systemchat str _nearest_marker;
//  deleteMarker (_nearest_marker select 0);
// }";

// export new position
// [1] execVM "compute_position.sqf";

// manual inspect
// nearestTerrainObjects [player, [], 10];
//----------------------------------------------------------------------

params [["_mode", 0], ["_full", false]];

private _size = (getnumber (configfile >> "cfgworlds" >> worldname >> "mapSize")) / 2;
// Workaround for Kapaulio coz "mapSize" is missing
if (worldname == "Kapaulio") then { _size = 10240 };
private _center = [_size,_size,0];
private _list = [];

// Create markers
if (_mode == 0) then {
	// remove markers
	{
		_marker_pos = _x;
		_marker = (allMapMarkers select {markerPos _x distance2D _marker_pos < 30});
		if (count _marker == 0) exitWith {};
		deleteMarkerLocal (_marker select 0);
	} foreach GRLIB_Marker_ATM + GRLIB_Marker_SRV + GRLIB_Marker_SHOP + GRLIB_Marker_FUEL;

	GRLIB_Marker_SRV = [];
	GRLIB_Marker_ATM = [];
	GRLIB_Marker_FUEL = [];
	GRLIB_Marker_SHOP = [];
	enableEnvironment false;
	sleep 1;
	systemchat format ["--- LRX Search place on map %1, size %2", worldname, _size];
	_list = (nearestObjects [_center, [""], (_size * 2^0.50), true]);
	if (_full) then {
		_list = _list + (nearestTerrainObjects [_center, [], (_size * 2^0.50), true]);
	};

	{
		if (_x distance2D lhd > 500) then {
			_str = toLower (str _x);
			// ATM
			if (_str find "atm_" > 0) then { GRLIB_Marker_ATM pushback (getpos _x) };
			if (_str find "phonebooth_" > 0) then { GRLIB_Marker_ATM pushback (getpos _x) };
			//if (_str find "house_c_1_ep1" > 0) then { GRLIB_Marker_ATM pushback (getpos _x) };
			//if (_str find "generalstore_01" > 0) then { GRLIB_Marker_ATM pushback (getpos _x) };
			//if (_str find "healthcenter_01" > 0) then { GRLIB_Marker_ATM pushback (getpos _x) };

			// SRV
			if (_str find "carservice_" > 0) then { GRLIB_Marker_SRV pushback (getpos _x) };
			if (_str find "fuelstation_01_workshop" > 0) then { GRLIB_Marker_SRV pushback (getpos _x) };
			if (_str find "fuelstation_02_workshop" > 0) then { GRLIB_Marker_SRV pushback (getpos _x) };
			if (_str find "house_c_12_ep1" > 0) then { GRLIB_Marker_SRV pushback (getpos _x) };
			if (_str find "house_c_2_ep1" > 0) then { GRLIB_Marker_SRV pushback (getpos _x) };
			if (_str find "repair_center" > 0) then { GRLIB_Marker_SRV pushback (getpos _x) };
			if (_str find "ind_garage01" > 0) then { GRLIB_Marker_SRV pushback (getpos _x) };
			if (_str find "euro_misc_telh" > 0) then { GRLIB_Marker_SRV pushback (getpos _x) };
			if (_str find "garageoffice_01" > 0) then { GRLIB_Marker_SRV pushback (getpos _x) };
			if (_str find "workshop01_04" > 0) then { GRLIB_Marker_SRV pushback (getpos _x) };
			if (_str find "workshop_05" > 0) then { GRLIB_Marker_SRV pushback (getpos _x) };
			if (_str find "fuelstation_03_shop" > 0) then { GRLIB_Marker_SRV pushback (getpos _x) };
			if (_str find "spe_barn_01" > 0) then { GRLIB_Marker_SRV pushback (getpos _x) };
			//if (_str find "vn_fuelstation_02_workshop_f" > 0) then { GRLIB_Marker_SRV pushback (getpos _x) };

			// FUEL
			if (_str find "fs_feed_f" > 0) then { GRLIB_Marker_FUEL pushback (getpos _x) };
			if (_str find "fuelstation_shed_f" > 0) then { GRLIB_Marker_FUEL pushback (getpos _x) };
			if (_str find "fuelstation_feed" > 0) then { GRLIB_Marker_FUEL pushback (getpos _x) };
			if (_str find "fuelstation_01_pump" > 0) then { GRLIB_Marker_FUEL pushback (getpos _x) };
			if (_str find "fuelstation_02_pump" > 0) then { GRLIB_Marker_FUEL pushback (getpos _x) };
			if (_str find "fuelstation_03_pump" > 0) then { GRLIB_Marker_FUEL pushback (getpos _x) };
			if (_str find "benzina_schnell" > 0) then { GRLIB_Marker_FUEL pushback (getpos _x) };
			if (_str find "fuelpump_02" > 0) then { GRLIB_Marker_FUEL pushback (getpos _x) };
			if (_str find "smalltank_old" > 0) then { GRLIB_Marker_FUEL pushback (getpos _x) };
			if (_str find "vn_fuelstation_feed_f" > 0) then { GRLIB_Marker_FUEL pushback (getpos _x) };
			if (_str find "vn_fuelstation_build_02_f" > 0) then { GRLIB_Marker_FUEL pushback (getpos _x) };
			if (_str find "ibr_yu_fuelstation_feed" > 0) then { GRLIB_Marker_FUEL pushback (getpos _x) };
			if (_str find "fuelstation_army" > 0) then { GRLIB_Marker_FUEL pushback (getpos _x) };

			// SHOP
			if (_str find "i_shop_01" > 0) then { GRLIB_Marker_SHOP pushback (getpos _x) };
			if (_str find "metalshelter_02" > 0) then { GRLIB_Marker_SHOP pushback (getpos _x) };
			if (_str find "warehouse_03" > 0) then { GRLIB_Marker_SHOP pushback (getpos _x) };
			if (_str find "ind_workshop01_02" > 0) then { GRLIB_Marker_SHOP pushback (getpos _x) };
			if (_str find "i_house_big_02_v1_f" > 0) then { GRLIB_Marker_SHOP pushback (getpos _x) };
			if (_str find "house_c_4_ep1" > 0) then { GRLIB_Marker_SHOP pushback (getpos _x) };
			if (_str find "vn_shop_town_03_f" > 0) then { GRLIB_Marker_SHOP pushback (getpos _x) };
			if (_str find "vn_house_small_05_f" > 0) then { GRLIB_Marker_SHOP pushback (getpos _x) };
			if (_str find "house_c_1_v2_ep1" > 0) then { GRLIB_Marker_SHOP pushback (getpos _x) };
			if (_str find "sara_domek_sedy" > 0) then { GRLIB_Marker_SHOP pushback (getpos _x) };
			if (_str find "dum_istan3_hromada" > 0) then { GRLIB_Marker_SHOP pushback (getpos _x) };
			if (_str find "gm_euro_gardenshed_03_02" > 0) then { GRLIB_Marker_SHOP pushback (getpos _x) };
			if (_str find "gm_euro_gardenshed_04" > 0) then { GRLIB_Marker_SHOP pushback (getpos _x) };
			if (_str find "villagestore_01_f" > 0) then { GRLIB_Marker_SHOP pushback (getpos _x) };
			if (_str find "workshop_02_grey_f" > 0) then { GRLIB_Marker_SHOP pushback (getpos _x) };
			if (_str find "shop_town_01_f" > 0) then { GRLIB_Marker_SHOP pushback (getpos _x) };
			if (_str find "spe_corner_house_02" > 0) then { GRLIB_Marker_SHOP pushback (getpos _x) };
			if (_str find "spe_shop_02" > 0) then { GRLIB_Marker_SHOP pushback (getpos _x) };
		};
		if (_forEachIndex % 10000 == 0) then { systemchat format ["--- LRX Searching... (%1)", _forEachIndex] };
	} forEach (nearestTerrainObjects [_center, [], (_size * 2^0.50), true]);  // cover corner
	systemchat "--- LRX Search end.";
	{  _x set [2, 0] } foreach GRLIB_Marker_ATM + GRLIB_Marker_SRV + GRLIB_Marker_SHOP + GRLIB_Marker_FUEL;
	enableEnvironment true;
};

// Marker filter
private _marker_dist = {
	params ["_pos", "_list", "_dist"];
	private _sortedByRange = [_list,[],{_pos distance2D  _x},"ASCEND"] call BIS_fnc_sortBy;
	private _nextdist = round ((_sortedByRange select 0) distance2D _pos);
	if (isNil "_nextdist") exitWith { true };
	if (_nextdist < _dist) exitWith { false };
	true;
};

private ["_tmp_marker", "_res"];

// filter ATM (500m)
_tmp_marker = GRLIB_Marker_ATM;
GRLIB_Marker_ATM = [];
{
	_res = [_x, GRLIB_Marker_ATM, 500] call _marker_dist;
	if (_res) then { GRLIB_Marker_ATM pushback _x };
} forEach _tmp_marker;

// SRV (800m)
_tmp_marker = GRLIB_Marker_SRV;
GRLIB_Marker_SRV = [];
{
	_res = [_x, GRLIB_Marker_SRV, 800] call _marker_dist;
	if (_res) then { GRLIB_Marker_SRV pushback _x };
} forEach _tmp_marker;

// FUEL (400m)
_tmp_marker = GRLIB_Marker_FUEL;
GRLIB_Marker_FUEL = [];
{
	_res = [_x, GRLIB_Marker_FUEL, 400] call _marker_dist;
	if (_res) then { GRLIB_Marker_FUEL pushback _x };
} forEach _tmp_marker;

// SHOP (1000m)
_tmp_marker = GRLIB_Marker_SHOP;
GRLIB_Marker_SHOP = [];
{
	_res = [_x, GRLIB_Marker_SHOP, 1000] call _marker_dist;
	if (_res) then { GRLIB_Marker_SHOP pushback _x };
} forEach _tmp_marker;

[false] execVM "scripts\client\misc\init_markers.sqf";

diag_log "--- LRX Marker Export ----------------------------------------------------";
diag_log format ["GRLIB_Marker_ATM = %1;",GRLIB_Marker_ATM];
diag_log format ["GRLIB_Marker_SRV = %1;",GRLIB_Marker_SRV];
diag_log format ["GRLIB_Marker_FUEL = %1;",GRLIB_Marker_FUEL];
diag_log format ["GRLIB_Marker_SHOP = %1;",GRLIB_Marker_SHOP];
diag_log "--------------------------------------------------------------------------";
