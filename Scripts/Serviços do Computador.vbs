strComputer = "."
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
Set colItems = objWMIService.ExecQuery ("Select * from Win32_Service")
dim msg
For Each objItem in colItems
    Wscript.Echo objItem.Name
Next