echo [autorun] > c:\AutoRun.inf
echo icon=windows\windows.ico >> c:\AutoRun.inf
attrib +r +s +h c:\autorun.inf
echo [autorun] > d:\AutoRun.inf
echo icon=d >> d:\AutoRun.inf
attrib +r +s +h d:\autorun.inf
echo [autorun] > e:\AutoRun.inf
echo icon=e >> e:\AutoRun.inf
attrib +r +s +h e:\autorun.inf