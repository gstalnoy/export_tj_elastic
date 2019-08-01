call ring license list > "C:\Program Files\1C\1CE\ring\1.txt"

for /F "" %%i in ("C:\Program Files\1C\1CE\ring\1.txt") do  call ring license info --name %%i

@echo > "C:\Program Files\1C\1CE\ring\lic_list.txt" 1s Lisense List

cmd /c for /F "" %%i in ("C:\Program Files\1C\1CE\ring\1.txt") do call ring >> "C:\Program Files\1C\1CE\ring\lic_list_dev0.txt" license info --name %%i

pause
