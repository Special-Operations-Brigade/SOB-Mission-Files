Hint "Defenses Deploying";
Sleep 10;
Hintsilent "";
Sleep 5;
Hint "Defenses Deployed\n Powering Up Turrets";
private _defenses = [
    Defense1, Defense2, Defense3, Defense4, Defense5, Defense6, Defense7,
    Defense8, Defense9, Defense10, Defense11, Defense12, Defense13
];

{
    _x hideObject false;
} forEach _defenses;

Sleep 5;
Hintsilent "";
Hint "Turrets Online";

{
    _x setVehicleAmmo 1;
} forEach _defenses;

Sleep 5;
Hintsilent "";