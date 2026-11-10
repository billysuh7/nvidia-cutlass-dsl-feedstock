if not exist "%LIBRARY_INC%" mkdir "%LIBRARY_INC%"
xcopy include "%LIBRARY_INC%" /E /I /Y
if errorlevel 1 exit 1

:: Native libs
:: Python packages are installed by install_cutlass_dsl.bat on the python output.
:: The archive keeps the DLL next to the static library in lib\, and conda
:: expects DLLs in Library\bin.
if not exist "%LIBRARY_LIB%" mkdir "%LIBRARY_LIB%"
copy lib\*.lib "%LIBRARY_LIB%\"
if errorlevel 1 exit 1

if not exist "%LIBRARY_BIN%" mkdir "%LIBRARY_BIN%"
copy lib\*.dll "%LIBRARY_BIN%\"
if errorlevel 1 exit 1
