ace_hearing_disableVolumeUpdate = true;

defaultVolume = soundVolume;

0 fadeSound 0.9;
playMusic "intro";

sleep 1;
0 fadeSound 0.8;

sleep 1;
0 fadeSound 0.7;

sleep 1;
0 fadeSound 0.6;

sleep 1;
0 fadeSound 0.5;

sleep 1;
0 fadeSound 0.4;

sleep 1;
0 fadeSound 0.3;

sleep 1;
0 fadeSound 0.2;

sleep 1;
0 fadeSound 0.1;

sleep 20;

txt5Layer = "txt5" call BIS_fnc_rscLayer;
txt6Layer = "txt6" call BIS_fnc_rscLayer;
 
 
		_texta = "<t font ='EtelkaMonospaceProBold' align = 'center' size='1.4' color='#F98E05'>" + "'Operation Kessel Run'"+"</t>"; 
		[_texta,/* poz x */ 0,/* poz y */ 0.100,/*durata*/ 10,/* fade in?*/ 1,0,txt5Layer] spawn BIS_fnc_dynamicText;
sleep 5;

txt5aLayer = "txt5a" call BIS_fnc_rscLayer;
txt6aLayer = "txt6a" call BIS_fnc_rscLayer;
 
 
		_texta = "<t font ='EtelkaMonospaceProBold' align = 'center' size='0.5' color='#Ffffff'>" + "by ARC-5797 Charlie"+"</t>"; 
		[_texta,/* poz x */ 0,/* poz y */ 0.195,/*durata*/ 7,/* fade in?*/ 1,0,txt5aLayer] spawn BIS_fnc_dynamicText;

sleep 5;
titleFadeOut 1;

sleep 113;

;

addMusicEventHandler ["MusicStop", {0 fadeSound defaultVolume; defaultVolume = nil}];

ace_hearing_disableVolumeUpdate = false;