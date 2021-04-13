@ECHO OFF

:: set the game directory
SET GameRoot=C:\Program Files (x86)\Steam\steamapps\common\Team Fortress 2\

:: create folders in case they dont exist
MKDIR "%GameRoot%tf"
MKDIR "%GameRoot%tf\custom"

:: symlink folders
MKLINK /D "%GameRoot%tf\custom\config"     "%~dp0%tf\custom\config"
MKLINK /D "%GameRoot%tf\custom\crosshairs" "%~dp0%tf\custom\crosshairs"
MKLINK /D "%GameRoot%tf\custom\hitsounds"  "%~dp0%tf\custom\hitsounds"
MKLINK /D "%GameRoot%tf\custom\hud"        "%~dp0%tf\custom\hud"
MKLINK /D "%GameRoot%tf\custom\mapstuff"   "%~dp0%tf\custom\mapstuff"
MKLINK /D "%GameRoot%tf\custom\misc"       "%~dp0%tf\custom\misc"

:: symlink files
MKLINK "%GameRoot%tf\benchmark_test.dem"                 "%~dp0%tf\benchmark_test.dem"
MKLINK "%GameRoot%tf\custom\mastercomfig-low-preset.vpk" "%~dp0%tf\custom\mastercomfig-low-preset.vpk"

PAUSE



