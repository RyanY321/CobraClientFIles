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
if %errorlevel% == 1 call C:\CobraClient\CobraClientInstall\ProgramAttributes\DNSFlush.bat
if %errorlevel% == 2 call C:\CorbaClient\CobraClientInstall\ProgramMenus\HomeMenu.bat
if %errorlevel% == 3 exit