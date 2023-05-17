@echo off
chcp 65001 >nul
title Cobra Client - Remove Log
cls

echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo List Of All Logs
echo ==========================================
cd C:\CobraFiles\Notes
dir /b /a-d 
echo ==========================================
echo The Cobra Client Logs are CASE SENSITIVE
echo Please enter in all Charachters.
echo ==========================================
set /p RemoveLog=Which log would you like to delete? 

cd C:\CobraFiles\Notes
del /Q /F "%RemoveLog%.CobraClient"
echo Removed Log.
pause
call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat