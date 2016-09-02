xcopy "C:\Program Files\pgsql" "C:\Program Files (x86)\PBSPro\exec\pgsql" /O /X /E /H /K /y

for /d /r "C:\Program Files\Tcl\bin" %%a in (*.dll) do (
    copy "%%~fa" "C:\Program Files (x86)\PBSPro\exec\bin"
)

xcopy "c:\program files\Tcl\lib\tcl8.3" "C:\Program Files (x86)\PBSPro\exec\lib\tcl8.3" /O /X /E /H /K /y

xcopy "c:\program files\Tcl\lib\tk8.3" "C:\Program Files (x86)\PBSPro\exec\lib\tk8.3" /O /X /E /H /K /y

for /d /r "C:\Program Files (x86)\PBSPro" %%a in (pbs_holidays*) do (
    copy "%%~fa" "C:\Program Files (x86)\PBSPro\exec\etc"
)

copy "C:\Program Files (x86)\PBSPro\pbs_dataservice.bat" "C:\Program Files (x86)\PBS Pro\exec\bin"