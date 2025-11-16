if (!isServer) exitWith {};

allZombieMusicTracks = 
[
	"OPTRE_Music_PrepareToDrop",
	"OPTRE_Music_NothingButSnipers",
	"OPTRE_Music_AlwaysRemember",
	"OPTRE_Music_AndOverTheHills",
	"SquadofBrothers",
	"OPTRE_Music_BandofBravery",
	"OPTRE_Music_Brave",
	"OPTRE_Music_Cityscapes",
	"OPTRE_Music_CloseQuarters",
	"OPTRE_Music_DesperateDefense",
	"OPTRE_Music_DesperateMeasures",
	"OPTRE_Music_EarthCity",
	"OPTRE_Music_Exodus",
	"OPTRE_Music_FinalDawn",
	"OPTRE_Music_GoingLoud",
	"OPTRE_Music_HighCharity",
	"OPTRE_Music_ImpendThis",
	"OPTRE_Music_Movement",
	"OPTRE_Music_TheFewTheBrave",
	"TKE_OST_ExoplanetaryTactics",
	"TKE_OST_BattleforMars"
];

currentTrackNumber = round random (count allZombieMusicTracks - 1);

addMusicEventHandler ["MusicStop", 
{
	[] spawn {
		currentTrackNumber = (currentTrackNumber + 1);
		if(currentTrackNumber >= (count allZombieMusicTracks)) then {currentTrackNumber = 0;};
		sleep random 90; // Random delay between tracks
		[allZombieMusicTracks select currentTrackNumber] remoteExec ["playMusic", 0];
	};
}];

[] spawn {
	sleep 5; 
	[allZombieMusicTracks select currentTrackNumber] remoteExec ["playMusic", 0];
};