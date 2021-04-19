@ECHO OFF

:: set the game directory
SET SensMatchRoot=C:\Tools\SensitivityMatcher\

:: symlink files
MKLINK "%SensMatchRoot%CustomYawList.ini" "%~dp0%SensitivityMatcher\CustomYawList.ini"

PAUSE



