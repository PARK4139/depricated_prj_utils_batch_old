rem
setlocal
set username=human
set desktop=C:\Users\%username%\Desktop
for /F "tokens=1*delims=- " %%i in ('dir /b /a-d *.* ^| findstr /R /C:"[ ][-][ ][0-9]*[ ][0-9]*[ ][0-9]*[ ][0-9]*[ ][0-9]"') do ren "%%i - %%j" "%%i%%~xj"
pause





