taskkill/im timercafe.exe /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /d explorer.exe /v Shell /f
reg import tc
tskill explorer