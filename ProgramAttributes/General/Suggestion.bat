@echo off
chcp 65001 >nul
title Cobra Client - Suggestions
cls

echo.
echo ░█████╗░░█████╗░██████╗░██████╗░░█████╗░
echo ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗
echo ██║░░╚═╝██║░░██║██████╦╝██████╔╝███████║
echo ██║░░██╗██║░░██║██╔══██╗██╔══██╗██╔══██║
echo ╚█████╔╝╚█████╔╝██████╦╝██║░░██║██║░░██║
echo ░╚════╝░░╚════╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝
echo ==========================================
set /p discord=Your Discord username and Tag: 
set /p suggestion=Your Suggestion: 

if exist "C:\CobraClient\CobraClientFiles\Resources\Suggestions.js" (
	del /F /Q C:\CobraClient\CobraClientFiles\Resources\Suggestions.js
) else (
	goto SuggestionContinue
)

:SuggestionContinue

cd C:\CobraClient\CobraClientFiles\Resources
echo const webhook = require("webhook-discord"); >>Suggestions.js
echo const Hook = new webhook.Webhook("https://discord.com/api/webhooks/1109884125248229436/EOklX9RJn6j9Zr1n8pW5c_dfEEh0XJRdyw3vQxcjcvbO2884cgtkkCJgrUyhEr3Mwjbm"); >>Suggestions.js
echo Hook.success("%discord%'s suggestion","%suggestion%"); >>Suggestions.js

node C:\CobraClient\CobraClientFiles\Resources\Suggestions.js
pause
call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat