:Top

@echo off
chcp 65501 >nul
title Cobra Client - Shutdown Menu
cls

echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo What type of SHUTDOWN do you want?
echo ==========================================
echo (1) Shutdown
echo ==========================================
echo (2) Restart
echo ==========================================
echo (3) Sleep
echo ==========================================
echo (4) Hibernate
echo ==========================================
echo (5) Back
echo ==========================================
choice /c 12345e /n
if %CobraClientResponse% == 1 shutdown.exe /s /t 05
if %CobraClientResponse% == 2 shutdown.exe /r /t 05
if %CobraClientResponse% == 3 goto Sleep
if %CobraClientResponse% == 4 goto Hibernate
if %CobraClientResponse% == 5 call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat
if %CobraClientResponse% == 6 exit

:Sleep
rundll32.exe powrprof.dll, SetSuspendState Sleep
call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat

:Hibernate
shutdown.exe/h
call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat

call C:\CobraClient\CorbaClientFiles\Resources\Error.bat

exit

goto Top