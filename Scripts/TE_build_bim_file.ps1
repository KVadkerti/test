Write-Host "Build .bim file"

$p = Start-Process -filePath $(Build.SourcesDirectory)\TabularEditor\TabularEditor.exe `
       -Wait -NoNewWindow -PassThru `
       -argumentList "`"$(Build.ArtifactStagingDirectory)\DimModel`" -B `"$(Build.ArtifactStagingDirectory)\NewDimModel.bim`""

exit $p.ExitCode