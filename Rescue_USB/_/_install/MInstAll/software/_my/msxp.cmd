@echo off

@xcopy "%SYSTEMDRIVE%\Documents and Settings\All Users\Главное меню\Программы\Microsoft Office\*.lnk" "%SYSTEMDRIVE%\Documents and Settings\%USERNAME%\Рабочий стол\"
