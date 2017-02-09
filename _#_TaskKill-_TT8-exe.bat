cd\
cd\
c:
C:
MKDIR C:\TEMP
tasklist | find "TT8.exe"
IF ERRORLEVEL 0 ECHO %COMPUTERNAME%_發現TT8.exe >C:\TEMP\%COMPUTERNAME%_Kill-TT8.log
IF ERRORLEVEL 0 tasklist | find "TT8.exe" >>C:\TEMP\%COMPUTERNAME%_Kill-TT8.log
IF ERRORLEVEL 0 ipconfig | find "IPv4" >>C:\TEMP\%COMPUTERNAME%_Kill-TT8.log

tasklist | find "TT8.exe"
IF ERRORLEVEL 0 ECHO %COMPUTERNAME%_發現TT8.exe >>C:\TEMP\%COMPUTERNAME%_Kill-TT8.log
IF ERRORLEVEL 0 tasklist | find "TT8.exe" >>C:\TEMP\%COMPUTERNAME%_Kill-TT8.log
IF ERRORLEVEL 0 ipconfig | find "IPv4" >>C:\TEMP\%COMPUTERNAME%_Kill-TT8.log

TASKKILL /F /IM TT8.exe /T
ping 127.0.0.1
TASKKILL /F /IM TT8.exe /T
ping 127.0.0.1
TASKKILL /F /IM TT8.exe /T

cd\
cd\
c:
C:
DEL /S /F /Q TT8.exe