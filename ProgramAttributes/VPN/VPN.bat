@echo off
chcp 65001 >nul
cls

if exist "C:\Program Files (x86)\Hotspot Shield" (
    "C:\Program Files (x86)\Hotspot Shield\12.1.1\bin\hsscp.exe"
) else (
    start C:\CobraClient\CobraClientFiles\VPN\installer.exe&&echo.&&echo When complete click any key&&pause
)

call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat