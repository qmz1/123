@echo off

:: Specify the path to the Chrome history database file
set "history_db=%LocalAppData%\Google\Chrome\User Data\Default\History"

:: Specify the output file for storing search history
set "output_file=%USERPROFILE%\GoogleSearchHistory.txt"

:: Check if the Chrome history database file exists
if not exist "%history_db%" (
    echo Error: Chrome history database file not found.
    exit /b 1
)

:: Execute SQLite query to extract Google search history and save it to the output file
sqlite3 "%history_db%" "SELECT url FROM urls WHERE url LIKE '%%google.com/search%%'" > "%output_file%"
if %errorlevel% neq 0 (
    echo Error: Failed to execute SQLite query.
    exit /b 1
)

echo Google search history saved to "%output_file%"
