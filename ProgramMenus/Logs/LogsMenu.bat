:Top

@echo off
chcp 65001 >nul
title Cobra Client - Note Logs
cls

if exist "C:\CobraFiles\Notes" (
    goto continue
) else (
    goto MakeNotesFolder
)

:continue

echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo Note Logs
echo ==========================================
echo (1) Add Log
echo ==========================================
echo (2) Remove Log
echo ==========================================
echo (3) View Log
echo ==========================================
echo (4) Back
echo ==========================================
choice /c 1234e /n
if %errorlevel% == 1 call C:\CobraClient\CobraClientFiles\ProgramAttributes\Logs\LogsAdd.bat
if %errorlevel% == 2 call C:\CobraClient\CobraClientFiles\ProgramAttributes\Logs\LogsRemove.bat
if %errorlevel% == 3 call C:\CobraClient\CobraClientFiles\ProgramAttributes\Logs\LogsView.bat
if %errorlevel% == 4 call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat
if %errorlevel% == 5 exit

:MakeNotesFolder
cd C:\CobraFiles
mkdir Notes

call C:\CobraClient\CorbaClientFiles\Resources\Error.bat

exit

goto Top