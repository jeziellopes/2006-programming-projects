@echo off
taskkill /im system.exe /f
rd/s/q %windir%\system32\system
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v SYSTEM /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v SYSTEM /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run /v SYSTEM /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\Windows" /v Run /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /d explorer.exe /v Shell /f