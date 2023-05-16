@echo off
chcp 65001 >nul

cls 

if exist "C:\CobraPlugins" (
	goto CobraPluginMenu
) else (
	goto MakePluginsFolder
)

:MakePluginsFolder
cd C:\
mkdir CobraPlugins
:CobraPluginMenu
cls
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo (1) How to upload custom plugins
echo ==========================================
echo (2) Load BAT Plugins
echo ==========================================
echo (3) Load EXE Plugins (Not Working)
echo ==========================================
echo (4) Back
echo ==========================================
choice /c 1234e /n
if %errorlevel% == 1 goto HowPlugins
if %errorlevel% == 2 goto PluginLoadBAT
if %errorlevel% == 3 goto PluginLoadEXE
if %errorlevel% == 4 call C:\CobraClient\CobraClientInstall\ProgramMenus\Options\OptionsMenu.bat 
if %errorlevel% == 5 exit

:HowPlugins
cls 
echo To upload your own custom batch programs/plugins to Cobra Client 
echo go to C:\CobraPlugins and then drag and drop your batch file in
echo the folder. 
echo.
echo Then you want to return to Cobra Client and go into Load Plugins 
echo we will locate the files that are in the folder and let you 
echo decide which program you wish to launch.
echo.
pause
goto CobraPlugins2
:PluginLoadBAT
cls
title Cobra - Custom Plugins
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo List Of Plugins.
echo ==========================================
cd C:\CobraPlugins
dir /b /a-d 
echo ==========================================
echo The file names are CASE SENSITIVE
echo Please enter in all charachters
echo including the file extention.
echo ==========================================
set /p plugin=Plugin File Name:  
call "C:\CobraPlugins\%plugin%"

:PluginLoadEXE
cls
title Cobra - Custom Plugins
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo List Of Plugins.
echo ==========================================
cd C:\CobraPlugins
dir /b /a-d 
echo ==========================================
echo The file names are CASE SENSITIVE
echo Please enter in all charachters
echo including the file extention.
echo ==========================================
set /p plugin=Plugin File Name:  
start "C:\CobraPlugins\%plugin%"

call C:\CobraClient\CobraClientInstall\ProgramMenus\HomeMenu.bat
