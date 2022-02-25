Write-Host "Run a Best Practice Analysis"

$p = Start-Process -filePath $(Build.SourcesDirectory)\TabularEditor\TabularEditor.exe `
       -Wait -NoNewWindow -PassThru `
       -argumentList "`"$(Build.ArtifactStagingDirectory)\DQ5.bim`" -A -G"

exit $p.ExitCode