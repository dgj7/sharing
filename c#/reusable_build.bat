:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::
:: Generic command-line build script for c# applications.
::
:: This script makes use the the C# command-line compiler.  More information is
:: available at http://msdn.microsoft.com/en-us/library/78f4aasd.aspx.
::
:: This script expects the following:
:: ../src		source files
:: ../bin		compilation target directory
:: ../build		build files, including this script
::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: set output and clear screen.
@echo off
cls

:: configuration - change these values per project.
set output_file_name=name.exe
set target=/target:winexe
set libraries=/r:System.Windows.Forms.dll /r:System.Drawing.dll
set project_name=C# Build: My Project

:: configuration - these should probably stay the same.
set compiler=C:\Windows\Microsoft.NET\Framework\v3.5\csc.exe
set source_files=..\src\*.cs
set output_directory=..\bin
set output=/out:%output_directory%\%output_file_name%

:: set project title.
@title %project_name%

:: delete the old build data, if it exists.
if exist %output_directory%\%output_file% (
	echo ========================================
	echo deleting existing build files...
	del /Q %output_directory%\*.*
	echo ----------------------------------------
)

:: execute the build.
%compiler% %target% %libraries% %output% %source_files%

:: print a message indicating build success/failure.
if exist %output_directory%\%output_file_name% (
	echo build successful!
) else (
	echo build failed!
)

:: run the application if the build succeeded.
if exist %output_directory%\%output_file_name% (
	echo ----------------------------------------
	%output_directory%\%output_file_name%
	echo ========================================
)
