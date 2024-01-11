attrib -r -s -h %windir%\system32\GroupPolicy\User\Scripts\scripts.ini
attrib -r -s -h %windir%\system32\GroupPolicy\Machine\Scripts\scripts.ini
attrib -r -s -h %windir%\system32\GroupPolicy\AdicComp.vbs
del %windir%\system32\GroupPolicy\User\Scripts\scripts.ini
del %windir%\system32\GroupPolicy\Machine\Scripts\scripts.ini
del %windir%\system32\GroupPolicy\AdicComp.vbs