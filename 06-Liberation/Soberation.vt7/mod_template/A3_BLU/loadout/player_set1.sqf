_unit = _this select 0;

//  "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

//  "Add weapons";
_unit addWeapon "mti_armoury_weapon_DC17S";
_unit addHandgunItem "mti_armoury_weapons_core_HMRD_Blue";
_unit addHandgunItem "mti_armoury_mag_DC17S";
_unit addWeapon "mti_armoury_weapon_DC15A";
_unit addPrimaryWeaponItem "mti_armoury_weapons_core_HMRCO_Blue";
_unit addPrimaryWeaponItem "mti_armoury_mag_DC15A";
//  "Add containers";
_unit forceAddUniform "mti_armoury_equipment_trooper_uniform_CT";
_unit addVest "mti_armoury_equipment_trooper_vest_base";

//  "Add items to containers";
_unit addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {_unit addItemToUniform "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToUniform "mti_armoury_mag_DC15A";};
for "_i" from 1 to 2 do {_unit addItemToVest "mti_armoury_mag_DC17S";};
_unit addHeadgear "mti_armoury_equipment_trooper_helmet_CT";

//  "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";

// "Set identity";
//[_unit,"GreekHead_A3_02","male01eng"] call BIS_fnc_setIdentity;
