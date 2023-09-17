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
echo Press A to open Admin Menu
echo Press C to Change Installation
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
choice /c 1234567eac /n
if %CobraClientResponse% == 1 call C:\CobraClient\CobraClientFiles\ProgramAttributes\Options\Headless.bat
if %CobraClientResponse% == 2 call C:\CobraClient\CobraClientFiles\ProgramAttributes\Options\Colors.bat
if %CobraClientResponse% == 3 call C:\CobraClient\CobraClientFiles\ProgramAttributes\Options\PatchNotes.bat
if %CobraClientResponse% == 4 call C:\CobraClient\CobraClientFiles\ProgramAttributes\Options\Plugins.bat
if %CobraClientResponse% == 5 call C:\CobraClient\CobraClientFiles\ProgramAttributes\Options\CheckUninstall.bat
if %CobraClientResponse% == 6 call C:\CobraClient\CobraClientFiles\Resources\Error.bat
if %CobraClientResponse% == 7 call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat
if %CobraClientResponse% == 8 exit
if %CobraClientResponse% == 9 call C:\CobraClient\CobraClientFiles\Resources\Admin.bat
if %CobraClientResponse% == 10 call C:\CobraClient\CobraClientFiles\Resources\InstallationChannel.bat

call C:\CobraClient\CorbaClientFiles\Resources\Error.bat

exit

goto Top