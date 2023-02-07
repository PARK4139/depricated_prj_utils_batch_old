

rem __________________________ temp.py 생성 ( temp.py 를 실행하면 text.txt의 내용을 script화 시킨다. )_________________________ 

echo # __________________________ temp.txt ( encoding = utf-8 ) _______________________ > temp.py
echo #-*-coding:utf-8-*-
REM echo import sys >> temp.py
REM echo import io >> temp.py
REM echo sys.stdout = io.TextIOWrapper(sys.stdout.detach(), encoding = 'utf-8') >> temp.py
REM echo sys.stderr = io.TextIOWrapper(sys.stderr.detach(), encoding = 'utf-8') >> temp.py
echo.>> temp.py
echo.>> temp.py
echo # __________________________ temp.txt ( reading ) _______________________ >> temp.py
echo f_path = r'C:\Users\human\Desktop\alpha\categories\RPA\src\categories\.bat\01 ( high frequency using commands )/temp.txt'>> temp.py
echo new_content = ''>> temp.py
echo with open(f_path,'r',encoding='utf-8') as f:>> temp.py
echo     lines = f.readlines()>> temp.py
echo     for i, l in enumerate(lines):>> temp.py
echo         new_string = l.strip()>> temp.py
echo         new_content += 'cd "' + new_string + '"' + '\nmkdir #\ncd ..' >> temp.py
echo.>> temp.py
echo.>> temp.py
echo # __________________________ temp.txt ( writing ) _________________________ >> temp.py
echo with open(f_path,'w') as f:>> temp.py
echo     f.write(new_content)>> temp.py
echo.>> temp.py
echo.>> temp.py
echo # __________________________ temp.txt ( end ) _________________________ >> temp.py
echo # __________________________ temp.txt ( rename ) _________________________  >> temp.py
echo import os >> temp.py
echo os.rename('temp.txt','temp.bat')>> temp.py
echo.>> temp.py
echo.>> temp.py


REM echo os.system('C:\Users\human\Desktop\alpha\categories\RPA\src\categories\.bat\01 ( high frequency using commands )/temp.bat')>> temp.py
REM echo os.remove('C:\Users\human\Desktop\alpha\categories\RPA\src\categories\.bat\01 ( high frequency using commands )/temp.bat')>> temp.py
REM echo os.chdir('c:)




REM __________________________ temp.py ( 실행 ) _________________________ 

python "temp.py"
REM copy "temp.bat" "test"
REM copy /y "temp.bat" "C:\Windows\System32"
 
REM timeout 10

rem __________________________ temp.py ( 삭제 ) _________________________ 
REM del temp.py
REM del temp.bat


REM explorer temp.bat




REM start "C:\Users\human\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Python 3.9\IDLE (Python 3.9 64-bit).lnk" "temp.py"



REM python
REM explorer code.py
REM explorer srccode.py