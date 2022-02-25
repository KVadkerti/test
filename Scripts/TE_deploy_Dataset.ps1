Write-Host "Deploy Power BI Dataset"
Write-Host "Build.SourcesDirectory: " $Env:BUILD_SOURCESDIRECTORY
Write-Host "Build.ArtifactStagingDirectory: " $Env:BUILD_ARTIFACTSTAGINGDIRECTORY
Write-Host "Power BI Connection: "$Env:PBICONNECTION
#$(Build.SourcesDirectory)
#$(Build.ArtifactStagingDirectory)

# Cmd Line D:\a\1\s\TabularEditor\TabularEditor.exe "D:\a\1\a\NewDimModel.bim" -DEPLOY "$(PBIConnection)" "NewDim"

$p = Start-Process -filePath $Env:BUILD_SOURCESDIRECTORY\TabularEditor\TabularEditor.exe `
       -Wait -NoNewWindow -PassThru `
       -argumentList "`"$Env:BUILD_ARTIFACTSTAGINGDIRECTORY\NewDimModel.bim`" -DEPLOY `"$Env:PBICONNECTION`" `"NewDim`""

exit $p.ExitCode