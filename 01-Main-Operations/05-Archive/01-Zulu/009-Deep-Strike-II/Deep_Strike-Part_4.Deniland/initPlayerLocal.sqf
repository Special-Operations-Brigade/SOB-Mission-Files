arca_mission_rxval = 30;
arca_mission_txval = 1/arca_mission_rxval;

if ((getPlayerUID player) in ["76561198120665981", "76561198275533441"]) exitWith {};

[
	{
		params ["_args", "_handle"];

		if !(player getUnitTrait "Pilot") then {
			player enableInfoPanelComponent ["left","MinimapDisplay", false];
			player enableInfoPanelComponent ["right","MinimapDisplay", false];
			(vehicle player) enableInfoPanelComponent ["VehicleSystemsDisplayManagerComponentLeft","MinimapDisplay", false];
			(vehicle player) enableInfoPanelComponent ["VehicleSystemsDisplayManagerComponentRight","MinimapDisplay", false];

		} else {
			player enableInfoPanelComponent ["left","MinimapDisplay", true];
			player enableInfoPanelComponent ["right","MinimapDisplay", true];
			(vehicle player) enableInfoPanelComponent ["VehicleSystemsDisplayManagerComponentLeft","MinimapDisplay", true];
			(vehicle player) enableInfoPanelComponent ["VehicleSystemsDisplayManagerComponentRight","MinimapDisplay", true];
		};
	},
	1,
	[]
] call CBA_fnc_addPerFrameHandler;

["visionMode", {
	params ["_unit", "_visionMode"];

	if (_visionMode != 1) exitWith {
		_nul = [] spawn {
			arca_mission_nvgfx ppEffectEnable false;
			ppEffectDestroy arca_mission_nvgfx;
		};
	};

	if (_visionMode == 1) then {
		_nul = [] spawn {
			arca_mission_nvgfx = ppEffectCreate ["ColorCorrections", 2012];
			arca_mission_nvgfx ppEffectForceInNVG true;
			arca_mission_nvgfx ppEffectEnable true;
			arca_mission_nvgfx ppEffectAdjust [1, 0.05, 0, [0, 0, 0, 0], [0, 0, 0, 1], [0, 0, 0, 1]];
			arca_mission_nvgfx ppEffectCommit 2;
		};
	};
}, false] call CBA_fnc_addPlayerEventHandler;

/*
private _grp = createGroup [west, true];
[player] joinSilent _grp;
[_grp, (name player)] call CBA_fnc_setCallsign;
*/

player setVariable ["tf_receivingDistanceMultiplicator", arca_mission_rxval, true];
player setVariable ["tf_sendingDistanceMultiplicator", arca_mission_txval, true];
