:Top

@echo off
chcp 65001 >nul
title Cobra Client - DNS Flush

cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo Are you sure that you would like to flush
echo your PC's whole DNS settings?  Y/N
echo ==========================================
choice /c yne /n
if %errorlevel% == 1 call C:\CobraClient\CobraClientFiles\ProgramAttributes\DNSFlush.bat
if %errorlevel% == 2 call C:\CorbaClient\CobraClientFiles\ProgramMenus\HomeMenu.bat
if %errorlevel% == 3 exit

call C:\CobraClient\CorbaClientFiles\Resources\Error.bat

exit

goto Top