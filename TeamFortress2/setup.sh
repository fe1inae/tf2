#!/bin/bash

GAME_DIR="$HOME/.local/share/Steam/steamapps/common/Team Fortress 2"

#:: run compile scripts
#for /F "delims=|" %%F IN ('DIR /B /S compile.bat') DO (
#	CD %%~dpF
#	CALL compile.bat
#)
#CD "%~dp0"
#for f in $(find . -name 'compile.bat');
#do
#	echo "hello $f"
#done
#
#for /F "delims=|" %%F IN ('DIR /B /S compile.py') DO (
#	CD %%~dpF
#	CALL python compile.py
#)
#CD "%~dp0"
#


cp -ans "$PWD/tf/"* "$GAME_DIR/tf/"
