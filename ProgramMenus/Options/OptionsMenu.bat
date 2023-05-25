@echo off
chcp 65001 >nul
title Cobra Client - Options
cls

echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo Options Menu
echo ==========================================
echo (1) Headless Mode (Temp Disabled)
echo ==========================================
echo (2) Colors Menu
echo ==========================================
echo (3) Check Patch Notes
echo ==========================================
echo (4) Custom Plugins
echo ==========================================
echo (5) Disable AutoUpdate
echo ==========================================
echo (6) Uninstall Client
echo ==========================================
echo (7) Update CC
echo ==========================================
echo (8) Back
echo ==========================================
choice /c 12345678e /n
if %errorlevel% == 1 call C:\CobraClient\CobraClientFiles\ProgramAttributes\Options\Headless.bat
if %errorlevel% == 2 call C:\CobraClient\CobraClientFiles\ProgramAttributes\Options\Colors.bat
if %errorlevel% == 3 call C:\CobraClient\CobraClientFiles\ProgramAttributes\Options\PatchNotes.bat
if %errorlevel% == 4 call C:\CobraClient\CobraClientFiles\ProgramAttributes\Options\Plugins.bat
if %errorlevel% == 5 call C:\CobraClient\CobraClientFiles\ProgramAttributes\Options\DisableAutoUpdate.bat
if %errorlevel% == 6 call C:\CobraClient\CobraClientFiles\ProgramAttributes\Options\CheckUninstall.bat
if %errorlevel% == 7 call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat
if %errorlevel% == 8 call C:\CObraClient\CobraClientFiles\ProgramAttributes\Options\Updater.bat
if %errorlevel% == 9 exit
