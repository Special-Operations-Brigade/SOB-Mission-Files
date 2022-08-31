#Get params from Mission Params and Master Info
param ($Server, $verifySignatures, $EnableVON, $EnableBattleye, $Headless_Clients, $Enable3rdPerson, $Password, $MissionFolder, $ClientMods, $ServerMods, $OptionalMods, $steamcmd_username, $steamcmd_Password, $Arma3_AdminPass, $Arma3_CommandPass)

#Variables
$steamcmd_Dir = 'F:\ArcaServer\steamcmd'
$Repo_Dir = 'F:\ArcaServer\Arca-Mission-Files'
$Mod_Dir = 'F:\ArcaServer\Mods'

if ($bg -eq $null) {
	$bg = 0
} else {
	$bg = 1
}

#Master files used to create Server files
$Master_Server_Config = 'F:\ArcaServer\Arca-Mission-Files\Server_Files\MASTER SERVER CONFIG.cfg'
$Master_Server_Network = 'F:\ArcaServer\Arca-Mission-Files\Server_Files\Arma3.cfg'
$Master_Server_Key='F:\ArcaServer\Global\a3.bikey'

$Master_BEServer_x64 = 'F:\ArcaServer\Arca-Mission-Files\Server_Files\Master BEServer_x64.cfg'
$Master_Battleye_Config = 'F:\ArcaServer\Arca-Mission-Files\Server_Files\Master Battleye Config.cfg'
$Master_Server_Profile= 'F:\ArcaServer\Arca-Mission-Files\Server_Files\ArcaServer.Arma3Profile'

#Set Server Specific Locations
If ($Server -eq 1) {
    $Server_Dir='C:\Servers\Arma 3\EU2'
	$Server_port='2702'
	$Server_Hostname='[SOB] Special Operations Brigade | Operations Server'
	$RCON_Port = 2707
	$ServerLocalMods = 'C:\Mods\@A3Log;'
	$LogsDir = 'C:\Servers\Arma 3\Logs Archive\EU2'
	$Beta = ''

	$steamcmd_Dir = 'C:\steamcmd'
	$Repo_Dir = 'C:\SOB\SOB-Mission-Files'
	$Mod_Dir = 'C:\Mods'

	#Master files used to create Server files
	$Master_Server_Config = 'C:\SOB\SOB-Mission-Files\Server_Files\MASTER SERVER CONFIG.cfg'
	$Master_Server_Network = 'C:\SOB\SOB-Mission-Files\Server_Files\Arma3.cfg'
	$Master_Server_Key='C:\Program Files (x86)\Steam\steamapps\common\Arma 3\Keys\a3.bikey'

	$Master_BEServer_x64 = 'C:\SOB\SOB-Mission-Files\Server_Files\Master BEServer_x64.cfg'
	$Master_Battleye_Config = 'C:\SOB\SOB-Mission-Files\Server_Files\Master Battleye Config.cfg'
	$Master_Server_Profile= 'C:\SOB\SOB-Mission-Files\Server_Files\ArcaServer.Arma3Profile'
}

If ($Server -eq 2) {
    $Server_Dir='C:\Servers\Arma 3\EU3'
	$Server_port='2502'
	$Server_Hostname='[SOB] Special Operations Brigade | Training Server'
	$RCON_Port = 2507
	$ServerLocalMods = 'C:\Mods\@A3Log;'
	$LogsDir = 'C:\Servers\Arma 3\Logs Archive\EU3'
	$Beta = ''

	$steamcmd_Dir = 'C:\steamcmd'
	$Repo_Dir = 'C:\SOB\SOB-Mission-Files'
	$Mod_Dir = 'C:\Mods'

	#Master files used to create Server files
	$Master_Server_Config = 'C:\SOB\SOB-Mission-Files\Server_Files\MASTER SERVER CONFIG.cfg'
	$Master_Server_Network = 'C:\SOB\SOB-Mission-Files\Server_Files\Arma3.cfg'
	$Master_Server_Key='C:\Program Files (x86)\Steam\steamapps\common\Arma 3\Keys\a3.bikey'

	$Master_BEServer_x64 = 'C:\SOB\SOB-Mission-Files\Server_Files\Master BEServer_x64.cfg'
	$Master_Battleye_Config = 'C:\SOB\SOB-Mission-Files\Server_Files\Master Battleye Config.cfg'
	$Master_Server_Profile= 'C:\SOB\SOB-Mission-Files\Server_Files\ArcaServer.Arma3Profile'
}

