reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /t REG_DWORD /d 1 /v NoSMConfigurePrograms /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /t REG_DWORD /v Start_ShowSetProgramAccessAndDefaults /f