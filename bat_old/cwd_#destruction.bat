rem		destroy #
e:
setlocal
set ccdd=%cd%
mkdir "#"
cd "#"
for /r %%i in (*.*) do move "%%i" "%ccdd%"
cd ..
for /f "usebackq delims=" %%i in (`"dir /s /b /ad | sort /r"`) do rd "%%i" 2>NUL
timeout 1