If ($Server -eq 3) {
    $Server_Dir='F:\ArcaServer\EU1'
	$Server_port='2702'
	$Server_Hostname='[SOB] Special Operations Brigade | Reserve Server'
	$RCON_Port = 2707
	$ServerLocalMods = ''
	$LogsDir = 'F:\ArcaServer\Logs Archive\EU1'
	$Beta = ''
}

$ServerMods = $ServerMods +";" +$ServerLocalMods
$HCMods = $ClientMods

$Server_mpmissions=Join-Path -Path $Server_Dir -ChildPath "\mpmissions"
$Server_Profiles=Join-Path -Path $Server_Dir -ChildPath "\Profiles"
$Server_Keys=Join-Path -Path $Server_Dir -ChildPath "\Keys"
$Server_Config=Join-Path -Path $Server_Dir -ChildPath '\Config.cfg'
$Server_Network_Config=Join-Path -Path $Server_Dir -ChildPath '\Profiles\Users\Administrator'

$Battleye_Profile_Path=Join-Path -Path $Server_Profiles -ChildPath "\Battleye"
$Battleye_BEServer_x64=Join-Path -Path $Battleye_Profile_Path -ChildPath "\BEServer_x64.cfg"
$Battleye_Config=Join-Path -Path $Battleye_Profile_Path -ChildPath "\Config\Config.cfg"

$Server_Profile=Join-Path -Path $Server_Profiles -ChildPath "\Users\ArcaServer"


##########################################################################################################
########################################### Now the fun begins ###########################################
##########################################################################################################

