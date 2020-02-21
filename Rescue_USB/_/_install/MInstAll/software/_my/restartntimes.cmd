@echo off

@if exist %temp%\rstrt.5 goto tixe
@if exist %temp%\rstrt.4 goto rstrt5
@if exist %temp%\rstrt.3 goto rstrt4
@if exist %temp%\rstrt.2 goto rstrt3
@if exist %temp%\rstrt.1 goto rstrt2


@:rstrt1
@echo 1 > %temp%\rstrt.1
@goto cnsl


@:rstrt2
@echo 2 > %temp%\rstrt.2
@goto cnsl


@:rstrt3
@echo 3 > %temp%\rstrt.3
@goto cnsl


@:rstrt4
@echo 4 > %temp%\rstrt.4
@goto cnsl


@:rstrt5
@echo 5 > %temp%\rstrt.5
@goto cnsl


@:tixe
@del /q %temp%\rstrt.*
@del /q "%USERPROFILE%\Desktop\cancelrestartntimes.cmd"
@del /q "%temp%\HeavyLoad-x86\"
@del /q %0


@:cnsl
@shutdown -r -f -t 270
@cmd /k "%temp%\HeavyLoad-x86\HeavyLoad.exe /CPU /MEMORY /FILE /GPU /TREESIZE /DURATION 4 /AUTOEXIT /START"
