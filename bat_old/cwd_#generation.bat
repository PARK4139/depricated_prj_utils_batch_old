e:
setlocal
set username=¹Ú Á¤ ÈÆ
set desktop=C:\Users\%username%\Desktop
for %%i in (*) do (
 if not "%%~ni" == "organize" (
  md "%%~ni" && move "%%~i" "%%~ni"
 )
)
 