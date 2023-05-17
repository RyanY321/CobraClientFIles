@echo off
chcp 65001 >nul
title Cobra Client - Website IP Menu
cls

echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo Please select from the menu below if your
echo webstie has a www. or no www.
echo ==========================================
echo (1) Has WWW.
echo ==========================================
echo (2) Doesn't Have WWW.
echo ==========================================
echo (3) Back
echo ==========================================
choice /c 123e /n
if %errorlevel% == 1 call C:\CobraClient\CobraClientFiles\ProgramAttributes\IPTools\DNSHasWWW.bat
if %errorlevel% == 2 call C:\CobraClient\CobraClientFiles\ProgramAttributes\IPTools\DNSNoWWW.bat
if %errorlevel% == 3 call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat
if %errorlevel% == 4 exit