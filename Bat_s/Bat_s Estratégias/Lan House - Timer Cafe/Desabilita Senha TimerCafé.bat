%systemdrive%
cd %windir%\System32
if exist %windir%\System32\wf goto exist
ren .\wt wf
:exist