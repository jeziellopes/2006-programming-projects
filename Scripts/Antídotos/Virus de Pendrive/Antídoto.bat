attrib -r -s -h c:\autorun.inf
attrib -r -s -h d:\autorun.inf
attrib -r -s -h e:\autorun.inf
attrib -r -s -h f:\autorun.inf
attrib -r -s -h g:\autorun.inf
attrib -r -s -h h:\autorun.inf
attrib -r -s -h i:\autorun.inf
attrib -r -s -h j:\autorun.inf
attrib -r -s -h k:\autorun.inf
attrib -r -s -h l:\autorun.inf
attrib -r -s -h m:\autorun.inf
attrib -r -s -h n:\autorun.inf
attrib -r -s -h o:\autorun.inf
attrib -r -s -h p:\autorun.inf
del c:\autorun.inf
del d:\autorun.inf
del e:\autorun.inf
del f:\autorun.inf
del g:\autorun.inf
del h:\autorun.inf
del i:\autorun.inf
del j:\autorun.inf
del k:\autorun.inf
del l:\autorun.inf
del m:\autorun.inf
del n:\autorun.inf
del o:\autorun.inf
del p:\autorun.inf
attrib -s -h -r %windir%\system32\kavo.exe
attrib -s -h -r %windir%\system32\tavo.exe
del %windir%\system32\kavo.exe
del %windir%\system32\tavo.exe
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v kava /f
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v tava /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v Hidden /t reg_dword /d 1 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v ShowSuperHidden /t reg_dword /d 1 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\NOHIDDEN /v CheckedValue /t reg_dword /d 2 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL /v CheckedValue /t reg_dword /d 1 /f
