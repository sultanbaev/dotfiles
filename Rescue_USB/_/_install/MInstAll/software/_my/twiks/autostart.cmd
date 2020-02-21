rem Autostart
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer" /v "NoDriveTypeAutoRun" /t REG_DWORD /d 0xff /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Cdrom" /v "AutoRun" /t REG_DWORD /d 0x0 /f