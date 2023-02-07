REM ______________________________________________________________________________________  <    >
@echo
REM ______________________________________________________________________________________  <    >
color 0d

REM ______________________________________________________________________________________  <  backUpAll.bat is complete partly.  >
rem // ______________________________________________________________ getAdministratorRights  _________________________________________________________________
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
:------------------------------------------ below script will acted as administrator mode ------------------------------------------
rem ______________________________________________________________ replace encoding mode as utf-8
chcp 65001
rem // ______________________________________________________________ copy *.java to somewhere
REM c:
REM setlocal
REM echo a | copy "C:\Users\human\Downloads\JavaProjectByJHP\src\javaProject" "C:\Program Files\alpha\categories\tools\alphaDB"
rem // ______________________________________________________________ xcopy alpha as alpha - yyyyMMddhhmmss  _________________________________________________________________
c:	
setlocal
for /f "delims=" %%i in ('Powershell.exe get-date -Format 'yyyy MM dd HH mm ss'') do set yyyyMMddhhmmss=%%i
echo d | xcopy "C:\Program Files\alpha\categories\tools\alphaDB" "C:\Program Files\alpha\categories\tools\alphaDB - %yyyyMMddhhmmss%" /e /h /k
rem // ______________________________________________________________ xcopy batchPrograms as batchPrograms - yyyyMMddhhmmss  _________________________________________________________________
c:	
setlocal
call 
REM ______________________________________________________________________________________  <  move desktop all files to extensions as desktop all files - yyyyMMddhhmmss  >
REM c:	
REM setlocal
REM for /f "delims=" %%i in ('Powershell.exe get-date -Format 'yyyy MM dd HH mm ss'') do set yyyyMMddhhmmss=%%i
REM ______________________________________________________________________________________  <  move desktop all directories to categories as desktop all directories - yyyyMMddhhmmss  >



rem // ______________________________________________________________ copy javaProgramSrcDirectory to alphaDB
c:
setlocal
for /f "delims=" %%i in ('Powershell.exe get-date -Format 'yyyy MM dd HH mm ss'') do set yyyyMMddhhmmss=%%i
echo d | xcopy "C:\Users\human\eclipse-workspace\javaProject\src" "C:\Program Files\alpha\categories\DB\javaproject - %yyyyMMddhhmmss%" /e /h /k



REM ______________________________________________________________________________________  <  copy "C:\Program Files\alpha  >
call "C:\Program Files\cwd_backUpTargetFolder.bat"



REM ______________________________________________________________________________________  <  additonalFuncitonInDesigning  >
REM cd "desktop"
REM rename desktopfiles as desktopfiles - yyyyMMddhhmmss
REM organize desktopFiles by extensions
REM mkdir "extensions"
REM xcopy ".txt derectory" "extensions"
REM rmdir ".txt derectory"
REM xcopy "extensions" "alpha\extensions"



rem if(error is not occure)   "echo exit && echo null"
rem %ERRORLEVEL%