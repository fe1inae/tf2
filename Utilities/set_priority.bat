@ECHO OFF

IF %1.==. (GOTO:EOF)
SET COUNT=0

:SEARCH
TASKLIST | FIND "%1.exe"
IF %ERRORLEVEL% EQU 0 (GOTO:LOOP)
SET /a COUNT=%COUNT%+1
ECHO %COUNT%
IF %COUNT% EQU 30 (GOTO:EOF)
TIMEOUT /NOBREAK /T 1
GOTO SEARCH

:LOOP
TASKLIST | FIND "%1.exe"
IF NOT %ERRORLEVEL% EQU 0 (GOTO:EOF)

for /f "tokens=1* delims==" %%A in ('wmic process WHERE name^="%1.exe" GET /format:list ^| findstr Priority') DO (SET PRIORITY=%%B)
IF %PRIORITY% EQU 8 (
	WMIC process where name="%1.exe" CALL setpriority "above normal"
	POWERSHELL	"$Process = Get-Process %1; $Process.ProcessorAffinity=14"
)

TIMEOUT /NOBREAK /T 5
GOTO LOOP