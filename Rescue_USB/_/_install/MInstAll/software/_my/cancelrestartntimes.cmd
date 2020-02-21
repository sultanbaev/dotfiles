@echo off

@shutdown -a

@del "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\restartntimes.cmd"
@del /q %temp%\rstrt.*
@del /q "%temp%\HeavyLoad-x86\"
@del /q %0