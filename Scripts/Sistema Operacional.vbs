strComputer = "."
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
Set colItems = objWMIService.ExecQuery ("Select * from Win32_OperatingSystem")
For Each objItem in colItems
    Wscript.Echo objItem.Caption
Next