:: email.bat :::::::::::::::::::::::::::::::::::::::::::::::::::::
@Echo off
setlocal

:: use these settings to send from a gmail account
:: set port=465 and set SSL=True

:: use these settings for standard email SMTP port and no encryption
:: set port=25 and set SSL=False

:: Change these following items to use the same variables all the time
:: or use the command line to pass all the variables

set Port=465
set SSL=True
set From="louisemuzzen22@gmail.com"
set To="jostein.j.baustad@gmail.com"
set Subject="Subject line"
set Body="Email Body in one line"
set SMTPServer="smtp.gmail.com"
set User="louisemuzzen22@gmail.com"
set Pass="lapras31345"
set fileattach="%CD%\screen.png"


:: This section sets the command line arguments
:: use this format:  CALL email.bat "myname@gmail.com" "RecipientEmailAddress@server.com" "Subject line" "Email Body in one line" "smtp.gmail.com"  "myname@gmail.com" "password" "d:\folder\filename to attach.txt"


if "%~7" NEQ "" (
set From="%~1"
set To="%~2"
set Subject="%~3"
set Body="%~4"
set SMTPServer="%~5"
set User="%~6"
set Pass="%~7"
set fileattach="%~8"
)

set "vbsfile=%temp%\email-bat.vbs"
del "%vbsfile%" 2>nul
set cdoSchema=http://schemas.microsoft.com/cdo/configuration
echo >>"%vbsfile%" Set objArgs       = WScript.Arguments
echo >>"%vbsfile%" Set objEmail      = CreateObject("CDO.Message")
echo >>"%vbsfile%" objEmail.From     = %From%
echo >>"%vbsfile%" objEmail.To       = %To%
echo >>"%vbsfile%" objEmail.Subject  = %Subject%
echo >>"%vbsfile%" objEmail.Textbody = %body%
if exist %fileattach% echo >>"%vbsfile%" objEmail.AddAttachment %fileattach%
echo >>"%vbsfile%" with objEmail.Configuration.Fields
echo >>"%vbsfile%"  .Item ("%cdoSchema%/sendusing")        = 2
echo >>"%vbsfile%"  .Item ("%cdoSchema%/smtpserver")       = %SMTPServer%
echo >>"%vbsfile%"  .Item ("%cdoSchema%/smtpserverport")   = %Port%
echo >>"%vbsfile%"  .Item ("%cdoSchema%/smtpauthenticate") = 1
echo >>"%vbsfile%"  .Item ("%cdoSchema%/sendusername")     = %User%
echo >>"%vbsfile%"  .Item ("%cdoSchema%/sendpassword")     = %Pass%
echo >>"%vbsfile%"  .Item ("%cdoSchema%/smtpusessl")       = %SSL%
echo >>"%vbsfile%"  .Item ("%cdoSchema%/smtpconnectiontimeout") = 40
echo >>"%vbsfile%"  .Update
echo >>"%vbsfile%" end with
echo >>"%vbsfile%" objEmail.Send

cscript.exe /nologo "%vbsfile%"
echo email sent (if variables were correct)
del "%vbsfile%" 2>nul
goto :EOF