:: so fucking hacky but honestly, i dont care
for %%F in ("%~dp0*.txt") do (
	IF EXIST %%~nF.dat ( DEL %%~nF.dat )
	MOVE "%~dp0\%%~nF.txt" "%GameRoot%tf\resource\%%~nF.txt"
	"%GameRoot%bin\captioncompiler.exe" "%GameRoot%tf\resource\%%~nF.txt" -game "%GameRoot%\tf"
	MOVE "%GameRoot%tf\resource\%%~nF.txt" "%~dp0"
	MOVE "%GameRoot%tf\resource\%%~nF.dat" "%~dp0"
)