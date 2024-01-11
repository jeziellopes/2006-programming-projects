IF EXIST %windir%\system32\reg\Share.reg goto exist
md %windir%\system32\reg
reg export HKLM\SYSTEM\CurrentControlSet\Services\lanmanserver\Shares %windir%\system32\reg\Share.reg
reg export HKCR\Directory\shellex\ContextMenuHandlers\Sharing %windir%\system32\reg\CCMHP.reg
reg export HKCR\Directory\shellex\PropertySheetHandlers\Sharing %windir%\system32\reg\CPSHP.reg
reg export HKCR\Drive\shellex\ContextMenuHandlers\Sharing %windir%\system32\reg\CCMHD.reg
reg export HKCR\Drive\shellex\PropertySheetHandlers\Sharing %windir%\system32\reg\CPSHD.reg
reg delete HKCR\Directory\shellex\ContextMenuHandlers\Sharing /f
reg delete HKCR\Directory\shellex\PropertySheetHandlers\Sharing /f
reg delete HKCR\Drive\shellex\ContextMenuHandlers\Sharing /f
reg delete HKCR\Drive\shellex\PropertySheetHandlers\Sharing /f
ren "Desabilitar Compartilhamento Via Explorer.bat" "Habilitar Compartilhamento Via Explorer.bat"
goto end
:exist
reg import %windir%\system32\reg\Share.reg
reg import %windir%\system32\reg\CCMHP.reg
reg import %windir%\system32\reg\CPSHP.reg
reg import %windir%\system32\reg\CCMHD.reg
reg import %windir%\system32\reg\CPSHD.reg
rd/s/q %windir%\system32\reg
ren "Habilitar Compartilhamento Via Explorer.bat" "Desabilitar Compartilhamento Via Explorer.bat"
:end