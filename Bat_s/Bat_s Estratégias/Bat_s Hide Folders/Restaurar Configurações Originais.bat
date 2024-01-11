set t="hklm\SOFTWARE\FSPro Labs\Hide Folders XP"
reg add %t% /t reg_dword /d 1 /v CloseAction /f
reg add %t% /t reg_dword /d 1 /v MinimizeAction /f
reg add %t% /t reg_dword /d 49373 /v hkUnhide /f
reg add %t% /t reg_dword /d 49240 /v hkOpen /f
reg add %t% /t reg_dword /d 49378 /v hkTrayIconVisibility /f
reg add %t% /t reg_dword /d 49372 /v hkHide /f
reg add %t% /t reg_dword /d 1 /v HideToTrayAtStartup /f
reg add %t% /t reg_dword /d 1 /v ClearRecycleBin /f
reg add %t% /t reg_dword /d 1 /v ClearHiddenRecent /f
reg add %t% /t reg_dword /d 1 /v ClearRecent /f
reg add %t% /t reg_dword /d 1 /v UninstallAskPass /f