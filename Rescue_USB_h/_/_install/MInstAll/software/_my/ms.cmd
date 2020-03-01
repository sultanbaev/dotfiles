@echo off

@xcopy "%SYSTEMDRIVE%\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Office\*.lnk" "%SYSTEMDRIVE%\Users\%USERNAME%\Desktop"
@xcopy "%SYSTEMDRIVE%\Documents and Settings\All Users\Главное меню\Программы\Microsoft Office\*.lnk" "%SYSTEMDRIVE%\Documents and Settings\%USERNAME%\Рабочий стол"