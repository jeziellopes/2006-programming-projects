%systemdrive%
cd %windir%\system32
del/f/q comp.bat
del/f/q copy.bat
del/f/q info.bat
del/f/q limp.bat
at /delete /yes
schtasks /delete /tn * /f