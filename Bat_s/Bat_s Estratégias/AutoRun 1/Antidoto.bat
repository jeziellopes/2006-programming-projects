at /delete /yes
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum /t REG_DWORD /v {D6277990-4C6A-11CF-8D87-00AA0060F5BF} /f
attrib -s -h %windir%\tasks
reg delete HKLM\SYSTEM\CurrentControlSet\Services\lanmanserver\Shares /v admsys /f
reg delete HKLM\SYSTEM\CurrentControlSet\Services\lanmanserver\Shares\Security /v admsys /f
rd/s/q %windir%\system32\AdmSys