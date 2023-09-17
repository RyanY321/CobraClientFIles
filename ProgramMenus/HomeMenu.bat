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
if %CobraClientResponse% == 1 call C:\CobraClient\CobraClientFiles\ProgramAttributes\General\DriversQuery.bat
if %CobraClientResponse% == 2 diskpart
if %CobraClientResponse% == 3 call C:\CobraClient\CobraClientFiles\ProgramMenus\WindowsTools\WindowsMenu.bat
if %CobraClientResponse% == 4 call C:\CobraClient\CobraClientFiles\ProgramMenus\IPTools\IPToolsMenu.bat
if %CobraClientResponse% == 5 call C:\CobraClient\CobraClientFiles\ProgramMenus\Logs\LogsMenu.bat
if %CobraClientResponse% == 6 call C:\CobraClient\CobraClientFiles\ProgramMenus\Tron\TronMenu.bat
if %CobraClientResponse% == 7 call C:\CobraClient\CobraClientFiles\ProgramMenus\General\HomeMenu2.bat
if %CobraClientResponse% == 8 call C:\CobraClient\CobraClientFiles\ProgramMenus\Options\OptionsMenu.bat
if %CobraClientResponse% == 9 exit

call C:\CobraClient\CorbaClientFiles\Resources\Error.bat

exit

goto Top