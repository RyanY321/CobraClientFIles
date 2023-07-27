:Top

@echo off
chcp 65001 >nul
cls

title Cobra Client
echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo In this menu you will be able to enable
echo of disable the built-in Administrator
echo account of Windows
echo ==========================================
echo (1) Enable Administrator
echo ==========================================
echo (2) Disable Administrator
echo ==========================================
echo (3) Back
echo ==========================================
choice /c 123e /n
if %errorlevel% == 1 goto Enable
if %errorlevel% == 2 goto Disable
if %errorlevel% == 3 call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat
if %errorlevel% == 4 call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat


:Enable
net user Administrator /active:yes
echo Enabled...
pause
call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat

:Disable
net user Administrator /active:no
echo Disabled...
pause
call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat

call C:\CobraClient\CorbaClientFiles\Resources\Error.bat

exit

goto Top