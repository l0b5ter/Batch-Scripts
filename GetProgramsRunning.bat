powershell -Command "Get-Process | Where-Object { $_.MainWindowTitle } | Format-Table ID,Name,Mainwindowtitle -AutoSize"
PAUSE