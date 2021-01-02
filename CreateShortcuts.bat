@echo off

set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

if exist "%USERPROFILE%\Desktop\Chrome.lnk" (
	echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
	echo sLinkFile = "%USERPROFILE%\Desktop\Chrome.lnk" >> %SCRIPT%
	echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
	if exist "%ProgramFiles(x86)%" (
		echo oLink.TargetPath = "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" >> %SCRIPT%
	) else (
		echo oLink.TargetPath = "%ProgramFiles%\Google\Chrome\Application\chrome.exe" >> %SCRIPT%
	)
	echo oLink.Save >> %SCRIPT%
	cscript /nologo %SCRIPT%
) else if exist "%USERPROFILE%\Desktop\Google Chrome.lnk" (
	echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
	echo sLinkFile = "%USERPROFILE%\Desktop\Chrome.lnk" >> %SCRIPT%
	echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
	if exist "%ProgramFiles(x86)%" (
		echo oLink.TargetPath = "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" >> %SCRIPT%
	) else (
		echo oLink.TargetPath = "%ProgramFiles%\Google\Chrome\Application\chrome.exe" >> %SCRIPT%
	)
	echo oLink.Save >> %SCRIPT%
	cscript /nologo %SCRIPT%
) else if exist "%USERPROFILE%\Desktop\Microsoft Edge.lnk" (
	echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
	echo sLinkFile = "%USERPROFILE%\Desktop\Microsoft Edge.lnk" >> %SCRIPT%
	echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
	if exist "%ProgramFiles(x86)%" (
		echo oLink.TargetPath = "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" >> %SCRIPT%
	) else (
		echo oLink.TargetPath = "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" >> %SCRIPT%
	)
	echo oLink.Save >> %SCRIPT%
	cscript /nologo %SCRIPT%
) else if exist "%USERPROFILE%\Desktop\Mozilla Firefox.lnk" (
	echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
	echo sLinkFile = "%USERPROFILE%\Desktop\Mozilla Firefox.lnk" >> %SCRIPT%
	echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
	if exist "%ProgramFiles(x86)%" (
		echo oLink.TargetPath = "%ProgramFiles(x86)%\Mozilla Firefox\firefox.exe" >> %SCRIPT%
	) else (
		echo oLink.TargetPath = "%ProgramFiles%\Mozilla Firefox\firefox.exe" >> %SCRIPT%
	)
	echo oLink.Save >> %SCRIPT%
	cscript /nologo %SCRIPT%
) else if exist "%USERPROFILE%\Desktop\Firefox.lnk" (
	echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
	echo sLinkFile = "%USERPROFILE%\Desktop\Firefox.lnk" >> %SCRIPT%
	echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
	if exist "%ProgramFiles(x86)%" (
		echo oLink.TargetPath = "%ProgramFiles(x86)%\Mozilla Firefox\firefox.exe" >> %SCRIPT%
	) else (
		echo oLink.TargetPath = "%ProgramFiles%\Mozilla Firefox\firefox.exe" >> %SCRIPT%
	)
	echo oLink.Save >> %SCRIPT%
	cscript /nologo %SCRIPT%
) else if exist "%USERPROFILE%\Desktop\Internet Explorer Browser.lnk" (
	echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
	echo sLinkFile = "%USERPROFILE%\Desktop\Internet Explorer Browser.lnk" >> %SCRIPT%
	echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
	if exist "%ProgramFiles(x86)%" (
		echo oLink.TargetPath = "%ProgramFiles(x86)%\Internet Explorer\iexplore.exe" >> %SCRIPT%
	) else (
		echo oLink.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" >> %SCRIPT%
	)
	echo oLink.Save >> %SCRIPT%
	cscript /nologo %SCRIPT%
) else if exist "%USERPROFILE%\Desktop\Internet Explorer.lnk" (
	echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
	echo sLinkFile = "%USERPROFILE%\Desktop\Internet Explorer.lnk" >> %SCRIPT%
	echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
	if exist "%ProgramFiles(x86)%" (
		echo oLink.TargetPath = "%ProgramFiles(x86)%\Internet Explorer\iexplore.exe" >> %SCRIPT%
	) else (
		echo oLink.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" >> %SCRIPT%
	)
	echo oLink.Save >> %SCRIPT%
	cscript /nologo %SCRIPT%
) else if exist "%USERPROFILE%\Desktop\Explorer.lnk" (
	echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
	echo sLinkFile = "%USERPROFILE%\Desktop\Explorer.lnk" >> %SCRIPT%
	echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
	if exist "%ProgramFiles(x86)%" (
		echo oLink.TargetPath = "%ProgramFiles(x86)%\Internet Explorer\iexplore.exe" >> %SCRIPT%
	) else (
		echo oLink.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" >> %SCRIPT%
	)
	echo oLink.Save >> %SCRIPT%
	cscript /nologo %SCRIPT%
) else if exist "%USERPROFILE%\Desktop\Dropbox.lnk" (
	echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
	echo sLinkFile = "%USERPROFILE%\Desktop\Dropbox.lnk" >> %SCRIPT%
	echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
	if exist "%ProgramFiles(x86)%" (
		echo oLink.TargetPath = "%ProgramFiles(x86)%\Dropbox\Client\Dropbox.exe"" >> %SCRIPT%
	) else (
		echo oLink.TargetPath = "%ProgramFiles%\Dropbox\Client\Dropbox.exe"" >> %SCRIPT%
	)
	echo oLink.Save >> %SCRIPT%
	cscript /nologo %SCRIPT%
) 