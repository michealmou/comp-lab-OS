@echo off
echo WELCOME TO SIMPLE CALCULATOR
echo pick a operation
echo --------------------
echo 1.Addition
echo 2.Subtraction
echo 3.Multiplication
echo 4. division 
echo --------------------
set /p op = Choose a number (1-4)
set /p a = Enter your first number
set /p b = Enter your second number

if op == 1 (
goto add)
if op == 2 (
goto sub)
if op == 3 (
goto mult)
if op == 4 (
goto div)


:add
set /a sum = %a% + %b%
echo %sum%
pause

:sub
set /a subt = %a% - %b%
echo %subt%
pause

:mult
set /a multi = %a% * %b%
echo %multi%
pause

:div
set /a divi = %a% / %b%
echo %divi%
pause

pause