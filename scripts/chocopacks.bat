:: Ensure C:\Chocolatey\bin is on the path
set /p PATH=<C:\Windows\Temp\PATH

:: Install all the things; for example:
cmd /c choco install 7zip
cmd /c choco install notepadplusplus
cmd /c choco install sublimetext3
cmd /c choco install sublimetext3.packagecontrol
cmd /c choco install sublimetext3.powershellalias
cmd /c choco install sublimetext3-contextmenu
cmd /c choco install googlechrome
cmd /c choco install lastpass

cmd /c choco install poshgit