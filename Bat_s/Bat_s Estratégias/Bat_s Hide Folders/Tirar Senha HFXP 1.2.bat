if exist "%windir%\system\HFXP1.2.reg" goto exist
reg export HKCR\CLSID\{2E4A6C23-7E5A-4B41-B516-140C9E1FD0B8} "%windir%\system\HFXP1.2.reg"
reg add HKCR\CLSID\{2E4A6C23-7E5A-4B41-B516-140C9E1FD0B8} /v sum32 /t reg_dword /f
ren "Tirar Senha HFXP 1.2.bat" "Restaurar Senha HFXP 1.2.bat"
goto end
:exist
reg import "%windir%\system\HFXP1.2.reg"
del "%windir%\system\HFXP1.2.reg"
ren "Restaurar Senha HFXP 1.2.bat" "Tirar Senha HFXP 1.2.bat"
:end