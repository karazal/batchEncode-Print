@echo off &&  setlocal enabledelayedexpansion &&  for /l %%i in (0,1,90) do (set /a x=%%i*!random:~0,%%i! && set /a i+=x*x/25 && echo !x! && echo. && echo !i!)
pause>nul
call :START !x!

:START
del data.hxd /q
title %~n0
mode 80,25
for /l %%j in (0,1,%~1) DO (
	set "_b64=!random:~0,%%j!"
	set /a val_TMP=%~1*i
	echo !val! !date! !TIME:~%%j! >> data.hxd
	echo !_b64!
	echo.
	echo !val_TMP!
)
pause>nul