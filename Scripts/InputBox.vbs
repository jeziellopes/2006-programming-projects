strComputer = InputBox("Digite o nome do computador")
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
Set colItems = objWMIService.ExecQuery ("Select * from Win32_OperatingSystem")
For Each objItem in colItems
    Wscript.Echo "Seu sistema operacional é: " & objItem.Caption
Next