# Check for Updates
Write-Host "Checking for A3 Update" -ForegroundColor red -BackgroundColor white
Start-Process -NoNewWindow -Wait -Filepath "$steamcmd_Dir\steamcmd.exe" -ArgumentList "+login `"$steamcmd_username`" `"$steamcmd_Password`" +force_install_dir `"$Server_Dir`" +app_update 233780 -beta `"$Beta`"  +quit"

#Copy the Keys
Write-Host "Handling Keys" -ForegroundColor red -BackgroundColor white
Remove-Item $Server_Keys\*.bikey*
Copy-Item $Master_Server_Key $Server_Keys

if ($verifySignatures -eq 1){
	#Always manually copy TFAR till I think of a better way
	#get-childitem -path C:\Mods\@task_force_radio\keys *.bikey -recurse | copy-item -destination $Server_Keys

	#Client Mods
	$ClientModsArray = $ClientMods.split(";")
	Get-ChildItem -path $ClientModsArray -Filter "*.bikey" -File -Recurse | Foreach {
		if ([System.IO.File]::Exists([System.IO.Path]::Combine($Server_Keys, $_.Name))) {
			$_.FullName + " already exists in destination folder." }
		else {
		Copy-Item $_.FullName $Server_Keys
		}
}
	#Optional Mods
	$OptionalModsArray = $OptionalMods.split(";")
	Get-ChildItem -path $OptionalModsArray -Filter "*.bikey" -File -Recurse | Foreach {
		if ([System.IO.File]::Exists([System.IO.Path]::Combine($Server_Keys, $_.Name))) {
			$_.FullName + " already exists in destination folder." }
		else {
		Copy-Item $_.FullName $Server_Keys
		}
}
	$verifySignatures = 2
	} else {
	$verifySignatures = 0
}

#Handle the Logs
Write-Host "Handling Logs" -ForegroundColor red -BackgroundColor white

Move-Item -Path $Server_Profiles\*.log* -Destination $LogsDir
Move-Item -Path $Server_Profiles\*.mdmp* -Destination $LogsDir
Move-Item -Path $Server_Profiles\*.bidmp* -Destination $LogsDir
Move-Item -Path $Server_Profiles\*.RPT* -Destination $LogsDir

$limit = (Get-Date).AddDays(-30)
Get-ChildItem -Path $LogsDir -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.CreationTime -lt $limit } | Remove-Item -Force

#Server Config Setup
if ($EnableVON -eq 1) {
	$disableVON = 0
	} else {
	$disableVON = 1
}
Write-Host "Creating Config" -ForegroundColor red -BackgroundColor white
(get-content $Master_Server_Config).replace('PowershellPass', $Password) | Set-Content $Server_Config
(get-content $Server_Config).replace('PowershellMission', $MissionFolder) | Set-Content $Server_Config
(get-content $Server_Config).replace('PowershellHostname', $Server_Hostname) | Set-Content $Server_Config
(get-content $Server_Config).replace('PowershellAdmin', $Arma3_AdminPass) | Set-Content $Server_Config
(get-content $Server_Config).replace('PowershellCommand', $Arma3_CommandPass) | Set-Content $Server_Config
(get-content $Server_Config).replace('PSverifySignatures', $verifySignatures) | Set-Content $Server_Config
(get-content $Server_Config).replace('PSdisableVoN', $disableVON) | Set-Content $Server_Config
(get-content $Server_Config).replace('PSBattlEye', $EnableBattleye) | Set-Content $Server_Config


#Battleye Setup
#Write-Host "Configuring Battleye" -ForegroundColor red -BackgroundColor white
#(get-content $Master_BEServer_x64).replace('PSRCONPort', $RCON_Port) | Set-Content $Battleye_BEServer_x64
#(get-content $Battleye_BEServer_x64).replace('PSCommandPass', $Arma3_CommandPass) | Set-Content $Battleye_BEServer_x64

#(get-content $Master_Battleye_Config).replace('PSRCONPort', $RCON_Port) | Set-Content $Battleye_Config
#(get-content $Battleye_Config).replace('PSBePath', $Battleye_Profile_Path) | Set-Content $Battleye_Config

#Server.Arma3Profile Setup
Write-Host "Configuring Server Profile" -ForegroundColor red -BackgroundColor white
Remove-Item $Server_Profile\*ArcaServer.Arma3Profile*
(get-content $Master_Server_Profile).replace('PSthirdPersonView', $Enable3rdPerson) | Set-Content $Server_Profile\ArcaServer.Arma3Profile

#Move Network Config across, just in case removed during A3 Update
Write-Host "Copying Network Info" -ForegroundColor red -BackgroundColor white
Copy-Item $Master_Server_Network $Server_Network_Config

#Deal with clearing old mission, pack new, and move.
Write-Host "Packing Mission into Pbo and moving to selected server." -ForegroundColor red -BackgroundColor white
Remove-Item $Server_mpmissions\*.pbo*
$MissionDir=Get-ChildItem $Repo_Dir -attributes D -Recurse -include $MissionFolder
set-location "C:\Program Files (x86)\Mikero\DePboTools\bin"
.\MakePbo.exe -P -X thumbs.db,*.cpp,*.bak,*.png,*.dep,*.log -B -G $MissionDir $Server_mpmissions

#Boot the Server
Write-Host "Booting the Server." -ForegroundColor red -BackgroundColor white

if ($bg -eq 0) {
	Start-Process -FilePath "$Server_Dir\arma3server_x64.exe" -ArgumentList "-profiles=`"$Server_Profiles`" -port=$Server_port -name=ArcaServer `"-config=$Server_Config`" -autoinit -limitFPS=200 `"-ServerMod=$ServerMods`" `"-Mod=$ClientMods`""
}

if ($bg -eq 1) {
	Start-Process -WindowStyle Hidden -FilePath "$Server_Dir\arma3server_x64.exe" -ArgumentList "-profiles=`"$Server_Profiles`" -port=$Server_port -name=ArcaServer `"-config=$Server_Config`" -autoinit -limitFPS=200 `"-ServerMod=$ServerMods`" `"-Mod=$ClientMods`""
}

#Boot Headless Client/s
for ($i=1; $i -le $Headless_Clients; $i++)
{
	Write-Host "Booting HC in 30 seconds." -ForegroundColor red -BackgroundColor white
	sleep -seconds 30

	if ($bg -eq 0) {
    	Start-Process -FilePath "$Server_Dir\arma3server_x64.exe" -ArgumentList "-profiles=`"$Server_Profiles`" -client -connect=127.0.0.1 -port=$Server_port -password=$Password -limitFPS=200 `"-Mod=$HCMods`""
	}

	if ($bg -eq 1) {
    	Start-Process -WindowStyle Hidden -FilePath "$Server_Dir\arma3server_x64.exe" -ArgumentList "-profiles=`"$Server_Profiles`" -client -connect=127.0.0.1 -port=$Server_port -password=$Password -limitFPS=200 `"-Mod=$HCMods`""
	}
}