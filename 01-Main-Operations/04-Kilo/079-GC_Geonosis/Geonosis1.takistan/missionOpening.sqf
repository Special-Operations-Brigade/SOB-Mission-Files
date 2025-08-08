	//THIS IS THE MISSION OPENING TEXT - NAME IT WHATEVER YOU LIKE

// Only run on clients with interface (players)
if (!hasInterface) exitWith {};

// Wait for player to be ready
waitUntil {!isNull player && alive player};
sleep 2; // Additional delay to ensure everything is loaded

// GEONOSIS OPENING SEQUENCE

// Opening Sequence
enableRadio false;
0 fadeSpeech 0;
0 fadeRadio 0;
0 fadeSound 0;

titleText ["22BBY", "BLACK FADED", 1];
sleep 5;

titleText ["There is unrest in the Galactic
Senate. Several thousand solar
systems have declared their
intentions to leave the Republic", "BLACK FADED", 14];
sleep 9;
titleText ["In the wake of the Separatist Uprising, Jedi forces have tracked Count Dooku to the dusty world of Geonosis, a barren desert filled with droid foundries and hidden armies", "BLACK FADED", 1];
sleep 9;
titleText ["As diplomacy fails, the newly-formed Grand Army of the Republic is mobilized for the first time. Thousands of clone troopers—bred for war, trained from birth—prepare to descend into the chaos of their first true test.", "BLACK FADED", 12];
sleep 12;
titleText ["Begun, the Clone Wars have", "BLACK FADED", 12];
sleep 7;
titleText ["<t color='#ffffff' size='1'>GEONOSIS :  O U T E R  R I M :  2 2  B B Y <br/>____________________</t><br/><t color='#ffffff' size='5'>THE BATTLE OF GEONOSIS - DAY ONE</t>", "BLACK FADED", -1, true, true];
sleep 6;

3 fadeSpeech 1;
3 fadeRadio 1;
10 fadeSound 1;
enableRadio true;
sleep 1;

titleText ["", "BLACK FADED", 1];
sleep 1;
titleText ["", "BLACK IN", 3];
sleep 3;
titleText ["", "PLAIN", 0];
sleep 3;
	
	