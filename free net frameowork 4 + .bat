echo@
start windows powershell

Set-Service -Name wuauserv -StartupType Automatic
Start-Service -Name wuauserv

Set-Service -Name TrustedInstaller -StartupType Manual
Start-Service -Name TrustedInstaller
Install-WindowsFeature -Name NET-Framework-Core -Source D:\sources\sxs
