write-host "Conected to Power BI"

$User = $env:User
$Pword = ConvertTo-SecureString –String $env:SecurePassword –AsPlainText -Force

$Credential = New-Object –TypeName System.Management.Automation.PSCredential –ArgumentList $User, $Pword 

Connect-PowerBIServiceAccount -Credential $Credential