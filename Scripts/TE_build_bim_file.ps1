Write-Host "Build .bim file"
Write-Host "Build.SourcesDirectory: " $Env:BUILD_SOURCESDIRECTORY
Write-Host "Build.ArtifactStagingDirectory: " $Env:BUILD_ARTIFACTSTAGINGDIRECTORY
#$(Build.SourcesDirectory)
#$(Build.ArtifactStagingDirectory)

$p = Start-Process -filePath $Env:BUILD_SOURCESDIRECTORY\TabularEditor\TabularEditor.exe `
       -Wait -NoNewWindow -PassThru `
       -argumentList "`"$Env:BUILD_ARTIFACTSTAGINGDIRECTORY\DimModel`" -B `"$Env:BUILD_ARTIFACTSTAGINGDIRECTORY\NewDimModel.bim`""

exit $p.ExitCode