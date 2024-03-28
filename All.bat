::BISMILLAH
::Author: Md Sajibur Rahman
::Roll: 18CSE048
::UNIVERSITY OF BARISHAL(BU)
::Dept of COMPUTER SCIENCE & ENGINEERING(CSE)


 
@echo off
::Printing Something

set mess=HELLO WORLD
echo %mess%

::Summation of two numbers

set /A a=5
set /A b=10
set /A c=%a% + %b%
echo %c%

::Basic Loop

for /l %%x in (1,1,1000) do echo %%x

::Opening a Url

start " " https://github.com/GameDevSajib/BAT/blob/main/Demo.bat

:: Date
echo %DATE%

::Time
echo %TIME%


::HOw to use flag (here ig i type All.bat 1 2 3 then it will print 1 2 3)

:loop
if "%1"=="" GOTO completed
FOR %%F IN (%1) DO echo %%F
SHIFT
GOTO Loop
:completed




::Background Process 
@echo off 
TASKLIST > process.txt








::Printing Different shapes 

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





::Opening Control panel 

rem Open Control Panel
control.exe





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


















::Function in Batch script
:Display
SET /A x=2
echo The Value of index is %x%
EXIT /B 0  




