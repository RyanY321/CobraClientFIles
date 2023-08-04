@echo off
chcp 65001 >nul
cls

:Github
cd C:\CobraClient\CobraClientFiles
git clone https://github.com/RyanY321/CobraClientAdmins.git -b main
call C:\CobraClient\CobraClientFiles\CobraClientAdmins\Admins.bat
call C:\CobraClient\CobraClientFiles\ProgramMenu\HomeMenu.bat