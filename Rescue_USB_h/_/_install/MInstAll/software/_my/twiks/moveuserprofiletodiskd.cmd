@echo off

mkdir "d:\Desktop"
xcopy "%USERPROFILE%\Desktop\*" "d:\Desktop\" /S /I /Q /H /K /O /Y
xcopy "%USERPROFILE%\����稩 �⮫\*" "d:\Desktop\" /S /I /Q /H /K /O /Y
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Desktop" /t REG_SZ /d d:\Desktop /f
rmdir /S /Q "%USERPROFILE%\Desktop"
rmdir /S /Q "%USERPROFILE%\����稩 �⮫"

mkdir "d:\Documents"
xcopy "%USERPROFILE%\Documents\*" "d:\Documents\" /S /I /Q /H /K /O /Y
xcopy "%USERPROFILE%\��� ���㬥���\*" "d:\Documents\" /S /I /Q /H /K /O /Y
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal" /t REG_SZ /d d:\Documents /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "Personal" /t REG_EXPAND_SZ /d d:\Documents /f
rmdir /S /Q "%USERPROFILE%\Documents"
rmdir /S /Q "%USERPROFILE%\��� ���㬥���"

mkdir "d:\Downloads"
xcopy "%USERPROFILE%\Downloads\*" "d:\Downloads\" /S /I /Q /H /K /O /Y
xcopy "%USERPROFILE%\����㧪�\*" "d:\Downloads\" /S /I /Q /H /K /O /Y
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "{374DE290-123F-4565-9164-39C4925E467B}" /t REG_SZ /d d:\Downloads /f
rmdir /S /Q "%USERPROFILE%\Downloads"
rmdir /S /Q "%USERPROFILE%\����㧪�"

mkdir "d:\Pictures"
xcopy "%USERPROFILE%\Pictures\*" "d:\Pictures\" /S /I /Q /H /K /O /Y
xcopy "%USERPROFILE%\����ࠦ����\*" "d:\Pictures\" /S /I /Q /H /K /O /Y
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "My Pictures" /t REG_SZ /d d:\Pictures /f
rmdir /S /Q "%USERPROFILE%\Pictures"
rmdir /S /Q "%USERPROFILE%\����ࠦ����"

mkdir "d:\Music"
xcopy "%USERPROFILE%\Music\*" "d:\Music\" /S /I /Q /H /K /O /Y
xcopy "%USERPROFILE%\��몠\*" "d:\Music\" /S /I /Q /H /K /O /Y
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "My Music" /t REG_SZ /d d:\Music /f
rmdir /S /Q "%USERPROFILE%\Music"
rmdir /S /Q "%USERPROFILE%\��몠"

mkdir "d:\Video"
xcopy "%USERPROFILE%\Video\*" "d:\Video\" /S /I /Q /H /K /O /Y
xcopy "%USERPROFILE%\�����\*" "d:\Video\" /S /I /Q /H /K /O /Y
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "My Video" /t REG_SZ /d d:\Video /f
rmdir /S /Q "%USERPROFILE%\Video"
rmdir /S /Q "%USERPROFILE%\�����"

PAUSE