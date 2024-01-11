if exist recycled\desktop.ini goto exist
ren recycled\desktop.inf desktop.ini
attrib +s +h recycled\desktop.ini
ren "Montar Seguranca Active Blocked.bat" "Quebrar Seguranca Active Blocked.bat"
goto end
:exist
attrib -s -h recycled\desktop.ini
ren recycled\desktop.ini desktop.inf
start recycled
ren "Quebrar Seguranca Active Blocked.bat" "Montar Seguranca Active Blocked.bat"
:end