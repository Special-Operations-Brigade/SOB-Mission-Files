_target = _this select 0;
_caller = _this select 1;
_actionID = _this select 2;

_requiredItem = "mti_armoury_mag_breaching_charge";

if (_caller isKindOf "Man") then {

    if (_requiredItem in magazines _caller) then {

        _caller removeMagazine _requiredItem;

        _target removeAction _actionID;

        hint "Charge planted! Breaching in 10 seconds...";

        _nul = [_target] spawn {

            _door = _this select 0;

            sleep 10;

            deleteVehicle _door;

            hint "Boom! Door breached.";

        };

    } else {

        hint "You need a Breaching Charge to breach this door.";

    };

};