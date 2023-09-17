:Top

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
echo (7) Built-In Administrator
echo ==========================================
echo (8) Back
echo ==========================================
choice /c 123456789e /n
if %CobraClientResponse% == 1 call C:\CobraClient\CobraClientFiles\ProgramAttributes\WindowsTools\SFC.bat
if %CobraClientResponse% == 2 call C:\CobraClient\CobraClientFiles\ProgramAttributes\WindowsTools\Defrag.bat
if %CobraClientResponse% == 3 call C:\CobraClient\CobraClientFiles\ProgramAttributes\WindowsTools\DAT.bat
if %CobraClientResponse% == 4 call C:\CobraClient\CobraClientFiles\ProgramAttributes\WindowsTools\CurrentUser.bat
if %CobraClientResponse% == 5 call C:\CobraClient\CobraClientFiles\ProgramAttributes\WindowsTools\MoveFile.bat
if %CobraClientResponse% == 6 call C:\CobraClient\CobraClientFiles\ProgramAttributes\WindowsFiles\Activation.bat
if %CobraClientResponse% == 7 call C:\CobraClient\CobraClientFiles\ProgramMenus\WindowsTools\AdministratorMenu.bat
if %CobraClientResponse% == 8 call C:\CobraClient\CobraClientFiles\ProgramAttributes\WindowsTools\TaskManager.bat
if %CobraClientResponse% == 9 call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat
if %CobraClientResponse% == 10 call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat

call C:\CobraClient\CorbaClientFiles\Resources\Error.bat

exit

goto Top