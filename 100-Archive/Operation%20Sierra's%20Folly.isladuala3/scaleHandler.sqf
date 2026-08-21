params ["_object", "_scale"];

if (isServer) then {
    private _vecDir = vectorDir _object;
    private _vecUp = vectorUp _object;
    private _simpleObject = _object call BIS_fnc_replaceWithSimpleObject;
    	[_simpleObject, [_vecDir, _vecUp]] remoteExec ["setVectorDirAndUp", 0, true];
    [_simpleObject, _scale] remoteExec ["setObjectScale", 0, true];
};