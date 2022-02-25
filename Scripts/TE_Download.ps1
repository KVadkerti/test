# Download URL for Tabular Editor portable:
$TabularEditorUrl = "https://github.com/KVadkerti/test/raw/develop/TabularEditor/TabularEditor.Portable.zip" 

Write-Host "Download Tabular Editor from: " $TabularEditorUrl
  
# Download destination (root of PowerShell script execution path):
$DownloadDestination = join-path (get-location) "TabularEditor.zip"

Write-Host "Download destination: " $DownloadDestination

# Download from GitHub:
Invoke-WebRequest -Uri $TabularEditorUrl -OutFile $DownloadDestination

Write-Host "Download "

# Unzip Tabular Editor portable, and then delete the zip file:
Expand-Archive -Path $DownloadDestination -DestinationPath ((get-location).Path + "/TabularEditor")
Remove-Item $DownloadDestination

Write-Host "Download Tabular Editor and delete temporaly zip file."