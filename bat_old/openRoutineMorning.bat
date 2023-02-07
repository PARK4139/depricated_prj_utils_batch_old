REM ______________________________________________________________________________________  <    >
@echo
REM ______________________________________________________________________________________  <    >
color 0d




rem // ______________________________________________________________ BatchGotAdmin  _________________________________________________________________
REM // ______________________________________________________________ Check for permissions _________________________________________________________________
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
REM // ______________________________________________________________ If error flag set, we do not have admin.  _________________________________________________________________
if '%errorlevel%' NEQ '0' ( echo Requesting administrative privileges... goto UACPrompt 
) else ( goto gotAdmin ) 


:UACPrompt 
	echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs" 
	set params = %*:"="" 
	echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" 
	

	"%temp%\getadmin.vbs" 
	del "%temp%\getadmin.vbs" 
	exit /B 
	
:gotAdmin
	pushd "%CD%"
	CD /D "%~dp0"

:------------------------------------------ below cript will acted as administrator mode ------------------------------------------
rem ______________________________________________________________ replace encoding mode as utf-8 _________________________________________________________________
chcp 65001



REM ______________________________________________________________________________________  <  openKakaotalk  >(success)
explorer "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\카카오톡\카카오톡.lnk"


REM ______________________________________________________________________________________  <  openTelegram  >(success)
explorer "C:\Users\human\AppData\Roaming\Telegram Desktop\Telegram.exe"

REM ______________________________________________________________________________________  <  oepn directory including java project sources. >
REM explorer ""

REM ______________________________________________________________________________________  <  oepn alpha  >
explorer "C:\Program Files\alpha\categories\DB\alphaDB"

REM ______________________________________________________________________________________  <  open alphaDB.txt  >
explorer "C:\Program Files\Notepad++\notepad++.exe" "C:\Program Files\alpha\categories\DB\alphaDB\alphaDB.txt"


REM ______________________________________________________________________________________  <  openEclipse.bat  >
explorer "C:\Program Files\alpha\categories\tools\batchPrograms\openEclipse.bat"

rem open IOTControlProject.pptx
explorer "C:\Program Files\alpha\categories\DB\IOTControlProject\IOTControlProject.pptx"

REM ______________________________________________________________________________________  <  backUpAll.bat  >
call "C:\Program Files\alpha\categories\tools\batchPrograms\backUpAll.bat"



