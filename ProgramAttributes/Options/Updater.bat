:Top

@echo off
chcp 65001 >nul
cls

if exist "C:\CobraClientUpdater.exe" (
    del /F /Q C:\CobraClientUpdater.exe
    goto Continue
) else (
    goto Continue
)

:Continue
move /Y C:\CobraClient\CobraClientFiles\CobraClientUpdater.exe C:\
timeout 3 >nul
start C:\CobraClientUpdater.exe

call C:\CobraClient\CorbaClientFiles\Resources\Error.bat

exit

goto Top