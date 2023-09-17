:Top

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
if %CobraClientResponse% == 1 call C:\CobraClient\CobraClientFiles\ProgramAttributes\IPTools\IPrenew.bat
if %CobraClientResponse% == 2 call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat
if %CobraClientResponse% == 3 exit

call C:\CobraClient\CorbaClientFiles\Resources\Error.bat

exit

goto Top