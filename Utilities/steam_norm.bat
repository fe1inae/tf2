@ECHO OFF

WMIC path win32_process WHERE "caption='steam.exe'" GET commandline | FIND "-no-browser"
IF "%ERRORLEVEL%"=="1" GOTO:EOF

TASKLIST | FIND "steam.exe"
IF "%ERRORLEVEL%"=="0" START /WAIT TASKKILL /F /IM "steam.exe"
START "" "C:\Program Files (x86)\Steam\steam.exe" +open steam://open/main