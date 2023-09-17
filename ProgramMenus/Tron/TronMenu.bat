:Top

@echo off
chcp 65001 >nul
title Cobra Client - Tron
cls

echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo Are your sure that you want to install Tron
echo on this device?  Y/N
echo ==========================================
choice /c yn /n
if %CobraClientResponse% == 1 call C:\CobraClient\CobraClientFiles\ProgramAttributes\Tron\Tron.bat
if %CobraClientResponse% == 2 call C:\CobraClient\CobraClientFiles\ProgramAttributes\ProgramMenus\HomeMenu.bat

call C:\CobraClient\CorbaClientFiles\Resources\Error.bat

exit

goto Top