   scopeName "main6";
        while{true}do{
        trapscreen setobjecttexture [0,"nope1.ogv"];
        ["nope1.ogv",[10,10]]
        spawn bis_fnc_playvideo;
        sleep 999999999999;
        if (!alive trapscreen) then {
            breakTo "main6";
        };
    };