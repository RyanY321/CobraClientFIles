:Top

@echo off
chcp 65001 >nul
title Cobra Client - Pinger
cls

echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
echo This pinger will ping an IP address while
echo you stress it or this is used to check
echo if an IP adress is going you a response
echo ==========================================
set /p PingIP=Enter the IP that you would like to ping: 
set /p PingNumber=How many times would you like to ping the IP: 

title Cobra Client - Now pinging %PingIP%
ping %PingIP% -n %PingNumber%

pause
call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat

call C:\CobraClient\CorbaClientFiles\Resources\Error.bat

exit

goto Top