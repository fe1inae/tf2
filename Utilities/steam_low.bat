@ECHO ON

TASKLIST | FIND "steam.exe"
IF "%ERRORLEVEL%"=="0" START /WAIT TASKKILL /F /IM "steam.exe"
START "" "C:\Program Files (x86)\Steam\steam.exe" -silent -no-browser +open steam://open/minigameslist