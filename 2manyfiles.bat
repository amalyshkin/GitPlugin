@echo off
set defcnt=100
if %1*==* goto help
if %2.==. %0 %1 %defcnt%
set filename=autofile
set fileext=txt
set filebody=This is autocreated file #%%c
echo Begin...
for /L %%c in (1,1,%2) do echo  File #%%c&call echo %filebody%>%1\%autofile%%%c.%fileext%
echo End.
goto :eof
:help
echo Usage:
echo.
echo %~nx0 dir_to_fill [files_count]
echo   By default, files_count == %defcnt%
:eof