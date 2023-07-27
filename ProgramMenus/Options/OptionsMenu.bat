:Top

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
echo Version = %version%
echo Build Number = %BN%
echo Installation Channel = %InstallationChannel%
echo ==========================================
echo (1) Headless Mode (Temp Disabled)
echo ==========================================
echo (2) Colors Menu
echo ==========================================
echo (3) Check Patch Notes
echo ==========================================
echo (4) Custom Plugins
echo ==========================================
echo (5) Uninstall Client
echo ==========================================
echo (6) Update CC (Temp Disabled)
echo ==========================================
echo (7) Back 
echo ==========================================
choice /c 1234567e /n
if %errorlevel% == 1 call C:\CobraClient\CobraClientFiles\ProgramAttributes\Options\Headless.bat
if %errorlevel% == 2 call C:\CobraClient\CobraClientFiles\ProgramAttributes\Options\Colors.bat
if %errorlevel% == 3 call C:\CobraClient\CobraClientFiles\ProgramAttributes\Options\PatchNotes.bat
if %errorlevel% == 4 call C:\CobraClient\CobraClientFiles\ProgramAttributes\Options\Plugins.bat
if %errorlevel% == 5 call C:\CobraClient\CobraClientFiles\ProgramAttributes\Options\CheckUninstall.bat
if %errorlevel% == 6 call C:\CobraClient\CobraClientFiles\Resources\Error.bat
if %errorlevel% == 7 call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat
if %errorlevel% == 8 exit

call C:\CobraClient\CorbaClientFiles\Resources\Error.bat

exit

goto Top