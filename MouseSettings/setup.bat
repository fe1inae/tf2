@ECHO OFF

REM set the game directory
SET RawAccelRoot=C:\Tools\RawAccel\
SET SensMatchRoot=C:\Tools\SensitivityMatcher\

REM symlink files
MKLINK "%RawAccelRoot%settings.json" "%~dp0%RawAccel\settings.json"
MKLINK "%SensMatchRoot%CustomYawList.ini" "%~dp0%SensitivityMatcher\CustomYawList.ini"

PAUSE



