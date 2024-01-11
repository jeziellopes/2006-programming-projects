reg add HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile /t REG_DWORD /v EnableFirewall /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile /t REG_DWORD /d 1 /v DoNotAllowExceptions /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile /t REG_DWORD /d 1 /v DisableNotifications /f
reg add "HKLM\SOFTWARE\Microsoft\Security Center" /t REG_DWORD /d 1 /v FirstRunDisabled /f
reg add "HKLM\SOFTWARE\Microsoft\Security Center" /t REG_DWORD /d 1 /v AntiVirusDisableNotify /f
reg add "HKLM\SOFTWARE\Microsoft\Security Center" /t REG_DWORD /d 1 /v FirewallDisableNotify /f
reg add "HKLM\SOFTWARE\Microsoft\Security Center" /t REG_DWORD /d 1 /v UpdatesDisableNotify /f
reg add "HKLM\SOFTWARE\Microsoft\Security Center" /t REG_DWORD /d 1 /v AntiVirusOverride /f
reg add "HKLM\SOFTWARE\Microsoft\Security Center" /t REG_DWORD /d 1 /v FirewallOverride /f