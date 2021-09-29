@echo off
cd %homepath%\AppData\Local\Microsoft\Windows\Explorer

IF EXIST "iconcache*" (
    taskkill /f /im explorer.exe
	timeout 5
	del iconcache*
	IF EXIST "iconcache*" (
	dir iconcache*
	ECHO Some items couldn't deleted.
) ELSE (
    ECHO Everything is clear.
)
	
) ELSE (
    ECHO Error
)
explorer.exe
pause