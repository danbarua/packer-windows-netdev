Write-Host "Disabling Browser Choice Dialog"
Set-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\Software\BrowserChoice" -Name Enable -Value 0