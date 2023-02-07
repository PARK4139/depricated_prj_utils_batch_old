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
rem // ______________________________________________________________ RPA deactive _________________________________________________________________
rem // ______________________________________________________________ replace encoding mode as utf-8 _________________________________________________________________
chcp 65001


  


rem // ______________________________________________________________ device info access _________________________________________________________________
pnputil /scan-devices
REM pnputil /enum-devices /connected
REM friendly name	: AirPods Pro
REM instance id : SWD\MMDEVAPI\{0.0.1.00000000}.{664de756-2c2e-4db3-89b4-f1491d75aa9e}

 

rem // ______________________________________________________________ device activation  _________________________________________________________________
pnputil /disable-device "SWD\MMDEVAPI\{0.0.1.00000000}.{664de756-2c2e-4db3-89b4-f1491d75aa9e}"  
rem // ______________________________________________________________ device deactivation  _________________________________________________________________
pnputil /enable-device "SWD\MMDEVAPI\{0.0.1.00000000}.{664de756-2c2e-4db3-89b4-f1491d75aa9e}"    

 

rem // ______________________________________________________________ debugging _________________________________________________________________
pause



 