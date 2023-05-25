@echo off
chcp 65001 >nul
cls

if exist "C:\CobraClientUpdater.exe" (
    pause
    del /F /Q C:\CobraClientUpdater.exe
    pause
    goto Continue
    pause
) else (
    pause
    goto Continue
    pause
)

:Continue
move /Y C:\CobraClient\CobraClientFiles\CobraClientUpdater.exe C:\
pause
timeout 3 >nul
pause
start C:\CobraClientUpdater.exe
pause
exit