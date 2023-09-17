:Top

@echo off
chcp 65001 >nul
color 04
set version=2.9
set BN=CC091723_26725
set InstallationChannel=Stable Release
mode con cols=125 lines=30
cls 

call C:\CobraClient\CobraClientFiles\Resources\ColorCheck.bat

call C:\CobraClient\CorbaClientFiles\Resources\Error.bat

exit

goto Top