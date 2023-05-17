@echo off
chcp 65001 >nul
title Cobra Client - IP Tools
cls

echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo Ip Tools
echo ==========================================
echo (1) Ip Lookup
echo ==========================================
echo (2) IP Config
echo ==========================================
echo (3) Reset Priv IP (LAN)
echo ==========================================
echo (4) Flush DNS
echo ==========================================
echo (5) Show DNS Table
echo ==========================================
echo (6) Pinger
echo ==========================================
echo (7) Website IP
echo ==========================================
echo (8) Cobra VPN (Broken)
echo ==========================================
echo (9) Check Connections
echo ==========================================
echo (0) Tracert
echo ==========================================
choice /c 1234567890e /n
if %errorlevel% == 1 call C:\CobraClient\CobraClientFiles\ProgramAttributes\IPTools\IPLookup.bat
if %errorlevel% == 2 call C:\CobraClient\CobraClientFiles\ProgramMenus\IPTools\IPConfigMenu.bat
if %errorlevel% == 3 call C:\CobraClient\CobraClientFiles\ProgramMenus\IPTools\RenewingMenu.bat
if %errorlevel% == 4 call C:\CobraClient\CobraClientFiles\ProgramMenus\IPTools\DNSFlushMenu.bat
if %errorlevel% == 5 call C:\CobraClient\CobraClientFiles\ProgramAttributes\IPTools\DNSTables.bat
if %errorlevel% == 6 call C:\CobraClient\CobraClientFiles\ProgramAttributes\IPTools\Pinger.bat
if %errorlevel% == 7 call C:\CobraClient\CobraClientFiles\ProgramMenus\IPTools\DNSLookupMenu.bat
if %errorlevel% == 8 start C:\CobraClient\CobraClientFiles\VPN\bin\hsscp.exe
if %errorlevel% == 9 call C:\CobraClient\CobraClientFiles\ProgramAttributes\IPTools\IPConnections.bat
if %errorlevel% == 10 call C:\CobraClient\CobraClientFiles\ProgramAttributes\IPTools\Tracert.bat
if %errorlevel% == 11 call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat