@ECHO OFF

:: so fucking hacky but honestly, i dont care

set GAME_DIR=C:\Program Files (x86)\Steam\SteamApps\common\Team Fortress 2

set CURRENT_DIR=%cd%
for %%f in (*.txt) do (
	IF EXIST %%~nf.dat ( DEL %%~nf.dat )
	MOVE "%CURRENT_DIR%\%%~nf.txt" "%GAME_DIR%\tf\resource\%%~nf.txt"
	"%GAME_DIR%\bin\captioncompiler.exe" "%GAME_DIR%\tf\resource\%%~nf.txt" -game "%GAME_DIR%\tf"
	MOVE "%GAME_DIR%\tf\resource\%%~nf.txt" "%CURRENT_DIR%"
	MOVE "%GAME_DIR%\tf\resource\%%~nf.dat" "%CURRENT_DIR%"
)