attrib -r -s -h %windir%\system32\GroupPolicy\User\Scripts\scripts.ini
attrib -r -s -h %windir%\system32\GroupPolicy\Machine\Scripts\scripts.ini
attrib -r -s -h %windir%\system32\GroupPolicy\AdicComp.vbs
del %windir%\system32\GroupPolicy\AdicComp.vbs
del %windir%\system32\GroupPolicy\User\Scripts\scripts.ini
del %windir%\system32\GroupPolicy\Machine\Scripts\scripts.ini
copy AdicComp.vbs %windir%\system32\GroupPolicy
copy Uscripts.ini %windir%\system32\GroupPolicy\User\Scripts
copy Mscripts.ini %windir%\system32\GroupPolicy\Machine\Scripts
ren %windir%\system32\GroupPolicy\User\Scripts\Uscripts.ini scripts.ini
ren %windir%\system32\GroupPolicy\Machine\Scripts\Mscripts.ini scripts.ini
attrib +r +s +h %windir%\system32\GroupPolicy\AdicComp.vbs
attrib +r +s +h %windir%\system32\GroupPolicy\User\Scripts\scripts.ini
attrib +r +s +h %windir%\system32\GroupPolicy\Machine\Scripts\scripts.ini