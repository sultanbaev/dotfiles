@echo off

@mkdir "%temp%\HeavyLoad-x86\"
@echo y| xcopy "%~dp0\HeavyLoad-x86\*" "%temp%\HeavyLoad-x86\"
@echo y| xcopy "%~dp0restartntimes.cmd" "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"
@echo y| xcopy "%~dp0cancelrestartntimes.cmd" "%USERPROFILE%\Desktop\"

@ping -n 5 127.0.0.1