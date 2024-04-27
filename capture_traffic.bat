@echo off

:: Specify the path to the Chrome history database file
set "history_db=%LocalAppData%\Google\Chrome\User Data\Default\History"

:: Specify the output file for storing search history
set "output_file=%USERPROFILE%\GoogleSearchHistory.txt"

:: Execute SQLite query to extract Google search history
sqlite3 "%history_db%" "SELECT url FROM urls WHERE url LIKE '%google.com/search%'" > "%output_file%"

echo Google search history saved to "%output_file%"
