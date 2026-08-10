@ECHO OFF
REM Build Everything

ECHO "Building everything..."

REM Create bin directory if it doesn't exist
IF NOT EXIST bin MKDIR bin

PUSHD engine
CALL build.bat
POPD
IF %ERRORLEVEL% NEQ 0 (echo Error:%ERRORLEVEL% && exit /b %ERRORLEVEL%)

PUSHD testbed
CALL build.bat
POPD
IF %ERRORLEVEL% NEQ 0 (echo Error:%ERRORLEVEL% && exit /b %ERRORLEVEL%)

ECHO "All assemblies built successfully."

