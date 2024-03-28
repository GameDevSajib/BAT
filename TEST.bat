::BISMILLAH
@echo off
:loop
if "%1"=="" GOTO completed
FOR %%F IN (%1) DO echo %%F
SHIFT
GOTO Loop
:completed




::Background Process 
@echo off 
TASKLIST > process.txt


:: printing Triangle shape 
echo TRIANGLE SHAPE
@echo off
setlocal enabledelayedexpansion

rem Define the size of the shape
set size=10

rem Outer loop for rows
for /l %%i in (1,1,%size%) do (
    rem Inner loop for columns
    for /l %%j in (1,1,%%i) do (
        echo|set /p="*"
    )
    echo.
)

endlocal


::printing Square shape

echo PRINTING SQUARE SHAPE

@echo off
setlocal enabledelayedexpansion

rem Define the size of the square
set size=10

rem Outer loop for rows
for /l %%i in (1,1,%size%) do (
    rem Inner loop for columns
    for /l %%j in (1,1,%size%) do (
        echo|set /p="*"
    )
    echo.
)

endlocal







::ENABLEING WINDOWS DEFENDER 
@echo off

rem Check if running with administrative privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This script requires administrative privileges. Please run it as administrator.
    pause
    exit /b
)

rem Attempt to enable Windows Defender
echo Enabling Windows Defender...
powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $false"

if %errorlevel% equ 0 (
    echo Windows Defender has been enabled successfully.
) else (
    echo Failed to enable Windows Defender.
)

pause


::DISABLING WINDOWS DEFENDER 

@echo off

rem Check if running with administrative privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo This script requires administrative privileges. Please run it as administrator.
    pause
    exit /b
)

rem Attempt to disable Windows Defender
echo Disabling Windows Defender...
powershell -Command "Set-MpPreference -DisableRealtimeMonitoring $true"

if %errorlevel% equ 0 (
    echo Windows Defender has been disabled successfully.
) else (
    echo Failed to disable Windows Defender.
)

pause



