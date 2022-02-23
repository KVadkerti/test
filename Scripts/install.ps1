write-host "Install scripts :"
$FilePath = "$Env:SYSTEM_DEFAULTWORKINGDIRECTORY\$Env:RELEASE_PRIMARYARTIFACTSOURCEALIAS\Publish\"

Write-Host $FilePath
Write-Host $Env:SYSTEM_DEFAULTWORKINGDIRECTORY
Write-Host $Env:RELEASE_PRIMARYARTIFACTSOURCEALIAS
#write-host $File

#&"$PSScript\1.ps1"
#&"$PSScript\2.ps1"
#&"$PSScript\3.ps1"

#& $FilePath'\PSconnect.ps1'
& $FilePath'\Import-PBIX-File.ps1'
#& $FilePath'\PSdisconnect.ps1'