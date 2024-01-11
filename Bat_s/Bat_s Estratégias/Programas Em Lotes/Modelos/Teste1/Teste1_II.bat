IF EXIST desktop.ini goto exist
:nexist
msg * "esta pasta nao possui icone"
goto end
:exist
msg * "esta pasta possui icone"
:end