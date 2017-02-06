$gitInstallerPath = "C:\Users\vagrant\Git-1.9.4-preview20140929.exe"

Start-Process -FilePath $gitInstallerPath  -ArgumentList '/VERYSILENT /NORESTART /NOCANCEL /SP- /CLOSEAPPLICATIONS /RESTARTAPPLICATIONS /COMPONENTS="assoc,assoc_sh"' -NoNewWindow -Wait

Write-Host "Adding Git to Path"
$newPath="${Env:Path};${Env:ProgramFiles(x86)}\Git\bin;${Env:ProgramFiles(x86)}\Git\share\vim\vim74"
Set-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment" -Name PATH -Value $newPath
[Environment]::SetEnvironmentVariable("PATH", $newPath, "Machine")

Write-Host "Setting autocrlf = true"
Start-Process -NoNewWindow -Wait -FilePath "${Env:ProgramFiles(x86)}\Git\bin\git.exe" -ArgumentList "config --global core.autocrlf true"

Remove-Item -Force -Path $gitInstallerPath

Start-Process -NoNewWindow -Wait -FilePath "setx" -ArgumentList "TERM msys"
