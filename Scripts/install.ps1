#$PSScript = "C:\_SCRIPTS\LoadTest\cmd"

write-host "Install scripts :"

#&"$PSScript\1.ps1"
#&"$PSScript\2.ps1"
#&"$PSScript\3.ps1"

&"$FilePath\PSconnect.ps1"
&"$FilePath\Import-PBIX-File.ps1"
&"$FilePath\PSdisconnect.ps1"