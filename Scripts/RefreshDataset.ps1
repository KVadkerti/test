$Workspace = "CZE BI (TEST)"
$DatasetName = "CZE INTRA Pilot DQ2"
$GroupId = "da80544e-84c7-497b-9621-13f88e339eea"
$DatasetId = "4ba2a41c-e7a9-4ed6-af64-9be640e82378"

$User = $env:User
$Pword = ConvertTo-SecureString –String $env:SecurePassword –AsPlainText -Force

$Credential = New-Object –TypeName System.Management.Automation.PSCredential –ArgumentList $User, $Pword 

Connect-PowerBIServiceAccount -Credential $Credential

#$GroupId = Get-PowerBIWorkspace -Scope Individual -Name "CZE BI (TEST)" | Select-Object Id
#$workspace1

write-host "Refresh dataset: CZE INTRA Pilot DQ2"


Invoke-PowerBIRestMethod -Method Post -Url groups/$GroupId/datasets/$DatasetId/refreshes -WarningAction Ignore


Disconnect-PowerBIServiceAccount

