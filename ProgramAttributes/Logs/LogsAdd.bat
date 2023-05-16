@echo off
chcp 65001 >nul
title Cobra Client - Add Log
cls

echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo Add Logs
echo ==========================================
set /p LogName=Name of log: 
echo ==========================================
set /p LogCont=Content in log: 
echo ==========================================
echo Adding to log...
cd C:\CobraFiles\Notes
echo %LogCont%>> "%LogName%.CobraClient"
echo Added to log!
pause
call C:\CobraClient\CobraClientInstall\ProgramMenus\HomeMenu.bat