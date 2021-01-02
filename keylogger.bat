@echo off
setlocal EnableDelayedExpansion
chcp 65001
color 0a

set "chars= qwertyuiopasdfghjklzxcvbnm1234567890åæø"

:start
cls
choice /c %chars% >nul
>> %USERPROFILE%\desktop\Scripts\test.txt echo %date%-%time% !chars:~%errorlevel%,1!
goto start

