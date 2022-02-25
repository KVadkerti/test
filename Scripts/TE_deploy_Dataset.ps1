Write-Host "Deploy Power BI Dataset"
Write-Host "Build.SourcesDirectory: " $Env:BUILD_SOURCESDIRECTORY
Write-Host "Build.ArtifactStagingDirectory: " $Env:BUILD_ARTIFACTSTAGINGDIRECTORY
#Write-Host "Power BI Connection: "$Env:PBICONNECTION
#$(Build.SourcesDirectory)
#$(Build.ArtifactStagingDirectory)

# Cmd Line D:\a\1\s\TabularEditor\TabularEditor.exe "D:\a\1\a\NewDimModel.bim" -DEPLOY "$(PBIConnection)" "NewDim"
#-DEPLOY `"Data Source=$(DataSource);User ID=$(UserID);Password=$(UserPassword)`"

$p = Start-Process -filePath $Env:BUILD_SOURCESDIRECTORY\TabularEditor\TabularEditor.exe `
       -Wait -NoNewWindow -PassThru `
       -argumentList "`"$Env:BUILD_ARTIFACTSTAGINGDIRECTORY\NewDimModel.bim`" -DEPLOY `"Data Source=$Env:DATASOURCE;User ID=$Env:USERID;Password=$Env:USERPASSWORD`" `"NewDim`""

exit $p.ExitCode