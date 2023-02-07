@echo off
cls 
setlocal
chcp 65001
REM ________________________________________________________________________________________
cd "C:\Program Files\`db"
for /f "delims=" %%i in ('Powershell.exe get-date -Format 'yyyy MM dd HH mm ss'') do set yyyymmddhhmmss=%%i
if %errorlevel% equ 0 (
 git add .
 echo errorlevel is %errorlevel%.
 echo errorlevel is proper.
 echo.did try add %targetName% via git
 git status
 echo.did try print status.
)
REM ________________________________________________________________________________________
for /f "delims=" %%i in ('Powershell.exe get-date -Format 'yyyy MM dd HH mm ss'') do set yyyymmddhhmmss=%%i
if %errorlevel% equ 0 (
 git commit -m "commited - %yyyymmddhhmmss%"
 echo errorlevel is %errorlevel%.
 echo errorlevel is proper.
 echo.did try commit %targetName% via git
 exit
)
REM ________________________________________________________________________________________
echo did find trouble, check data. if you want to exit, type x
set /p valueTyped=me:
if %valueTyped% neq x (
 echo you can not exit
 pause
) 