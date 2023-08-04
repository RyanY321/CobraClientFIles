@echo off
chcp 65001 >nul
cls

cd C:\CobraFiles
if exist "C:\CobraFiles\Stable.cobra" del /F /S /Q Stable.cobra
if exist "C:\CobraFiles\GUI.cobra" del /F /S /Q GUI.cobra
if exist "C:\CobraFiles\Beta.cobra" del /F /S /Q Beta.cobra

cls
echo Relaunch The Program To Change Version
pause
exit