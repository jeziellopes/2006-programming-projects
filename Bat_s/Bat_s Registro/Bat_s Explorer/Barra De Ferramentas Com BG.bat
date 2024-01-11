attrib -s -h bgj
xcopy/c/k/y bgj %windir%\system32
attrib +s +h bgj
attrib +s +h %windir%\system32\bgj
reg add "HKCU\Software\Microsoft\Internet Explorer\Toolbar" /d %windir%\system32\bgj /v BackBitmapIE5 /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Toolbar" /d %windir%\system32\bgj /v BackBitmapShell /f
reg add "HKCU\Software\Microsoft\Internet Explorer\Toolbar" /d %windir%\system32\bgj /v BackBitmap /f