attrib -r -s -h c:\autorun.inf
attrib -r -s -h d:\autorun.inf
attrib -r -s -h e:\autorun.inf
del c:\autorun.inf
del d:\autorun.inf
del e:\autorun.inf
echo [autorun] > c:\AutoRun.inf
echo icon=sistema\windows.ico >> c:\AutoRun.inf
attrib +r +s +h c:\autorun.inf
echo [autorun] > d:\AutoRun.inf
echo icon=icones\Sistema (D).ico >> d:\AutoRun.inf
attrib +r +s +h d:\autorun.inf
echo [autorun] > e:\AutoRun.inf
echo icon=José Lopes (F).ico >> e:\AutoRun.inf
attrib +r +s +h e:\autorun.inf