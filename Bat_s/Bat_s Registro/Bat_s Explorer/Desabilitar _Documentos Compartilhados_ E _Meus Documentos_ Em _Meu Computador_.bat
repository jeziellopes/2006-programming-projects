reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /t REG_DWORD /d 1 /v NoSharedDocuments /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\DelegateFolders\{59031a47-3f72-44a7-89c5-5595fe6b30ee} /f