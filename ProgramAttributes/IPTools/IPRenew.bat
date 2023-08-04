:Top

@echo off
chcp 65001 >nul
title Cobra Client - IP Renew
cls

echo Starting on IPv4 renewal...
ipconfig /release >nul
ipconfig /renew >nul
echo IPv4 just renewed
echo Now starting on IPv6 renewal...
ipconfig /release6 >nul
ipconfig /renew6 >nul
echo IPv6 just renewed
echo Now exiting...
timeout 3 >nul
call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat

call C:\CobraClient\CorbaClientFiles\Resources\Error.bat

exit

goto Top