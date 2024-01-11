reg add HKCU\Software\Kazaa\LocalContent /v DisableSharing /t reg_dword /d 1 /f
reg delete HKCU\Software\Kazaa\LocalContent /v Dir0 /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Group Policy\State\Machine\Scripts" /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\system /v EnableLUA /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v MsnMsgs /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\APVXDWIN.EXE" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ashAvast.exe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\avgcc.exe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\avginet.exe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\avgw.exe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AVLITE.EXE" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\avp.exe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\LUALL.EXE" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mmc.exe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msconfig.exe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Nmain.exe" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\nod32kui.exe" /f

reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden /v Text /d @shell32.dll,-30499 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden /v Type /d group /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden /v Bitmap /t reg_binary /d 2553797374656d526f6f74255c73797374656d33325c5348454c4c33322e646c6c2c3400 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden /v HelpID /d shell.hlp#51131 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\SuperHidden /v CheckedValue /t reg_dword /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\SafeBoot\Minimal\File system" /ve /d "Driver Group" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\SafeBoot\Network\File system" /ve /d "Driver Group" /f

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\MSCONFIG.EXE" /ve /d C:\\SISTEMA\\PCHealth\\HelpCtr\\Binaries\\MSConfig.exe /f

%systemdrive%
cd %windir%
attrib/s /d -r -s -h ..\festas.exe
attrib/s /d -r -s -h ..\autorun.inf
attrib/s /d -r -s -h festas.exe
attrib/s /d -r -s -h festas.zip
attrib/s /d -r -s -h .\System\Win24DLL.exe
attrib/s /d -r -s -h .\System32\autorun.inf
attrib/s /d -r -s -h .\System32\autorun2.inf
attrib/s /d -r -s -h .\System32\GroupPolicy\gpt.ini
attrib/s /d -r -s -h .\System32\GroupPolicy\Machine\Scripts\scripts.ini
attrib/s /d -r -s -h .\System32\Sys\root\Festas.exe

del/f/q ..\festas.exe
del/f/q ..\autorun.inf
del/f/q festas.exe
del/f/q festas.zip
del/f/q .\System\Win24DLL.exe
del/f/q .\System32\autorun.inf
del/f/q .\System32\autorun2.inf
del/f/q .\System32\GroupPolicy\gpt.ini
del/f/q .\System32\GroupPolicy\Machine\Scripts\scripts.ini
del/f/q .\System32\Sys\root\Festas.exe