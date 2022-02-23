$PSScript = "C:\_SCRIPTS\LoadTest\cmd"

write-host "Install scripts :"

#&"$PSScript\1.ps1"
#&"$PSScript\2.ps1"
#&"$PSScript\3.ps1"

&"$PSScript\PSconnect.ps1"
&"$PSScript\Import-PBIX-File.ps1"
&"$PSScript\PSdisconnect.ps1"