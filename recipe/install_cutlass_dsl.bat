@echo on

:: The archive keeps one python_packages\python<version>[t] tree per interpreter.
:: The Windows site-packages path has no version or ABI suffix, so unlike on
:: Linux, %SP_DIR% needs no fixing on free-threaded builds.
"%PYTHON%" -c "import sysconfig; print('python' + sysconfig.get_config_var('py_version_nodot') + ('t' if sysconfig.get_config_var('Py_GIL_DISABLED') else ''))" > pydir_name.txt
if errorlevel 1 exit 1
set /p pydir_name=<pydir_name.txt
if errorlevel 1 exit 1
set "pydir=%SRC_DIR%\python_packages\%pydir_name%"

for /f "tokens=1 delims=." %%a in ("%cuda_compiler_version%") do set "ctk_major=%%a"
set "other_ctk_major=12"
if "%ctk_major%" == "12" set "other_ctk_major=13"
set "dsl_root=%SP_DIR%\nvidia_cutlass_dsl"

:: What's below is so that we mirror the wheel's layout for compatibility for the wheel users
:: Eventually we'll remove this and follow conda's layout
xcopy "%pydir%" "%dsl_root%\dsl_packages" /E /I /Y
if errorlevel 1 exit 1
> "%SP_DIR%\nvidia_cutlass_dsl_packages.pth" echo nvidia_cutlass_dsl/dsl_packages
if errorlevel 1 exit 1

:: Since we are mimicking wheel layout for conda, the runtime library, the static
:: library and the header appear in two places. conda packages cannot carry
:: symlinks on Windows, so unlike on Linux these are copies of the canonical
:: files in %LIBRARY_BIN%, %LIBRARY_LIB% and %LIBRARY_INC%.
mkdir "%dsl_root%\cu%ctk_major%\lib" "%dsl_root%\cu%ctk_major%\include"
if errorlevel 1 exit 1
copy "%LIBRARY_BIN%\cute_dsl_runtime.dll" "%dsl_root%\cu%ctk_major%\lib\"
if errorlevel 1 exit 1
copy "%LIBRARY_LIB%\cuda_dialect_runtime_static.lib" "%dsl_root%\cu%ctk_major%\lib\"
if errorlevel 1 exit 1
copy "%LIBRARY_INC%\CuteDSLRuntime.h" "%dsl_root%\cu%ctk_major%\include\"
if errorlevel 1 exit 1

:: cuda-version admits only one CUDA major version per environment, so the other
:: cu<major> directory is always empty. conda cannot ship an empty directory, so
:: writing the README is also what creates it.
mkdir "%dsl_root%\cu%other_ctk_major%"
if errorlevel 1 exit 1
set "readme=%dsl_root%\cu%other_ctk_major%\README.txt"
> "%readme%" echo This folder is empty because you have installed the CTK %ctk_major% variant.
>>"%readme%" echo Only one CUDA major version can be installed at a time, so
>>"%readme%" echo cu%ctk_major% holds the runtime library, the static library and the header, and
>>"%readme%" echo cu%other_ctk_major% holds nothing.
>>"%readme%" echo.
>>"%readme%" echo To use CUDA %other_ctk_major% instead, create an environment that asks for it:
>>"%readme%" echo.
>>"%readme%" echo     conda install nvidia-cutlass-dsl "cuda-version=%other_ctk_major%"
if errorlevel 1 exit 1

:: The files above are copied rather than pip-installed, so pip check and
:: importlib.metadata only see this package through the dist-info that the
:: redist archive ships.
xcopy "%SRC_DIR%\nvidia_cutlass_dsl-%PKG_VERSION%.dist-info" "%SP_DIR%\nvidia_cutlass_dsl-%PKG_VERSION%.dist-info" /E /I /Y
if errorlevel 1 exit 1
