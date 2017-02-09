@ECHO OFF

set SubNet=
set SubNet=172.18.254.
set FilePath=C:\TEMP\Kill-TT8
set LogFilePath=C:\TEMP\Kill-TT8
set ScanIP=%FilePath%\_#_ScanIP.txt
Set LogType=*_Kill-TT8.log
ser YesLog=%LogFilePath%\--%SubNet%_Yes-TT8.log
ser NoLog=%LogFilePath%\--%SubNet%_NO-TT8.log


for /f %%r in ('whoami') do (set RunID=%%r)

	COLOR 0B
TITLE "清除TT8.exe-TASK、Get執行結果 ::: %RunID%"
for /F %%i IN (%ScanIP%) do (
	echo TaskKill-TT8 ::: %SubNet%%%i
	if exist \\%SubNet%%%i\c$\*.* start robocopy %FilePath% \\%SubNet%%%i\c$\temp _#_TaskKill-_TT8-exe.bat /r:3 /w:0
	ping 127.0.0.1 -w 800 -n 5
	if exist \\%SubNet%%%i\c$\temp\_#_TaskKill-_TT8-exe.bat start .\psexec \\%SubNet%%%i C:\temp\_#_TaskKill-_TT8-exe.bat
	DIR /B \\%SubNet%%%i\c$\%LogType% >> %YesLog%
	DIR /B \\%SubNet%%%i\c$\%LogType%
	if not exist \\%SubNet%%%i\c$\temp\%LogType% (Echo %SubNet%%%i_未發現TT8.exe>>%NoLog%) ELSE (robocopy \\%SubNet%%%i\c$\temp %LogFilePath% %LogType% /mov /r:3 /w:0)
	)

set SubNet=
set SubNet=172.18.255.
COLOR 0D
TITLE "清除TT8.exe-TASK、Get執行結果 ::: %RunID%"
for /F %%i IN (%ScanIP%) do (
	echo TaskKill-TT8 ::: %SubNet%%%i
	if exist \\%SubNet%%%i\c$\*.* start robocopy %FilePath% \\%SubNet%%%i\c$\temp _#_TaskKill-_TT8-exe.bat /r:3 /w:0
	ping 127.0.0.1 -w 800 -n 5
	if exist \\%SubNet%%%i\c$\temp\_#_TaskKill-_TT8-exe.bat start .\psexec \\%SubNet%%%i C:\temp\_#_TaskKill-_TT8-exe.bat
	DIR /B \\%SubNet%%%i\c$\%LogType% >> %YesLog%
	DIR /B \\%SubNet%%%i\c$\%LogType%
	if not exist \\%SubNet%%%i\c$\temp\%LogType% (Echo %SubNet%%%i_未發現TT8.exe>>%NoLog%) ELSE (robocopy \\%SubNet%%%i\c$\temp %LogFilePath% %LogType% /mov /r:3 /w:0)
	)