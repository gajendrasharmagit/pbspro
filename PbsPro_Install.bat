xcopy "C:\Program Files\pgsql" "C:\Program Files (x86)\PBS Pro\exec\pgsql" /O /X /E /H /K /y

for /d /r "C:\Program Files\Tcl\bin" %%a in (*.dll) do (
    copy "%%~fa" "C:\Program Files (x86)\PBS Pro\exec\bin"
)

xcopy "c:\program files\Tcl\lib\tcl8.3" "C:\Program Files (x86)\PBS Pro\exec\lib\tcl8.3" /O /X /E /H /K /y

xcopy "c:\program files\Tcl\lib\tcl8.3" "C:\Program Files (x86)\PBS Pro\exec\lib\tk8.3" /O /X /E /H /K /y