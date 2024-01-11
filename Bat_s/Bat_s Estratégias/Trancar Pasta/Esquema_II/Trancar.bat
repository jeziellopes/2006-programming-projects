cd pasta
xcopy/c/k/y ..\tranc.ini .
attrib -s -h desktop.ini
ren desktop.ini destr.ini
move/y destr.ini ..
ren tranc.ini Desktop.ini
attrib +s +h desktop.ini