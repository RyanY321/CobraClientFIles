@echo off
chcp 65001 >nul
title Cobra Client - Website IP
cls

echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo Please input in the websites name into
echo the field below to find the websites IP
echo do not include the WWW., only do.
echo "Google.com"
echo ==========================================
set /p WebsiteName=Please enter in the website: 
echo.
echo Processing your results...
timeout 3 >nul
cls
nslookup www.%WebsiteName%
pause
call C:\CobraClient\CobraClientInstall\ProgramMenus\HomeMenu.bat