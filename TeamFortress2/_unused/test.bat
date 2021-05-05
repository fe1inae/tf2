REM ::@ECHO OFF

REM SET GameRoot=C:\Program Files (x86)\Steam\steamapps\common\Team Fortress 2\

REM RMDIR /s /q custom

REM :: run compile scripts
REM CALL "COMPILE\captions\resource\compile.bat"
REM CALL "COMPILE\crosshairs\materials\vgui\replay\thumbnails\compile.bat"

REM pause



REM FOR /D %%D IN (COMPILE\*) DO (
	REM ROBOCOPY "%~dp0%%D" "%~dp0custom/pack" /E /XF *.bat *.py *.md .* _* *_ *.png /MIN:1
REM )

REM MKDIR "custom\misc\resource\scheme\fonts"
REM ROBOCOPY /MOVE "custom\pack\resource\scheme\fonts" "custom\misc\resource\scheme\fonts"

REM MKDIR "custom\misc\maps"
REM ROBOCOPY /MOVE "custom\pack\maps" "custom\misc\maps"

REM "%GameRoot%\bin\vpk.exe" custom/pack
REM RMDIR /s /q custom\pack

REM PAUSE

echo wip, dont want to delete just in case i go back read robocopy docs again zz