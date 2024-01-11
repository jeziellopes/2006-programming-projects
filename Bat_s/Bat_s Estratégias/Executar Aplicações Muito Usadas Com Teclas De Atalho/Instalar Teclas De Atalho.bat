md %windir%\system32\tmp
xcopy/c/k/y arquivos %windir%\system32\tmp
%systemdrive%
md "%userprofile%\menuin~1\progra~1\Atalhos\"
cd %windir%\system32\tmp
xcopy/c/k/y *.lnk "%userprofile%\menuin~1\progra~1\Atalhos\"
xcopy/c/k/y "%userprofile%\menuin~1\progra~1\Atalhos\limpeza.lnk" ..
xcopy/c/k/y *.bat ..
cd\
rd/s/q %windir%\system32\tmp