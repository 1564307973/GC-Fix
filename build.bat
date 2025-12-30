@echo off
set MASM32_DIR=D:\masm32

%MASM32_DIR%\bin\ml.exe /c /coff main.asm
%MASM32_DIR%\bin\rc.exe resource.rc
%MASM32_DIR%\bin\link.exe /SUBSYSTEM:WINDOWS /MERGE:.data=.text /MERGE:.rdata=.text /OPT:REF /OPT:ICF /ENTRY:start /OUT:GC-Fix.exe main.obj resource.res %MASM32_DIR%\lib\kernel32.lib %MASM32_DIR%\lib\user32.lib %MASM32_DIR%\lib\advapi32.lib
del main.obj
del resource.res
echo Build completed!