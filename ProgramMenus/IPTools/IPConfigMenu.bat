:Top

@echo off
chcp 65001 >nul
title Cobra Client - IP Config
cls

echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo (1) Breif Summary
echo ==========================================
echo (2) Full Summary
echo ==========================================
choice /c 12e /n
if %errorlevel% == 1 call C:\CobraClient\CobraClientFiles\ProgramAttributes\IPTools\BreifSummary.bat
if %errorlevel% == 2 call C:\CobraClient\CobraClientFiles\ProgramAttributes\IPTools\FullSummary.bat
if %errorlevel% == 3 exit

call C:\CobraClient\CorbaClientFiles\Resources\Error.bat

exit

goto Top