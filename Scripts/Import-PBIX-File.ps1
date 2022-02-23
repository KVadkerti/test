#Manula connect to account
#Connect-PowerBIServiceAccount | Out-Null

$workspaceName = "CZE BI (TEST)"
$ReportName = "DimModel.pbix"

$workspace = Get-PowerBIWorkspace -Name $workspaceName

$import = New-PowerBIReport -Path "$FilePath\$ReportName" -Workspace $workspace -ConflictAction CreateOrOverwrite

#$import = New-PowerBIReport -Path "C:\Users\kvadkerti\git\test\PBI\DataSource\DimModel.pbix" -Workspace "CZE BI (TEST)" -ConflictAction CreateOrOverwrite
#$import = New-PowerBIReport -Path 'C:\Users\kvadkerti\git\test\PBI\DataSource\DimModel.pbix' -Name 'Report' -Workspace (Get-PowerBIWorkspace -Name 'CZE BI (TEST)')

$import | select *

#Disconnect-PowerBIServiceAccount