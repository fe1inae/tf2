@ECHO OFF

:: both sometimes crank cpu usage for no reason, just script to restart

START /WAIT TASKKILL /IM "obs64.exe" /F
START /B /D"C:\Program Files\obs-studio\bin\64bit" "" "C:\Program Files\obs-studio\bin\64bit\obs64.exe" "--startreplaybuffer"
START /WAIT TASKKILL /IM "NVIDIA RTX Voice.exe" /F
START /B /D"C:\Program Files\NVIDIA Corporation\NVIDIA RTX Voice" "" "C:\Program Files\NVIDIA Corporation\NVIDIA RTX Voice\NVIDIA RTX Voice.exe"


