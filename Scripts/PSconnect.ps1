#write-host "Conected to Power BI"
#Write-Host "Client Id " $env:clientId;
#Write-Host "Client Secret" $(clientsecret)

#$User = $env:clientId;
#$clientsec = "$(clientsecret)" | ConvertTo-SecureString -AsPlainText -Forc#e

#$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, $clientsec

#Connect-PowerBIServiceAccount -Credential $Credential


Write-Host "Client Id " $env:clientId;

#Write-Host "Client Secret" $(clientsecret)

$applicationId = $env:clientId;
$clientsec = "$(clientsecret)" | ConvertTo-SecureString -AsPlainText -Force

$credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $applicationId, $clientsec

Connect-PowerBIServiceAccount -Credential $credential

#Disconnect-PowerBIServiceAccount
