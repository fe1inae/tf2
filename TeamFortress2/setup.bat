@ECHO OFF
SETLOCAL

:: set the game directory
SET GameRoot=C:\Program Files (x86)\Steam\steamapps\common\Team Fortress 2\
SET Root=%~dp0%..\

:: run compile scripts
for /F "delims=|" %%F IN ('DIR /B /S compile.bat') DO (
	CD %%~dpF
	CALL compile.bat
)
CD "%~dp0"

:: symlink custom folders
FOR /D %%D IN ("%~dp0tf\custom\*") DO (
	IF NOT EXIST "%GameRoot%tf\custom\%%~nD" ( MKLINK /D "%GameRoot%tf\custom\%%~nD" "%%D" )
)

:: symlink misc files
FOR %%F IN ("%~dp0tf\*") DO (
	IF NOT EXIST "%GameRoot%tf\%%~nxF" ( MKLINK "%GameRoot%tf\%%~nxF" "%%F" )
)
