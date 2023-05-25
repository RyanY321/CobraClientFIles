:Top:
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
if exist "C:\CCLaunchFiles\version\2.4.txt" (
    goto Continue
) else (
    echo Outdated Launcher!
    goto Continue
)
:Continue
echo User : %USERNAME%
echo Date : %date%
echo Version - %version%
echo Press O to open Options
echo Press E to exit
echo ==========================================
echo (1) Drivers
echo ==========================================
echo (2) Diskpart
echo ==========================================
echo (3) Windows Tools
echo ==========================================
echo (4) Ip Tools
echo ==========================================
echo (5) Logs
echo ==========================================
echo (6) Install Tron -Malware Remover-
echo ==========================================
echo (7) Next Page
echo ==========================================
choice /c 1234567oe /n
if %errorlevel% == 1 call C:\CobraClient\CobraClientFiles\ProgramAttributes\General\DriversQuery.bat
if %errorlevel% == 2 diskpart
if %errorlevel% == 3 call C:\CobraClient\CobraClientFiles\ProgramMenus\WindowsTools\WindowsMenu.bat
if %errorlevel% == 4 call C:\CobraClient\CobraClientFiles\ProgramMenus\IPTools\IPToolsMenu.bat
if %errorlevel% == 5 call C:\CobraClient\CobraClientFiles\ProgramMenus\Logs\LogsMenu.bat
if %errorlevel% == 6 call C:\CobraClient\CobraClientFiles\ProgramMenus\Tron\TronMenu.bat
if %errorlevel% == 7 call C:\CobraClient\CobraClientFiles\ProgramMenus\General\HomeMenu2.bat
if %errorlevel% == 8 call C:\CobraClient\CobraClientFiles\ProgramMenus\Options\OptionsMenu.bat
if %errorlevel% == 9 exit

goto Top