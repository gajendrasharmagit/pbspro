mkdir "C:\Program Files (x86)\PBSPro\PBSPro\exec\pgsql\"
mkdir "C:\Program Files (x86)\PBSPro\PBSPro\exec\lib\tcl8.3\"
mkdir "C:\Program Files (x86)\PBSPro\PBSPro\exec\lib\tk8.3\"
mkdir "C:\Program Files (x86)\PBSPro\PBSPro\exec\etc\"
mkdir "C:\Program Files (x86)\PBSPro\PBSPro\exec\python_x64\"
pbs_mkdirs


xcopy "C:\Program Files\pgsql" "C:\Program Files (x86)\PBSPro\PBSPro\exec\pgsql\" /s /y /e 

for /d /r "C:\Program Files\Tcl\bin" %%a in (*.dll) do (
    copy "%%~fa" "C:\Program Files (x86)\PBSPro\PBSPro\exec\bin\"
)



xcopy "C:\Program files\Tcl\lib\tcl8.3" "C:\Program Files (x86)\PBSPro\PBSPro\exec\lib\tcl8.3\" /s /y /e



xcopy "C:\Program Files\Tcl\lib\tk8.3" "C:\Program Files (x86)\PBSPro\PBSPro\exec\lib\tk8.3\" /s /y /e 



for /d /r "C:\Program Files (x86)\PBSPro\PBSPro\" %%a in (pbs_holidays*) do (
    copy "%%~fa" "C:\Program Files (x86)\PBSPro\PBSPro\exec\etc\"
)

xcopy "C:\Program Files (x86)\PBSPro\PBSPro\pbs_dataservice.bat" "C:\Program Files (x86)\PBS Pro\PBSPro\exec\bin\" /s /y /e


xcopy "C:\Program Files\Python27_x64" "C:\Program Files (x86)\PBSPro\PBSPro\exec\python_x64\" /s /y /e

ping 127.0.0.1 -n 60 > nul
