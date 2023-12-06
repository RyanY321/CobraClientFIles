:Top

@echo off
chcp 65001 >nul
color 04
set version=3.0
set BN=BetaCC120623_23734
set InstallationChannel=Beta Release
mode con cols=125 lines=30
cls 

call C:\CobraClient\CobraClientFiles\Resources\ColorCheck.bat

call C:\CobraClient\CorbaClientFiles\Resources\Error.bat

exit

goto Top