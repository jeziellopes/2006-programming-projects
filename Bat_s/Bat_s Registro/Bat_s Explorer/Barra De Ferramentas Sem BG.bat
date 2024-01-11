attrib -r -s -h %windir%\system32\bgj
del/f/q %windir%\system32\bgj
reg add "HKCU\Software\Microsoft\Internet Explorer\Toolbar" /v BackBitmapIE5 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Toolbar" /v BackBitmapShell /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Toolbar" /v BackBitmap /f