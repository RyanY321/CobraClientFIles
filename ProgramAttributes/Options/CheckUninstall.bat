@echo off
chcp 65001 >nul
cls
echo Are you sure that you want to remove Cobra Client from your device.?[Y/N]
choice /c yn /n
if %errorlevel% == 1 goto Y
if %errorlevel% == 2 goto N
:Y
move /y C:\CobraClient\CobraClientInstall\Cobra-Uninstall.exe C:\
timeout 3 >null
start C:\Cobra-Uninstall.exe
exit
:N
call C:\CobraClient\CobraClientInstall\ProgramMenus\HomeMenu.bat