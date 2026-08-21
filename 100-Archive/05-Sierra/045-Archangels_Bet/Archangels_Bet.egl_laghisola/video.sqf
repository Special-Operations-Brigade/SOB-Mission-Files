  scopeName "main6";
        while{true}do{
        tv setobjecttexture [0,"Never-gonna-give-Trim.ogv"];
        ["Never-gonna-give-Trim.ogv",[10,10]]
        spawn bis_fnc_playvideo;
        sleep 99999999;
        if (!alive tv) then {
            breakTo "main6";
        };
    };
