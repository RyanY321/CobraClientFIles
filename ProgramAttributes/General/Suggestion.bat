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

if exist "C:\CobraClient\CobraClientInstall\Resources\Suggestions.js" (
	del /F /Q C:\CobraClient\CobraClientInstall\Resources\Suggestions.js
) else (
	goto SuggestionContinue
)

:SuggestionContinue

cd C:\CobraClient\CobraClientInstall\Resources
echo const webhook = require("webhook-discord"); >>Suggestions.js
echo const Hook = new webhook.Webhook("https://discord.com/api/webhooks/1097701265640792186/2SqNF6ZPi2nAfFPfpwhTJ0G1Gq2yZJfJZLroeUCU26gFJtX-01BeTDWrcOKvuK6FRh0d"); >>Suggestions.js
echo Hook.success("%discord%'s suggestion","%suggestion%"); >>Suggestions.js

node C:\CobraClient\CobraClientInstall\Resources\Suggestions.js
pause
call C:\CobraClient\CobraClientInstall\ProgramMenus\HomeMenu.bat