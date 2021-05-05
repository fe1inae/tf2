@ECHO OFF

:::::::::::::::::::
:: PRE RUN STUFF ::
:::::::::::::::::::
CALL	"%~dp0%..\Utilities\RestartStuff.bat"
CALL	"%~dp0%..\TeamFortress2\setup.bat"

::::::::::::
:: LAUNCH ::
::::::::::::
START /B "" "steam://rungameid/440"

:::::::::::::::::::::::::::
:: SET PRIORITY/AFFINITY ::
:::::::::::::::::::::::::::
:SEARCH
TASKLIST | FIND "hl2.exe"
IF %ERRORLEVEL% EQU 0 (GOTO FOUND)
TIMEOUT /T 1
GOTO SEARCH

:FOUND
WMIC		process where name="hl2.exe" CALL setpriority "above normal"
POWERSHELL	"$Process = Get-Process hl2; $Process.ProcessorAffinity=14"