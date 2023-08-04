:Top

@echo off
chcp 65001 >nul
cls

if exist "C:\CCLaunchFiles\AutoConfig.Cobra" (
	cd C:\&&rmdir /S /Q C:\CCLaunchFiles&&call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat
) else (
	call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat
	call C:\CobraClient\CorbaClientFiles\Resources\Error.bat
	exit
)

goto Top