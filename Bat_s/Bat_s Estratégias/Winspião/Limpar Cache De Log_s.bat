%systemdrive%
cd %windir%\system32\system
move/y ERRODLG.DAT ..
move/y EXCLDLG.DAT ..
move/y INFDLG.DAT ..
move/y Intdlg.dat ..
del/q *.dat
move/y ..\ERRODLG.DAT .
move/y ..\EXCLDLG.DAT .
move/y ..\INFDLG.DAT .
move/y ..\Intdlg.dat .