:inicio
color 02

@echo off
cls


echo.  _         _ _          _                 _            
echo. ^| ^|       (_) ^|        ^| ^|               ^| ^|           
echo. ^| ^| ____ _ _^| ^|_ ___   ^| ^|__  _   _ _ __ ^| ^|_ ___ _ __ 
echo. ^| ^|/ / _` ^| ^| __/ _ \  ^| '_ \^| ^| ^| ^| '_ \^| __/ _ \ '__^|
echo. ^|   ^< (_^| ^| ^| ^|^| (_) ^| ^| ^| ^| ^| ^|_^| ^| ^| ^| ^| ^|^|  __/ ^|   
echo. ^|_^|\_\__,_^|_^|\__\___/  ^|_^| ^|_^|\__,_^|_^| ^|_^|\__\___^|_^|   

echo.
echo.

echo. ------ Criador Kaito-Hunter ------

echo. -------------------------

echo. Melhorar a internet

echo. -------------------------

echo. 1 - Limpar o DNS
echo. 2 - Testa o ping
echo. 3 - Limpar o navegador Firefox
echo. 4 - Limpar o navegador Chrome
echo. 0 - Sair

echo. -------------------------

set /p Comando= -Digite uma Opcao :
if "%Comando%" equ "1" (goto:op1)
if "%Comando%" equ "2" (goto:op2)
if "%Comando%" equ "3" (goto:op3)
if "%Comando%" equ "4" (goto:op4)
if "%Comando%" equ "0" (goto:exit)

:op9
goto:inicio

:op1 
echo. Limpar o Dns
ipconfig /flushdns
echo.
echo. 0 - Para sair
echo. 9 - Para continuar
set /p Comando= -Sair ou continuar ?
if "%Comando%" equ "9" (goto:op9)
if "%Comando%" equ "0" (goto:exit)

:op2
echo. Testa o ping
ping www.google.com
echo.
echo. 0 - Para sair
echo. 9 - Para continuar
set /p Comando= -Sair ou continuar ?
if "%Comando%" equ "9" (goto:op9)
if "%Comando%" equ "0" (goto:exit)

:op3
set DataDir=C:\Users\%USERNAME%\AppData\Local\Mozilla\Firefox\Profiles
del /q /s /f "%DataDir%"

for /d %%x in (C:\Users\%USERNAME%\AppData\Roaming\Mozilla\Firefox\Profiles\*) do del /q /s /f %%x\*sqlite
cls
echo. Tudo limpo
echo.
echo. 0 - Para sair
echo. 9 - Para continuar
set /p Comando= -Sair ou continuar ?
if "%Comando%" equ "9" (goto:op9)
if "%Comando%" equ "0" (goto:exit)


:op4
set ChromeDir=C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data
del /q /s /f "%ChromeDir%"
rd /s /q "%ChromeDir%"
cls
echo. Tudo limpo
echo.
echo. 0 - Para sair
echo. 9 - Para continuar
set /p Comando= -Sair ou continuar ?
if "%Comando%" equ "9" (goto:op9)
if "%Comando%" equ "0" (goto:exit)



:op0
:exit
exit