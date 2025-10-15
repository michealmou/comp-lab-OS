@echo off
set /p op = Enter an operation
set /p a = Enter your First Number
set /p b = Enter your Second Number
if op = "*"(
set /a mult = %a% * %b%
echo %mult%)
if op = "-"(
set /a sub = %a% - %b%
echo %sub%)
if op = "+"(
set /a sum = %a%+%b%
echo %sum%)
if op = "/"(
set /a div = %a% / %b%
echo %div%)
else
echo wrong operation
pause
