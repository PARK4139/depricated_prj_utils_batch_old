rem    organize desktop
c:
setlocal
set username=human
set desktop=C:\Users\%username%\Desktop
cd "%desktop%"
for /f "usebackq delims=" %%i in (`"dir /s /b /ad | sort /r"`) do rd "%%i" 2>NUL
for /f "delims=" %%i in ('Powershell.exe get-date -Format 'yyyy MM dd HH mm ss'') do set yyyymmddhhmmss=%%i
mkdir "%yyyymmddhhmmss%"
cd "%yyyymmddhhmmss%"
mkdir "extensions"
cd "%desktop%"
for %%i in (*.*) do if not "%%~nx0"=="%%~nxi" (if not exist "%%~xi\" md "%%~xi")&& move "%%i" "%%~xi"
for /d %%i in (.*) do move "%%i" "%desktop%\%yyyymmddhhmmss%\extensions"
for /f "usebackq delims=" %%i in (`"dir /s /b /ad | sort /r"`) do rd "%%i" 2>NUL
timeout 1
mkdir "tempjhp"
move "%yyyymmddhhmmss%" "tempjhp"
rem cd "tempjhp"
rem for /F "tokens=1*delims=- " %%i in ('dir /b /a-d *.* ^| findstr /R /C:"[ ][-][ ][0-9]*[ ][0-9]*[ ][0-9]*[ ][0-9]*[ ][0-9]*[ ][0-9]*"') do ren "%%i - %%j" "%%i%%~xj"
cd "%desktop%"
robocopy "c:\Users\%Username%\Desktop\tempjhp" "e:" /E /move
timeout 1



rem		destroy #
c:
setlocal
set Username=human
set desktop=c:\Users\%Username%\Desktop
set hashtag=c:\Users\%Username%\Desktop\#
cd "%desktop%"
mkdir "#"
cd "%hashtag%"
for /r %%i in (*.*) do move "%%i" "%desktop%"
cd "%desktop%"
for /f "usebackq delims=" %%i in (`"dir /s /b /ad | sort /r"`) do rd "%%i" 2>NUL
timeout 1






e:
if exist "e:\alpha" explorer "e:"