@echo off
chcp 65001 >nul
title Cobra Client - Renew IP
cls

echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo Are you sure you would like to renew your
echo local LAN IP addressed to your PC with a
echo new IP? 
echo This process will take awhile.  Y/N
echo ==========================================
choice /c yne /n
if %errorlevel% == 1 call C:\CobraClient\CobraClientInstall\ProgramAttributes\IPTools\IPrenew.bat
if %errorlevel% == 2 call C:\CobraClient\CobraClientInstall\ProgramMenus\HomeMenu.bat
if %errorlevel% == 3 exit