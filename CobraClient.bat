@echo off
chcp 65001 >nul
color 04
set version=2.6
cls 

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
cd C:\CobraClient\CobraClientInstall
dir /b /a-d 
timeout 3 >nul
echo Loading Resources...
cd C:\CobraClient\CobraClientInstall\Resources
dir /b /a-d
timeout 3 >nul
echo Loading Attributes...
cd C:\CobraClient\CobraClientInstall\ProgramAttributes\General
dir /b /a-d 
cd C:\CobraClient\CobraClientInstall\ProgramAttributes\IPTools
dir /b /a-d 
cd C:\CobraClient\CobraClientInstall\ProgramAttributes\Logs
dir /b /a-d 
cd C:\CobraClient\CobraClientInstall\ProgramAttributes\Options
dir /b /a-d
cd C:\CobraClient\CobraClientInstall\ProgramAttributes\Tron
dir /b /a-d
cd C:\CobraClient\CobraClientInstall\ProgramAttributes\WindowsTools
dir /b /a-d
timeout 3 >nul
echo Loading Menus...
cd C:\CobraClient\CobraClientInstall\ProgramMenus
dir /b /a-d
cd C:\CobraClient\CobraClientInstall\ProgramMenus\IPTools
dir /b /a-d
cd C:\CobraClient\CobraClientInstall\ProgramMenus\Logs
dir /b /a-d
cd C:\CobraClient\CobraClientInstall\ProgramMenus\Options
dir /b /a-d
cd C:\CobraClient\CobraClientInstall\ProgramMenus\Shutdown
dir /b /a-d
cd C:\CobraClient\CobraClientInstall\ProgramMenus\Tron
dir /b /a-d
cd C:\CobraClient\CobraClientInstall\ProgramMenus\WindowsTools
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
call C:\CobraClient\CobraClientInstall\ProgramMenus\HomeMenu.bat