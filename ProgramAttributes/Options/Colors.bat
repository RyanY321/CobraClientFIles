@echo off
chcp 65001 >nul
cls

title Cobra Client - Color Menu v2
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo Choose the color that you would like 
echo to be displayed for your Cobra Client.
echo ==========================================
echo (1) Red [Default]
echo ==========================================
echo (2) Blue
echo ==========================================
echo (3) Pink
echo ==========================================
echo (4) Yellow
echo ==========================================
echo (5) White
echo ==========================================
choice /c 12345e /n
if %errorlevel% == 1 goto DefaultRed
if %errorlevel% == 2 goto DefaultBlue
if %errorlevel% == 3 goto DefaultPink
if %errorlevel% == 4 goto DefaultYellow
if %errorlevel% == 5 goto DefaultWhite
if %errorlevel% == 6 goto Main
cd C:\CobraFiles

:DefaultRed
rmdir /S /Q C:\CobraFiles\Color
cd C:\CobraFiles
mkdir Color
attrib +H C:\CobraFiles\Color
cd C:\CobraFiles\Color
echo color>>Red.cobra
call C:\CobraClient\CobraClientInstall\Resources\ColorCheck.bat
:DefaultBlue
rmdir /S /Q C:\CobraFiles\Color
cd C:\CobraFiles
mkdir Color
attrib +H C:\CobraFiles\Color
cd C:\CobraFiles\Color
echo color>>Blue.cobra
call C:\CobraClient\CobraClientInstall\Resources\ColorCheck.bat
:DefaultPink
rmdir /S /Q C:\CobraFiles\Color
cd C:\CobraFiles
mkdir Color
attrib +H C:\CobraFiles\Color
cd C:\CobraFiles\Color
echo color>>Pink.cobra
call C:\CobraClient\CobraClientInstall\Resources\ColorCheck.bat
:DefaultYellow
rmdir /S /Q C:\CobraFiles\Color
cd C:\CobraFiles
mkdir Color
attrib +H C:\CobraFiles\Color
cd C:\CobraFiles\Color
echo color>>Yellow.cobra
call C:\CobraClient\CobraClientInstall\Resources\ColorCheck.bat
:DefaultWhite
rmdir /S /Q C:\CobraFiles\Color
cd C:\CobraFiles
mkdir Color
attrib +H C:\CobraFiles\Color
cd C:\CobraFiles\Color
echo color>>White.cobra
call C:\CobraClient\CobraClientInstall\Resources\ColorCheck.bat