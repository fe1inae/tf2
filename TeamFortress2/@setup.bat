@ECHO OFF

:: set the game directory
SET GameRoot=C:\Program Files (x86)\Steam\steamapps\common\Team Fortress 2\

:: create folders in case they dont exist
IF NOT EXIST "%GameRoot%tf"						( MKDIR "%GameRoot%tf" )
IF NOT EXIST "%GameRoot%tf\custom"				( MKDIR "%GameRoot%tf\custom" )

:: symlink folders
IF NOT EXIST "%GameRoot%tf\custom\captions"		( MKLINK /D "%GameRoot%tf\custom\captions"   "%~dp0%tf\custom\captions" )
IF NOT EXIST "%GameRoot%tf\custom\comfig"		( MKLINK /D "%GameRoot%tf\custom\comfig"     "%~dp0%tf\custom\comfig" )
IF NOT EXIST "%GameRoot%tf\custom\config"		( MKLINK /D "%GameRoot%tf\custom\config"     "%~dp0%tf\custom\config" )
IF NOT EXIST "%GameRoot%tf\custom\crosshairs"	( MKLINK /D "%GameRoot%tf\custom\crosshairs" "%~dp0%tf\custom\crosshairs" )
IF NOT EXIST "%GameRoot%tf\custom\hitsounds"	( MKLINK /D "%GameRoot%tf\custom\hitsounds"  "%~dp0%tf\custom\hitsounds" )
IF NOT EXIST "%GameRoot%tf\custom\hud"			( MKLINK /D "%GameRoot%tf\custom\hud"        "%~dp0%tf\custom\hud" )
IF NOT EXIST "%GameRoot%tf\custom\mapstuff"		( MKLINK /D "%GameRoot%tf\custom\mapstuff"   "%~dp0%tf\custom\mapstuff" )
IF NOT EXIST "%GameRoot%tf\custom\misc"			( MKLINK /D "%GameRoot%tf\custom\misc"       "%~dp0%tf\custom\misc" )

:: symlink files
IF NOT EXIST "%GameRoot%tf\benchmark_test.dem"	( MKLINK "%GameRoot%tf\benchmark_test.dem"   "%~dp0%tf\benchmark_test.dem" )

:: run compile scripts
SET CurrentDir=%cd%
CD "tf\custom\captions\resource"
CALL compile.bat
CD %CurrentDir%
CD "tf\custom\crosshairs\materials\vgui\replay\thumbnails"
CALL compile.bat
CD %CurrentDir%


PAUSE