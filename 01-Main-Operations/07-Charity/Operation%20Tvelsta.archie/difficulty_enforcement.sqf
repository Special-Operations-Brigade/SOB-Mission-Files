if (difficulty != 3) then
{
	titleText ["<t color='#ff0000' size='8'>USE CUSTOM DIFFICULTY!</t><br/>", "PLAIN", -1, true, true];
	sleep 10;
	"EveryoneLost" call BIS_fnc_endMissionServer;
};