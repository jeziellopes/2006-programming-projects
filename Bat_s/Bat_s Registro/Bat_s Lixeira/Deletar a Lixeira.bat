reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{645FF040-5081-101B-9F08-00AA002F954E} /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum /t REG_DWORD /d 1 /v {645FF040-5081-101B-9F08-00AA002F954E} /f