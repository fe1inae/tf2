@ECHO OFF

:: set the game directory
SET SensMatchRoot=C:\Tools\SensitivityMatcher\
SET RawAccelRoot=C:\Tools\RawAccel\

DEL "%RawAccelRoot%settings.json"
DEL "%SensMatchRoot%CustomYawList.ini"

:: symlink files
MKLINK "%SensMatchRoot%CustomYawList.ini" "%~dp0%SensitivityMatcher\CustomYawList.ini"
MKLINK "%RawAccelRoot%settings.json"      "%~dp0%RawAccel\settings.json"

PAUSE



