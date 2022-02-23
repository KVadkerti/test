write-host "Conected to Power BI"
Write-Host "Client Id " $env:clientId;
Write-Host "Client Secret" $(clientsecret)

$User = $env:clientId;
$clientsec = "$(clientsecret)" | ConvertTo-SecureString -AsPlainText -Force

$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, $clientsec

Connect-PowerBIServiceAccount -Credential $Credential
