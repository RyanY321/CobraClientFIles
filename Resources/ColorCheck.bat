:Top

if exist "C:\CobraFiles\Color\Red.cobra" color 04
if exist "C:\CobraFiles\Color\Blue.cobra" color 09
if exist "C:\CobraFiles\Color\Pink.cobra" color 0D
if exist "C:\CobraFiles\Color\Yellow.cobra" color 0E
if exist "C:\CobraFiles\Color\White.cobra" color 0F

call C:\CobraClient\CobraClientFiles\ProgramMenus\HomeMenu.bat

call C:\CobraClient\CorbaClientFiles\Resources\Error.bat

exit

goto Top