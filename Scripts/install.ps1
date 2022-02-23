write-host "Install scripts :"
write-host 'Path ' $FilePath

write-host $(System.DefaultWorkingDirectory)

#&"$PSScript\1.ps1"
#&"$PSScript\2.ps1"
#&"$PSScript\3.ps1"

#& $FilePath'\PSconnect.ps1'
#& $FilePath'\Import-PBIX-File.ps1'
#& $FilePath'\PSdisconnect.ps1'