@echo off

:: Prompt the user to enter passwords
echo Enter your passwords:
set /p "password1=Password 1: "
set /p "password2=Password 2: "
set /p "password3=Password 3: "

:: Specify the output file for storing passwords
set "output_file=%USERPROFILE%\Passwords.txt"

:: Save passwords to a text file
echo Password 1: %password1% >> "%output_file%"
echo Password 2: %password2% >> "%output_file%"
echo Password 3: %password3% >> "%output_file%"

echo Passwords saved to "%output_file%"
