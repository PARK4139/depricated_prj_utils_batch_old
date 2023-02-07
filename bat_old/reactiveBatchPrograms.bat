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
rem // ______________________________________________________________ replace encoding mode as utf-8 _________________________________________________________________
chcp 65001


c:
setlocal


rem // ______________________________________________________________ deactive _________________________________________________________________
rem // ______________________________________________________________ del "*.bat" _________________________________________________________________
cd "C:\Windows\System32"
del "*.bat"


rem // ______________________________________________________________ active _________________________________________________________________

cd "C:\Program Files\alpha\categories\tools\batchPrograms"
echo a | xcopy "*.bat" "C:\Windows\System32" /e /h /k



rem cd "C:\Users\human\Desktop\RPA src"
rem for %i in (*.bat) do copy "%i" "C:\Windows\System32"
rem copy "C:\Users\human\Desktop\alpha\categories\RPA\src" "C:\Users\human\Desktop\tempjhp20220511"
rem xcopy "C:\Users\human\Desktop\alpha\categories\RPA\src" "C:\Users\human\Desktop\tempjhp20220511" /e /h /k
rem robocopy "c:\Users\%Username%\Desktop\tempjhp20220511" "e:\alpha" /E /move



echo a | xcopy "C:\Program Files\alpha\categories\tools\batchPrograms\openRoutineMorning.bat" "C:\Users\human\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" /e /h /k



rem 에러가 없으면 종료.