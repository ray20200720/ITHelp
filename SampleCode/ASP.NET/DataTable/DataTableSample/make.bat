@ECHO OFF
REM Prepare directory

set FrameworkDIR=%SystemRoot%\Microsoft.NET\Framework
set ProjectDIR=DataTableSample-02

REM step1 Delete output;create new output, copy to output folder
rd bin /s/q

REM mkdir "Output"
mkdir bin\

ECHO -----------------------------------------------          
ECHO ***********************************************
ECHO ***    build DataTableSample-02 Starting   ****
ECHO ***********************************************
ECHO -----------------------------------------------

REM step2 clear old bin; build solution
REM %FrameworkDIR%\v4.0.30319\csc.exe ConsoleHost.cs
%FrameworkDIR%\v4.0.30319\csc.exe DataTableExample.cs

REM csc /out:D:\test\Animal.dll /t:library D:\test\Cat.cs D:\test\Dog.cs直接生成Animal.dll文件 
REM csc /out:D:\test\Program.exe /R:D:\test\Animal.dll D:\test\Program.cs 


@REM %FrameworkDIR%\v4.0.30319\csc.exe /out:Duck.dll /t:library DataObject\Duck.cs
@REM %FrameworkDIR%\v4.0.30319\csc.exe /out:MallardDuck.dll /t:library DataObject\MallardDuck.cs /R:Duck.dll
@REM %FrameworkDIR%\v4.0.30319\csc.exe /out:Program.exe /R:Duck.dll /R:MallardDuck.dll Program.cs
@REM %FrameworkDIR%\v4.0.30319\csc.exe /out:RectangleApplication.exe RectangleApplication.cs

if %errorlevel% neq 0 goto ErrBuildService

ECHO -----------------------------------------------          
ECHO ***********************************************
ECHO ***    Build CSharp succeed!    ***
ECHO ***********************************************
ECHO -----------------------------------------------

REM step3 copy builded bin files to Output
ECHO -------------------------------------          
ECHO *************************************
echo ***        Copy File      		   *** 
ECHO *************************************    
ECHO -------------------------------------
REM xcopy *.exe "Output\" /y/s
xcopy *.dll bin\ /y
xcopy *.exe bin\ /y
GOTO ClearAll


:ErrBuildService
rd bin /s/q 
ECHO -------------------------------------          
ECHO *************************************
echo ***    build CSharp Fail!    *** 
ECHO *************************************    
ECHO -------------------------------------
GOTO ClearAll


:ClearAll
del *.exe 
del *.dll
REM del bin\*.pdb

GOTO END

:END
REM pause
@ECHO ON