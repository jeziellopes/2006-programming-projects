if exist "%windir%\system\SenhaHFXP3.1.reg" goto exist
reg export HKLM\SOFTWARE\EverStrike %windir%\system\SenhaHFXP3.1.reg
reg export HKLM\SYSTEM\CurrentControlSet\Services\HF30Kbd %windir%\system\HFkbd3.1.reg
reg export HKLM\SYSTEM\CurrentControlSet\Services\HF30Service %windir%\system\HFser3.1.reg
reg export HKLM\SYSTEM\CurrentControlSet\Services\HF30Sys %windir%\system\HFsys3.1.reg
reg export HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist\{75048700-EF1F-11D0-9888-006097DEACF9} %windir%\system\HFUsAs3.1.reg
reg delete HKLM\SOFTWARE\EverStrike /f
reg delete HKLM\SYSTEM\CurrentControlSet\Services\HF30Kbd /f
reg delete HKLM\SYSTEM\CurrentControlSet\Services\HF30Service /f
reg delete HKLM\SYSTEM\CurrentControlSet\Services\HF30Sys /f
ren "Tirar Senha HFXP 3.1.bat" "Restaurar Senha HFXP 3.1.bat"
goto end
:exist
reg import %windir%\system\SenhaHFXP3.1.reg
reg import %windir%\system\HFkbd3.1.reg
reg import %windir%\system\HFser3.1.reg
reg import %windir%\system\HFsys3.1.reg
reg import %windir%\system\HFUsAs3.1.reg
del %windir%\system\SenhaHFXP3.1.reg
del %windir%\system\HFkbd3.1.reg
del %windir%\system\HFser3.1.reg
del %windir%\system\HFsys3.1.reg
del %windir%\system\HFUsAs3.1.reg
ren "Restaurar Senha HFXP 3.1.bat" "Tirar Senha HFXP 3.1.bat"
:end