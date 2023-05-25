:Top:
@echo off
chcp 65001 >nul
cls

title Cobra Client - Page 2
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
echo (1) Shutdown Options
echo ==========================================
echo (2) Suggestions
echo ==========================================
echo (3) Last Page
echo ==========================================
choice /c 123oe /n
if %errorlevel% == 1 call C:\CobraClient\CobraClientFiles\ProgramMenus\Shutdown\ShutdownMenu.bat
if %errorlevel% == 2 call C:\CobraClient\CobraClientFiles\ProgramAttributes\General\Suggestion.bat
if %errorlevel% == 3 call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat
if %errorlevel% == 4 call C:\CobraClient\CobraClientFiles\ProgramMenus\Options\OptionsMenu.bat
if %errorlevel% == 5 exit