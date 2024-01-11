if exist %windir%\system32\wf goto exist
goto end
:exist
del %windir%\System32\wt
ren %windir%\System32\wf wt
:end