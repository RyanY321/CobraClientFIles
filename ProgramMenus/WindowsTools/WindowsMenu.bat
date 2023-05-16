@echo off
chcp 65001 >nul
title Cobra Client - Windows Tools
cls

echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo In this menu there is a bunch of tools
echo that are bundled into Windows
echo ==========================================
echo (1) SFC Scan
echo ==========================================
echo (2) Defrag
echo ==========================================
echo (3) Date And Time
echo ==========================================
echo (4) Current User
echo ==========================================
echo (5) Move A File
echo ==========================================
echo (6) Free Windows Activation(Temp Disabled)
echo ==========================================
echo (7) Back
echo ==========================================
choice /c 1234567e /n
if %errorlevel% == 1 call C:\CobraClient\CobraClientInstall\ProgramAttributes\WindowsTools\SFC.bat
if %errorlevel% == 2 call C:\CobraClient\CobraClientInstall\ProgramAttributes\WindowsTools\Defrag.bat
if %errorlevel% == 3 call C:\CobraClient\CobraClientInstall\ProgramAttributes\WindowsTools\DAT.bat
if %errorlevel% == 4 call C:\CobraClient\CobraClientInstall\ProgramAttributes\WindowsTools\CurrentUser.bat
if %errorlevel% == 5 call C:\CobraClient\CobraClientInstall\ProgramAttributes\WindowsTools\MoveFile.bat
if %errorlevel% == 6 call C:\CobraClient\CobraClient\ProgramAttributes\WindowsFiles\Activation.bat
if %errorlevel% == 7 call C:\CobraClient\CobraClientInstall\ProgramMenus\HomeMenu.bat
if %errorlevel% == 8 exit