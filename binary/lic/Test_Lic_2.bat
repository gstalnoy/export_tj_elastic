call ring license list > C:\1.txt

for /F "" %%i in (c:\1.txt) do  call ring license info --name %%i

@echo > C:\lic_list.txt 1s Lisense List

cmd /c for /F "" %%i in (c:\1.txt) do call ring >> "C:\Program Files\1C\1CE\ring\lic_list_winsrv1c.txt" license info --name %%i

pause
