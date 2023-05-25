@echo off
chcp 65001 >nul
cls

if exist "C:\CobraClientUpdater.exe" (
    del /F /Q C:\CobraClientUpdater.exe
) else (
    goto Continue
)

:Continue
move /Y C:\CobraClient\CobraClientFiles\CobraClientUpdater.exe C:\
start C:\CobraClientUpdater.exe