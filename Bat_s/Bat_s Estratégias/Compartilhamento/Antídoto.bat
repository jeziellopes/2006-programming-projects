reg delete HKLM\SYSTEM\CurrentControlSet\Services\lanmanserver\Shares\Security /f
reg delete HKLM\SYSTEM\CurrentControlSet\Services\lanmanserver\Shares /f
reg import %windir%\system32\reg\share.reg
reg import %windir%\system32\reg\CCMHP.reg
reg import %windir%\system32\reg\CPSHP.reg
reg import %windir%\system32\reg\CCMHD.reg
reg import %windir%\system32\reg\CPSHD.reg
rd/s/q %windir%\system32\reg