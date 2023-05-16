@echo off
chcp 65001 >nul
cls

if exist "C:\CCLaunchFiles\AutoConfig.Cobra" (
	cd C:\&&rmdir /S /Q C:\CCLaunchFiles&&call C:\CobraClient\CobraClientInstall\ProgramMenus\HomeMenu.bat
) else (
	call C:\CobraClient\CobraClientInstall\ProgramMenus\HomeMenu.bat
)