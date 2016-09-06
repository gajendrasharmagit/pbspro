mkdir "C:\Program Files (x86)\PBSPro\PBSPro\exec\pgsql\"
mkdir "C:\Program Files (x86)\PBSPro\PBSPro\exec\lib\tcl8.3\"
mkdir "C:\Program Files (x86)\PBSPro\PBSPro\exec\lib\tk8.3\"
mkdir "C:\Program Files (x86)\PBSPro\PBSPro\exec\python_x64\"
mkdir "C:\Program Files (x86)\PBSPro\PBSPro\exec\lib\python\python2.7"
mkdir "C:\Program Files (x86)\PBSPro\PBSPro\home\sched_priv"
mkdir "C:\Program Files (x86)\PBSPro\PBSPro\home\mom_priv"
mkdir "C:\Program Files (x86)\PBSPro\PBSPro\home\server_priv"
mkdir "C:\Program Files (x86)\PBSPro\PBSPro\home\sched_logs"
mkdir "C:\Program Files (x86)\PBSPro\PBSPro\home\server_logs"
mkdir "C:\Program Files (x86)\PBSPro\PBSPro\home\mom_logs"
"C:\Program Files (x86)\PBSPro\PBSPro\exec\bin\pbs_mkdirs.exe"


xcopy "C:\Program Files\pgsql" "C:\Program Files (x86)\PBSPro\PBSPro\exec\pgsql\" /s /y /e 

for /d /r "C:\Program Files\Tcl\bin" %%a in (*.dll) do (
    copy "%%~fa" "C:\Program Files (x86)\PBSPro\PBSPro\exec\bin\"
)

xcopy "C:\Program files\Tcl\lib\tcl8.3" "C:\Program Files (x86)\PBSPro\PBSPro\exec\lib\tcl8.3\" /s /y /e

xcopy "C:\Program Files\Tcl\lib\tk8.3" "C:\Program Files (x86)\PBSPro\PBSPro\exec\lib\tk8.3\" /s /y /e 

xcopy "C:\Program Files\Python27_x64" "C:\Program Files (x86)\PBSPro\PBSPro\exec\python_x64\" /s /y /e

for /d /r "C:\Program Files\Python-2.7.11\Lib" %%a in (*.py*) do (
    copy "%%~fa" "C:\Program Files (x86)\PBSPro\PBSPro\exec\lib\python\python2.7\"
)

for /d /r "C:\Program Files\Python27" %%a in (*.py*) do (
    copy "%%~fa" "C:\Program Files (x86)\PBSPro\PBSPro\exec\python\"
)

for /d /r "C:\Program Files (x86)\PBS Pro\PBSPro\include" %%a in (*.h) do (
    copy "%%~fa" "C:\Program Files (x86)\PBSPro\PBSPro\exec\include\"
)

xcopy "C:\Program Files (x86)\PBSPro\PBSPro\zoneinfo" "C:\Program Files (x86)\PBSPro\PBSPro\exec\include\"  /s /y /e

"C:\Program Files (x86)\PBS Pro\PBSPro\exec\bin\pbs_mkdirs.exe"

ping 127.0.0.1 -n 60 > nul
