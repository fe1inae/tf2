@ECHO OFF

REM set the game directory
SET GameRoot=C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\

REM create folders in case they dont exist
MKDIR "%GameRoot%csgo"
MKDIR "%GameRoot%csgo\cfg"

REM symlink folders
MKLINK /D "%GameRoot%csgo\cfg\user" "%~dp0%csgo\cfg\user"

REM symlink files
MKLINK "%GameRoot%csgo\cfg\autoexec.cfg" "%~dp0%csgo\cfg\autoexec.cfg"

PAUSE



