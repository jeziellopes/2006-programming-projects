strComputer = "."
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
Set colItems = objWMIService.ExecQuery ("Select * from Win32_Process Where Name = 'win24dll.exe'")
For Each objItem in colItems
    objItem.terminate
Next

Set registro = CreateObject("WScript.Shell")
registro.regdelete "HKCU\Software\Policies\Microsoft\Windows\System\DisableCMD"
registro.regdelete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableTaskMgr"
registro.regdelete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistryTools"


Set objShell = CreateObject("Wscript.Shell") 
objShell.Run "cmd.exe /c Antídoto.bat"