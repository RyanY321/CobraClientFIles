@echo off
chcp 65001 >nul
cls

:Github
cd C:\CobraClient\CobraClientFiles
mkdir Admins
cd C:\CobraClientCobraClientFiles\Admin
git clone https://github.com/RyanY321/CobraClientAdmins.git
call C:\CobraClient\CobraClientFiles\Admins\CobraClientAdmins\Admins.bat
call C:\CobraClient\CobraClientFiles\ProgramMenu\HomeMenu.bat