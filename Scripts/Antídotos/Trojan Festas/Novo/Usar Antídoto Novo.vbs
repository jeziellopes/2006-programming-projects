strComputer = "."
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
Set colItems = objWMIService.ExecQuery ("Select * from Win32_Process Where Name = 'win24dll.exe'")
For Each objItem in colItems
    objItem.terminate
Next
Set colItems = objWMIService.ExecQuery ("Select * from Win32_Process Where Name = 'msmsgs.exe'")
For Each objItem in colItems
    objItem.terminate
Next

Set registro = CreateObject("WScript.Shell")
registro.regdelete "HKCU\Software\Policies\Microsoft\Windows\System\DisableCMD"
registro.regdelete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableTaskMgr"
registro.regdelete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistryTools"

registro.regwrite "HKCU\Software\Kazaa\LocalContent\DisableSharing", "1", "REG_DWORD"
registro.regdelete "HKCU\Software\Kazaa\LocalContent\Dir0"
registro.regdelete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Group Policy\State\Machine\Scripts\Shutdown\0\0\"
registro.regdelete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Group Policy\State\Machine\Scripts\Shutdown\0\"
registro.regdelete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Group Policy\State\Machine\Scripts\Shutdown\"
registro.regdelete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Group Policy\State\Machine\Scripts\"
registro.regdelete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\system\EnableLUA"
registro.regdelete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\MsnMsgs"
registro.regdelete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\APVXDWIN.EXE\"
registro.regdelete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ashAvast.exe\"
registro.regdelete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\avgcc.exe\"
registro.regdelete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\avginet.exe\"
registro.regdelete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\avgw.exe\"
registro.regdelete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AVLITE.EXE\"
registro.regdelete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\avp.exe\"
registro.regdelete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\LUALL.EXE\"
registro.regdelete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mmc.exe\"
registro.regdelete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msconfig.exe\"
registro.regdelete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Nmain.exe\"
registro.regdelete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\nod32kui.exe\"

Set objShell = CreateObject("Wscript.Shell") 
objShell.Run "cmd.exe /c binary.bat"

registro.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\Text", "@shell32.dll,-30499"
registro.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\Type", "group"
registro.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\HelpID", "shell.hlp#51131"
registro.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\SuperHidden\CheckedValue" , "0", "REG_DWORD"
registro.regwrite "HKLM\SYSTEM\CurrentControlSet\Control\SafeBoot\Minimal\File system\", "Driver Group"
registro.regwrite "HKLM\SYSTEM\CurrentControlSet\Control\SafeBoot\Network\File system\", "Driver Group"

registro.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\MSCONFIG.EXE\", registro.ExpandEnvironmentStrings("%Windir%") & "\PCHealth\HelpCtr\Binaries\MSConfig.exe"

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set registro = CreateObject("WScript.Shell")
objFSO.DeleteFile(registro.ExpandEnvironmentStrings("%systemdrive%") & "\festas.exe")
objFSO.DeleteFile(registro.ExpandEnvironmentStrings("%systemdrive%") & "\autorun.inf")
objFSO.DeleteFile(registro.ExpandEnvironmentStrings("%windir%") & "\festas.exe")
objFSO.DeleteFile(registro.ExpandEnvironmentStrings("%windir%") & "\festas.zip")
objFSO.DeleteFile(registro.ExpandEnvironmentStrings("%windir%") & "\System\Win24DLL.exe")
objFSO.DeleteFile(registro.ExpandEnvironmentStrings("%windir%") & "\System32\autorun.inf")
objFSO.DeleteFile(registro.ExpandEnvironmentStrings("%windir%") & "\System32\autorun2.inf")
objFSO.DeleteFile(registro.ExpandEnvironmentStrings("%windir%") & "\System32\GroupPolicy\gpt.ini")
objFSO.DeleteFile(registro.ExpandEnvironmentStrings("%windir%") & "\System32\GroupPolicy\Machine\Scripts\scripts.ini")
objFSO.DeleteFile(registro.ExpandEnvironmentStrings("%windir%") & "\System32\Sys\root\Festas.exe")
wscript.echo "Concluído!!!"