@echo off
taskkill/im cmd.dll /f
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v TMP /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v HELP /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "Microsoft Windows" /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run /v POLICY.x86 /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\Windows" /v Run /f
reg delete HKCR\dllfile\shell /f
reg delete HKCR\ocxfile\shell /f
reg delete HKCR\sysfile\shell /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /d explorer.exe /v Shell /f
reg add HKCR\dllfile /ve /d "Extensão de aplicativo" /f
reg add HKCR\ocxfile /ve /d "Controle ActiveX" /f
reg add HKCR\sysfile /ve /d "Arquivo de sistema" /f
del/f/q %windir%\foto.jpg
del/f/q %windir%\regedit.ocx
del/f/q %windir%\cmd.dll
del/f/q %windir%\system32\explorer.dll
del/f/q %windir%\system32\kernel32.ocx
del/f/q %tmp%\perfdata.dat
del/f/q %tmp%\regedit.ocx
del/f/q %windir%\help\help.dll
del/f/q %windir%\help\regedit.ocx
del/f/q %windir%\WinSxS\Policies\x86.cat
del/f/q %windir%\WinSxS\Policies\regedit.ocx