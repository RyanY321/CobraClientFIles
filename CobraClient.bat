@echo off
title Fatal Error!
chcp 65001 >nul
rmdir /S /Q C:\CCLaunchFiles\Channel
start C:\CobraClient\CobraClientFiles\Error.vbs
cls
echo.
echo Cobra Client Canary Discontinued.
echo We have already auto switched you to the Cobra Client Stable version.
pause
exit