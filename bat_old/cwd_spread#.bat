rem __________________________ replace encoding mode as utf-8_________________________ 
chcp 65001

rem __________________________ temp2.txt generation _________________________ 
cd "C:\Users\human\Desktop\alpha\categories\RPA\src\categories\.bat\01 ( high frequency using commands )"




echo rem __________________________ replace encoding mode as utf-8_________________________ > temp1.txt
echo chcp 65001 >> temp1.txt


dir /b > temp2.txt



rem __________________________ temp1.py generation ( temp1.py 를 실행하면 text.txt의 내용을 python script 작성)_________________________ 

echo # __________________________ temp2.txt ( encoding = utf-8 ) _______________________ > temp1.py
echo #-*-coding:utf-8-*-
REM echo import sys >> temp1.py
REM echo import io >> temp1.py
REM echo sys.stdout = io.TextIOWrapper(sys.stdout.detach(), encoding = 'utf-8') >> temp1.py
REM echo sys.stderr = io.TextIOWrapper(sys.stderr.detach(), encoding = 'utf-8') >> temp1.py
echo.>> temp1.py
echo.>> temp1.py
echo # __________________________ temp2.txt ( reading ) _______________________ >> temp1.py
echo import os >> temp1.py
echo f_path = os.getcwd()+"/temp2.txt">> temp1.py
echo new_content = ''>> temp1.py
echo with open(f_path,'r',encoding='utf-8') as f:>> temp1.py
echo     lines = f.readlines()>> temp1.py
echo     for i, l in enumerate(lines):>> temp1.py
echo         new_string = l.strip()>> temp1.py
echo         new_content += 'cd "' + new_string + '"' + '\nmkdir #\ncd ..\n' >> temp1.py
echo.>> temp1.py
echo.>> temp1.py
echo # __________________________ temp2.txt ( writing ) _________________________ >> temp1.py
echo with open(f_path,'w') as f:>> temp1.py
echo     f.write(new_content)>> temp1.py
echo.>> temp1.py
echo.>> temp1.py
echo # __________________________ temp2.txt ( end ) _________________________ >> temp1.py




REM __________________________ temp1.py ( 실행 ) _________________________ 
python "temp1.py"


REM __________________________ copy "*.txt" "temp3.txt ( merging ) _________________________ 
copy "*.txt" "temp3.txt"

rem __________________________ temp2.py generation _________________________
echo #-*-coding:utf-8-*-
REM echo import sys >> temp2.py
REM echo import io >> temp2.py
REM echo sys.stdout = io.TextIOWrapper(sys.stdout.detach(), encoding = 'utf-8') >> temp2.py
REM echo sys.stderr = io.TextIOWrapper(sys.stderr.detach(), encoding = 'utf-8') >> temp2.py
echo # __________________________ temp3.txt ( rename ) _________________________  >> temp2.py
echo import os >> temp2.py
echo os.rename('temp3.txt','temp.bat')>> temp2.py
echo.>> temp2.py
echo.>> temp2.py



REM __________________________ temp2.py ( 실행 ) _________________________ 
python "temp2.py"



del temp.py
call temp.bat
timeout 15
del temp.bat