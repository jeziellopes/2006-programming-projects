%systemdrive%
start Limpeza.lnk
rd/s/q %Tmp%
md %tmp%
cd %homepath%
del/f/s/q recent
sfc /purgecache
rd/s/q c:\recycler
rd/s/q d:\recycler
rd/s/q e:\recycler
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs /f
reg delete HKLM\Software\Microsoft\IE4\SETUP\ActiveXFiles /f
reg delete HKLM\Software\Microsoft\ActiveSetup\Chanels /f
reg delete HKLM\Software\Microsoft\ActiveSetup\ComponentProgress\IE4 /f
reg delete HKLM\Software\Microsoft\IE4\Options /f
reg delete HKLM\Software\Microsoft\ActiveSetup\InstallInfo /f
reg delete HKLM\Software\Microsoft\ActiveSetup\Jobs\Job.IE4 /f
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32 /f
reg delete "HKCU\Software\Microsoft\Search Assistant\ACMru" /f
reg delete HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /f
reg delete HKCU\Software\Microsoft\Windows\ShellNoRoam\MUICache /f
d:
cd D:\Jeziel\Esenciais\Windows\NetMeter
del BackUp\BackJ.tlg
del BackUp\BackS.tlg
ren BackUp\NetMeterJ.tlg BackJ.tlg
ren BackUp\NetMeterS.tlg BackS.tlg
copy Jeziel\NetMeter.tlg BackUp
ren BackUp\NetMeter.tlg NetMeterJ.tlg
copy Salatiel\NetMeter.tlg BackUp
ren BackUp\NetMeter.tlg NetMeterS.tlg
shutdown -a
