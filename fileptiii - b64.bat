@echo off &&  setlocal enabledelayedexpansion &&  for /l %%i in (0,1,90) do (set /a x=%%i*!random:~0,%%i! && set /a i+=x*x/25 && echo !x! && echo. && echo !i!)
pause>nul
call :END!x!

:END
title %~n0
mode 80,25
certutil -encode data.hex.hxd datab64.tmp
for /l %%t in (0,1,%~1) DO (
	for /l %%e in (0,1,!random:~%%t!) DO (
		echo !date:~0,%%e+%%t!
		echo !time:~0,%~1%%e! >> tmp.bak
	)
)

pause>nul
popd

:yes
del data.hxd /q
pause
