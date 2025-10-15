@echo off
set /p num=Enter a number
if %num%==5 (
goto correct
) else (
goto notcorrect)
:correct
echo correct
pause
:notcorrect
echo not correct
pause
pause