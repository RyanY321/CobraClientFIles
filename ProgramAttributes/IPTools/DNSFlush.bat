:Top

@echo off
chcp 65001 >nul
title Cobra Client - DNS Flush
cls

ipconfig /flushdns >nul
echo Step 1 of 2 flushing DNS complete...
echo Moving onto final part of DNS flush...
ipconfig /registerdns >nul
echo Step 2 of 2 flushing DNS complete...
echo Now exiting...
timeout 3 >nul
call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat

call C:\CobraClient\CorbaClientFiles\Resources\Error.bat

exit

goto Top