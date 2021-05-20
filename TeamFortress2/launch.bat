@ECHO OFF

START /B CMD /C CALL "%~dp0%..\Utilities\steam_low.bat"
START /B CMD /C CALL "%~dp0%..\Utilities\restart_stuff.bat"

:::::::::::::::::::
:: PRE RUN STUFF ::
:::::::::::::::::::
CALL "%~dp0%..\TeamFortress2\setup.bat"

::::::::::::
:: LAUNCH ::
::::::::::::
START /B "" "steam://rungameid/440"

:::::::::::::::::::::::::::
:: SET PRIORITY/AFFINITY ::
:::::::::::::::::::::::::::
CALL "%~dp0%..\Utilities\set_priority.bat" "hl2"
