write-host "Install scripts :"
write-host $FilePath
write-host $(System.DefaultWorkingDirectory)
write-host $File

#&"$PSScript\1.ps1"
#&"$PSScript\2.ps1"
#&"$PSScript\3.ps1"

#& $FilePath'\PSconnect.ps1'
#& $FilePath'\Import-PBIX-File.ps1'
#& $FilePath'\PSdisconnect.ps1'