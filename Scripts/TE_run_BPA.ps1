Write-Host "Run a Best Practice Analysis"

Write-Host $Env:BUILD_SOURCESDIRECTORY
Write-Host $Env:BUILD_ARTIFACTSTAGINGDIRECTORY
#$(Build.SourcesDirectory
#$(Build.ArtifactStagingDirectory)

$p = Start-Process -filePath $Env:BUILD_SOURCESDIRECTORY\TabularEditor\TabularEditor.exe `
       -Wait -NoNewWindow -PassThru `
       -argumentList "`"$Env:BUILD_ARTIFACTSTAGINGDIRECTORY\DQ5.bim`" -A -G"

exit $p.ExitCode