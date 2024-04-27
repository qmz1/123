@echo off

:: Display the command prompt
cls
echo qmze
set /p "response=Do you know qmze (yes/no)? "

:: Check the user's response
if /i "%response%"=="yes" (
    :: Print "Pass" in green
    color 0A
    echo Pass
) else (
    :: Print "not good" in red
    color 0C
    echo not good
)

:: Ask the user if they like qmze
timeout /t 2 >nul
cls
set /p "response=Do you like qmze (yes/no)? "

:: Check the user's response
if /i "%response%"=="yes" (
    :: Close the command prompt
    exit
) else (
    :: Print "not good" in red
    color 0C
    echo not good
)

:: Wait for 2 seconds before shutting down the computer
timeout /t 2 >nul
shutdown /s /t 0
