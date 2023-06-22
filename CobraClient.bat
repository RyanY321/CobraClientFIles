@echo off
chcp 65001 >nul
color 04
set version=2.8
cls 

title Cobra Client Launching...
echo Checking Color...


:ColorCheck
if exist "C:\CobraFiles\Color\Red.cobra" color 04
if exist "C:\CobraFiles\Color\Blue.cobra" color 09
if exist "C:\CobraFiles\Color\Pink.cobra" color 0D
if exist "C:\CobraFiles\Color\Yellow.cobra" color 0E
if exist "C:\CobraFiles\Color\White.cobra" color 0F
echo Done.
echo.
timeout 3 >nul

echo Checking Files...

:CheckFiles

if exist "C:\CobraFiles" (
    goto Continue
) else (
    goto CreateFiles
)

:CreateFiles
cd C:\
mkdir C:\CobraFiles
:CreateNotes
mkdir C:\CobraFiles\Notes
goto Continue2
:CreateColor
mkdir C:\CobraFiles\Color
goto Continue3

attrib +H C:\CobraFiles
:Continue2 
attrib +H C:\CobraFiles\Notes
goto CheckFiles
:Continue3
attrib +H C:\CobraFiles\Color
goto CheckFiles

:Continue
if exist "C:\CobraFiles\Notes" (
    if exist "C:\CobraFiles\Color" ( goto Continue4 ) else ( goto CreateColor )
) else (
    goto CreateColor
)

:Continue4
echo Done.
echo.
timeout 3 >nul
echo Loading Files...
cd C:\CobraClient\CobraClientFiles
dir /b /a-d 
timeout 3 >nul
echo Loading Resources...
cd C:\CobraClient\CobraClientFiles\Resources
dir /b /a-d
timeout 3 >nul
echo Loading Attributes...
cd C:\CobraClient\CobraClientFiles\ProgramAttributes\General
dir /b /a-d 
cd C:\CobraClient\CobraClientFiles\ProgramAttributes\IPTools
dir /b /a-d 
cd C:\CobraClient\CobraClientFiles\ProgramAttributes\Logs
dir /b /a-d 
cd C:\CobraClient\CobraClientFiles\ProgramAttributes\Options
dir /b /a-d
cd C:\CobraClient\CobraClientFiles\ProgramAttributes\Tron
dir /b /a-d
cd C:\CobraClient\CobraClientFiles\ProgramAttributes\WindowsTools
dir /b /a-d
timeout 3 >nul
echo Loading Menus...
cd C:\CobraClient\CobraClientFiles\ProgramMenus
dir /b /a-d
cd C:\CobraClient\CobraClientFiles\ProgramMenus\IPTools
dir /b /a-d
cd C:\CobraClient\CobraClientFiles\ProgramMenus\Logs
dir /b /a-d
cd C:\CobraClient\CobraClientFiles\ProgramMenus\Options
dir /b /a-d
cd C:\CobraClient\CobraClientFiles\ProgramMenus\Shutdown
dir /b /a-d
cd C:\CobraClient\CobraClientFiles\ProgramMenus\Tron
dir /b /a-d
cd C:\CobraClient\CobraClientFiles\ProgramMenus\WindowsTools
dir /b /a-d 
timeout 3 >nul
cls
title Pulling Resources
echo Starting Cobra Client.
timeout 1 >nul
cls
echo Starting Cobra Client..
timeout 1 >nul
cls
echo Starting Cobra Client...
timeout 1 >nul
cls
call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat