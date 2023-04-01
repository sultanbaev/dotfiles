CD /d %~dp0
FOR %%i IN (Z Y X W V U T S R Q P O N M L K J I H G F E D C B A) DO IF NOT EXIST %%i:\nul SET freechar=%%i && GOTO :findsys
:findsys
SET freechar=%freechar: =%
FOR /f "tokens=2" %%i IN ('ECHO list volume ^| DISKPART ^| FINDSTR /e /c:"System  "') DO SET sysvol=%%i
FOR /f "tokens=2" %%i IN ('ECHO list volume ^| DISKPART ^| FINDSTR /e /c:"Hidden  "') DO SET sysvol=%%i
FOR /f "tokens=2" %%i IN ('ECHO list volume ^| DISKPART ^| FINDSTR /e "Системны"') DO SET sysvol=%%i
FOR /f "tokens=2" %%i IN ('ECHO list volume ^| DISKPART ^| FINDSTR /e /c:"Скрытый "') DO SET sysvol=%%i
(ECHO select volume %sysvol% && ECHO assign letter %freechar%) | DISKPART 
FOR %%i IN (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) DO IF EXIST %%i:\sources\boot64.wim (
IF NOT EXIST %systemdrive%\Recovery\WindowsRE (
DEL /a /f /q %freechar%:\Recovery\WindowsRE\winre.wim
IF %PROCESSOR_ARCHITECTURE% == AMD64 (
%%i:\sources\dism.exe /Export-Image /SourceImageFile:%%i:\sources\boot64.wim /SourceIndex:3 /DestinationImageFile:%freechar%:\Recovery\WindowsRE\winre.wim /Compress:max /Bootable
) ELSE (
%%i:\sources\dism.exe /Export-Image /SourceImageFile:%%i:\sources\boot.wim /SourceIndex:3 /DestinationImageFile:%freechar%:\Recovery\WindowsRE\winre.wim /Compress:max /Bootable
)) ELSE (
DEL /a /f /q %systemdrive%\Recovery\WindowsRE\winre.wim
IF %PROCESSOR_ARCHITECTURE% == AMD64 (
%%i:\sources\dism.exe /Export-Image /SourceImageFile:%%i:\sources\boot64.wim /SourceIndex:3 /DestinationImageFile:%systemdrive%\Recovery\WindowsRE\winre.wim /Compress:max /Bootable
) ELSE (
%%i:\sources\dism.exe /Export-Image /SourceImageFile:%%i:\sources\boot.wim /SourceIndex:3 /DestinationImageFile:%systemdrive%\Recovery\WindowsRE\winre.wim /Compress:max /Bootable ))
REAGENTC /setbootshelllink /configfile data\AddDiagnosticsToolToBootMenu.xml
REAGENTC /enable
GOTO :rerights )
:rerights
(ECHO select volume %sysvol% && ECHO remove letter %freechar%) | DISKPART
REG QUERY "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductName | FINDSTR /i /e LANGUAGE
IF NOT ERRORLEVEL 1 (
XCOPY /e /y /i "data\Windows Languages Switcher" "%ProgramFiles%\Windows Languages Switcher"
COPY /y "data\LngSwitcher for Windows 10 SL.lnk" "%ProgramData%\Microsoft\Windows\Start Menu\Programs\LngSwitcher for Windows 10 SL.lnk"
IF %PROCESSOR_ARCHITECTURE% == AMD64 ( 
COPY /y "data\winreon_x64.exe" "%ProgramFiles%\Windows Languages Switcher\winreon.exe"
) ELSE ( 
COPY /y "data\winreon.exe" "%ProgramFiles%\Windows Languages Switcher\winreon.exe" ))
MOVE /y "KMS-activation.lnk" "%ProgramData%\Microsoft\Windows\Start Menu\Programs\KMS-activation.lnk"

mkdir "%systemdrive%\_\"
xcopy /y /e "%~dp0mysetup" "%systemdrive%\_\"

msiexec /i %systemdrive%\_\aspia\aspia-host-2.4.0-x86.msi /passive

rem 10S
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v LocalAccountTokenFilterPolicy /t REG_DWORD /d 1 /f
rem RDP
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
rem disable updates
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv" /v "Start" /t REG_DWORD /d 0x4 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" /v "AUOptions" /t REG_DWORD /d 0x1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate " /t REG_DWORD /d 0x1 /f
rem Do not hide tray
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "EnableAutoTray" /t REG_DWORD /d 0x0 /f
rem Englishdefault
reg add "HKCU\Keyboard Layout\Preload" /v "1" /t REG_SZ /d 00000409 /f
reg add "HKCU\Keyboard Layout\Preload" /v "2" /t REG_SZ /d 00000419 /f
rem Disable grouping, show hidden, do not hide file ext
rem reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarGlomLevel" /t REG_DWORD /d 0x0 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d 0x1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d 0x0 /f
rem My comp on desktop
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0x0 /f

netsh advfirewall set currentprofile state off

powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
powercfg -x disk-timeout-ac 0
powercfg -x -standby-timeout-ac 0
powercfg -x -monitor-timeout-ac 0

sc config RemoteRegistry start=auto
sc config RpcSs start=auto
sc start RemoteRegistry
sc start RpcSs

net user /add umrosb Admin453700
net user /add operator
net localgroup administrators umrosb /add
net localgroup users operator /add

start gpupdate /force

RD /s /q %windir%\setup\scripts\data
DEL /f /q SetupComplete.cmd