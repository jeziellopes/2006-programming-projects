set i=reg add HKLM\SYSTEM\CurrentControlSet\Services\lanmanserver\Shares /t REG_MULTI_SZ /d 
set d1=CSCFlags=0\0MaxUses=4294967295\0Path=
set d2=\0Permissions=0\0Remark=Acesse...\0Type=0
reg delete HKLM\SYSTEM\CurrentControlSet\Services\lanmanserver\Shares /f
%i%%d1%A:\%d2% /v A /f
%i%%d1%B:\%d2% /v B /f
%i%%d1%C:\%d2% /v C /f
%i%%d1%D:\%d2% /v D /f
%i%%d1%E:\%d2% /v E /f
%i%%d1%F:\%d2% /v F /f
%i%%d1%G:\%d2% /v G /f
%i%%d1%H:\%d2% /v H /f
%i%%d1%I:\%d2% /v I /f
%i%%d1%J:\%d2% /v J /f
%i%%d1%K:\%d2% /v K /f
%i%%d1%L:\%d2% /v L /f
%i%%d1%M:\%d2% /v M /f
%i%"%d1%Microsoft Office Document Image Writer,LocalsplOnly\0Permissions=0\0Remark=Microsoft Office Document Image Writer\0Type=1" /v Impressora /f
%i%"%d1%%windir%\system32\spool\drivers\0Permissions=0\0Remark=Drivers de impressora\0Type=0" /v print$ /f
%i%"%d1%%allusersprofile%\Documentos%d2%" /v SharedDoc's /f
%i%"%d1%%userprofile%\Meus documentos%d2%" /v "Meus documentos" /f
set i=reg add HKLM\SYSTEM\CurrentControlSet\Services\lanmanserver\Shares\Security /t REG_BINARY /d 
set dd=01000480300000004c000000000000001400000002001c000100000000001400ff011f0001010000000000010000000001050000000000051500000078006d1f625cbc0643170a32eb03000001050000000000051500000078006d1f625cbc0643170a3201020000
set dp=01000480300000004c000000000000001400000002001c000100000000001400ff011f0001010000000000010000000001050000000000051500000078006d1f625cbc0643170a32eb03000001050000000000051500000078006d1f625cbc0643170a3201020000
%i%%dd% /v A /f
%i%%dd% /v B /f
%i%%dd% /v C /f
%i%%dd% /v D /f
%i%%dd% /v E /f
%i%%dd% /v F /f
%i%%dd% /v G /f
%i%%dd% /v H /f
%i%%dd% /v I /f
%i%%dd% /v J /f
%i%%dd% /v K /f
%i%%dd% /v L /f
%i%%dd% /v M /f
%i%%dp% /v SharedDoc's /f
%i%%dp% /v "Meus documentos" /f
exit