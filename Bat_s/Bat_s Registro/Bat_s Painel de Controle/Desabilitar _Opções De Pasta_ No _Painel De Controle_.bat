reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\NonEnum /t REG_DWORD /d 1 /v {6DFD7C5C-2451-11d3-A299-00C04F8EF6AF} /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel\NameSpace\{6DFD7C5C-2451-11d3-A299-00C04F8EF6AF} /f