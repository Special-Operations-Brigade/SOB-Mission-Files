// if signature < 0 -> randomize signature
params ["_unit","_signature","_isTarget"];

if !(isServer) exitWith {};

#define CONST_SIGNATURE_LENGTH 10
#define CONST_SIGNATURE_DICTIONARY ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "A", "B", "C", "D", "E", "F"]

if ((_signature isEqualType 0) && {_signature < 0}) then {
	private _newSignature = [];
	for "_i" from 0 to (CONST_SIGNATURE_LENGTH - 1) do {
		_newSignature pushBack (selectRandom CONST_SIGNATURE_DICTIONARY);
	};
	_signature = _newSignature joinString "";
};

_unit setVariable ["mti_mission_hasBio",true];

private _action = [
	"bioScan",
	"Start Bio Scan",
	"",
	{
		params ["_target", "_player", "_params"];
		_params params ["_signature","_isTarget"];
		[
			15,
			[_target,_signature,_isTarget],
			{
				(_this select 0) params ["_target","_signature","_isTarget"];
				systemChat (format ["_target: %3 | _signature: %1 | _isTarget: %2",_signature,_isTarget,_target]);

				[
					format ["== Bio-Scan Completed ==<br/><br/>Signature: %1<br/>Is Target: %2",_signature,["No","Yes"] select _isTarget],
					3
				] call ACE_common_fnc_displayTextStructured;
			},
			{
				(_this select 0) params ["_target","_signature","_isTarget"];
				systemChat (format ["_target: %3 | _signature: %1 | _isTarget: %2",_signature,_isTarget,_target]);

				if !((currentWeapon ACE_player) isKindOf ["hgun_esd_01_F", configFile >> "CfgWeapons"]) then {
					["Scanner needs to be equipped and in hand!"] call ACE_common_fnc_displayTextStructured;
				};
			},
			"Scanning Bio Signature...",
			{
				(_this select 0) params ["_target","_signature","_isTarget"];
				systemChat (format ["_target: %3 | _signature: %1 | _isTarget: %2",_signature,_isTarget,_target]);

				((currentWeapon ACE_player) isKindOf ["hgun_esd_01_F", configFile >> "CfgWeapons"])
			}
		] call ACE_common_fnc_progressBar;
	},
	{
		params ["_signature","_isTarget"];
		(_target getVariable ["mti_mission_hasBio",false]) && ((currentWeapon _player) isKindOf ["hgun_esd_01_F", configFile >> "CfgWeapons"])},
	{},
	[_signature,_isTarget]
] call ACE_interact_menu_fnc_createAction;

[_unit,0,["ACE_MainActions"],_action] remoteExecCall ["ACE_interact_menu_fnc_addActionToObject",0,true];
