
// Heli Taxi classname definition

// Taxi classname by size 
taxi_type_2 = [];
taxi_type_6 = [];
taxi_type_8 = [];
taxi_type_14 = [];

// *** DEFAULT ***
if ( isNil "taxi_helipad_type" ) then { taxi_helipad_type = "Land_HelipadCivil_F" };

default_taxi_type_2 = [
	"mti_armoury_vehicles_laatle_unarmed"
];

default_taxi_type_6 = [
	"mti_armoury_vehicles_laatle_gunship"
];

default_taxi_type_8 = [
	"mti_armoury_vehicles_laati_mk2"
];

default_taxi_type_14 = [
	"mti_armoury_vehicles_nuclass_rhoclass"
];

if (GRLIB_mod_taxi in [0,1]) then {
	// *** FRIENDLIES ***
	private _path = format ["mod_template\%1\classnames_taxi.sqf", GRLIB_mod_west];
	[_path] call F_getTemplateFile;
	if (isNil "overide_taxi_type_2") then { overide_taxi_type_2 = default_taxi_type_2 };
	taxi_type_2 append overide_taxi_type_2;
	if (isNil "overide_taxi_type_6") then { overide_taxi_type_6 = default_taxi_type_6 };
	taxi_type_6 append overide_taxi_type_6;
	if (isNil "overide_taxi_type_8") then { overide_taxi_type_8 = default_taxi_type_8 };
	taxi_type_8 append overide_taxi_type_8;
	if (isNil "overide_taxi_type_14") then { overide_taxi_type_14 = default_taxi_type_14 };
	taxi_type_14 append overide_taxi_type_14;
};

if (GRLIB_mod_taxi in [0,2]) then {
	// *** BADDIES ***
	private _path = format ["mod_template\%1\classnames_taxi.sqf", GRLIB_mod_east];
	[_path] call F_getTemplateFile;
	taxi_type_2 append overide_taxi_type_2;
	taxi_type_6 append overide_taxi_type_6;
	taxi_type_8 append overide_taxi_type_8;
	taxi_type_14 append overide_taxi_type_14;
};

// Filter (remove dup)
taxi_type_2 = taxi_type_2 arrayIntersect taxi_type_2;
taxi_type_6 = taxi_type_6 arrayIntersect taxi_type_6;
taxi_type_8 = taxi_type_8 arrayIntersect taxi_type_8;
taxi_type_14 = taxi_type_14 arrayIntersect taxi_type_14;
