reg add "HKCU\Control Panel\Desktop" /V MenuShowDelay /d 1 /f
reg add "HKCU\Control Panel\Desktop" /v HungAppTimeout /d 1 /f
reg add "HKCU\Control Panel\Desktop" /v WaitToKillAppTimeout /d 1 /f
reg add HKLM\SYSTEM\CurrentControlSet\Control /v WaitToKillServiceTimeout /d 1 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AlwaysUnloadDLL /ve /d 1 /f