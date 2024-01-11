md policies\exportar
set l1=\Software\Microsoft\Windows\CurrentVersion\
set l2=policies\exportar\Pol_HK
reg export HKCU%l1%policies\explorer %l2%CU_I.reg
reg export HKCU%l1%explorer\advanced %l2%CU_II.reg
reg export HKCU%l1%Explorer\Advanced %l2%CU_IV.reg
reg export HKCU\software\policies %l2%CU_III.reg
reg export HKLM%l1%policies %l2%LM.reg