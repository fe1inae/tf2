@ECHO OFF

:: set the game directory
SET GameRoot=C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\

:: create folders in case they dont exist
MKDIR "%GameRoot%csgo"
MKDIR "%GameRoot%csgo\cfg"

:: symlink folders
MKLINK /D "%GameRoot%csgo\cfg\user" "%~dp0%csgo\cfg\user"

:: symlink files
MKLINK "%GameRoot%csgo\cfg\autoexec.cfg" "%~dp0%csgo\cfg\autoexec.cfg"

PAUSE
