strComputer = "."
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
Set colItems = objWMIService.ExecQuery ("Select * from Win32_Process")
dim msg
For Each objItem in colItems
    msg = msg & chr(10) & objItem.Name
Next
Wscript.Echo msg