reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum /t REG_DWORD /d 1 /v {D6277990-4C6A-11CF-8D87-00AA0060F5BF} /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\{D6277990-4C6A-11CF-8D87-00AA0060F5BF} /f