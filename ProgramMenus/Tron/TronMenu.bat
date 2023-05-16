@echo off
chcp 65001 >nul
title Cobra Client - Tron
cls

echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo Are your sure that you want to install Tron
echo on this device?  Y/N
echo ==========================================
choice /c yn /n
if %errorlevel% == 1 call C:\CobraClient\CobraClientInstall\ProgramAttributes\Tron\Tron.bat
if %errorlevel% == 2 goto Main  