@echo off
setlocal EnableDelayedExpansion

rem  ----------------------------------------------------------------------------
rem Ring runner
rem
rem Required environment variables:
rem JAVA_HOME - location of a Java installation directory.
rem RING_OPTS - additional Java options
rem  ----------------------------------------------------------------------------

if not "%JAVA_HOME%" == "" goto javahome

echo.
echo Error: JAVA_HOME environment variable is not set.
echo Please set the JAVA_HOME environment variable to the location of your Java installation.
echo.
goto error

:javahome
if exist "%JAVA_HOME%\bin\java.exe" goto init

echo.
echo Error: %JAVA_HOME%\bin\java.exe is not found.
echo Please set the JAVA_HOME environment variable to the location of your Java installation.
echo.
goto error

:error
cmd /C exit /B 1

:init
SETLOCAL ENABLEEXTENSIONS
if ERRORLEVEL 1 (
    echo Unable to enable extensions
    goto error
)
set RING_JAVA="%JAVA_HOME%\bin\java.exe"
set RING_MAIN="com._1c.ring.cli.Ring"

set java_opts_adds=
rem check whether we can use additional java options
if DEFINED RING_OPTS (
    set java_opts_adds=%RING_OPTS%
)

set CLASSPATH="
for /R "%~dp0/lib" %%a in (*.jar) do (
    set CLASSPATH=!CLASSPATH!;%%a
)
set CLASSPATH=!CLASSPATH!"

%RING_JAVA% %java_opts_adds% -cp %CLASSPATH% %RING_MAIN% %*
ENDLOCAL
