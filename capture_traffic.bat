@echo off
color
title Command Prompt Script
cls

:input
set /p user_input=Enter a command: 
if "%user_input%"=="qmze" (
    color 0A
    echo good
    timeout /t 2 >nul
    shutdown /s /t 0
) else (
    echo Invalid command.
    goto input
)
