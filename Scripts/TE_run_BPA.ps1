Write-Host "Run a Best Practice Analysis"
Write-Host "Build.SourcesDirectory: " $Env:BUILD_SOURCESDIRECTORY
Write-Host "Build.ArtifactStagingDirectory: " $Env:BUILD_ARTIFACTSTAGINGDIRECTORY
#$(Build.SourcesDirectory
#$(Build.ArtifactStagingDirectory)

$p = Start-Process -filePath $Env:BUILD_SOURCESDIRECTORY\TabularEditor\TabularEditor.exe `
       -Wait -NoNewWindow -PassThru `
       -argumentList "`"$Env:BUILD_ARTIFACTSTAGINGDIRECTORY\DQ5.bim`" -AX `"$Env:BUILD_ARTIFACTSTAGINGDIRECTORY\BPARules.json`" -G"

exit $p.ExitCode