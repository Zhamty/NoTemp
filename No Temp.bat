@echo off 
mode con:cols=1000 lines=600
chcp 65001
title NoTemp
:idiomai
cls
echo Hola, seleccione tu Idioma de las siguientes opciones (ponga números).
echo Hello, select your language of the next options (put numbers).
echo 1. Español
echo 2. English
Set/p idioma= Idioma/Language: 
if %idioma%==1 (goto inicios) else If %idioma%==español (goto inicios) else If %idioma%==Español (goto inicios) else if %idioma%==2 (goto inicion) else If %idioma%==english (goto inicion) else If %idioma%==English (goto inicion) else (goto errori) 
:errori
cls
echo Respuesta incorrecta, presiona cualquier tecla para continuar
echo Incorrect Answer, press any key to continue
pause >nul
goto idiomai
:inicios
cls
echo -------------------------------------------------------------------------------------------------------
echo Hola, bienvenido/a, ¿desea eliminar los archivos temporales de su sistema y hacer que sea más rápido?
echo Escriba S para sí y N para no.
echo Aplicación creada y programada por Slaim36 www.slaim36.com (Página en español).
echo -------------------------------------------------------------------------------------------------------
Set/p respuestauno= Respuesta: 
If %respuestauno%==S (goto ss) else If %respuestauno%==s (goto ss) else If %respuestauno%==N (goto ns) else If %respuestauno%==n (goto ns) else goto nns
:ss
echo Un momento.
echo Un momento..
echo Un momento...
pause
del /s/q %temp% 
cls
echo Archivos Temporales eliminados. Presione cualquier tecla para salir.
pause >nul
exit 
:ns
cls
echo Si no quiere, no le obligamos. Presione cualquier tecla para salir.
pause >nul
exit
:nns
echo Error, respuesta incorrecta, tiene que responder S o N.
pause
goto inicios

:Inicion
cls
echo -------------------------------------------------------------------------------------------------------
echo Hello, welcome, ¿do you want to delete temporal files and do your system more fast?
echo Write Y for yes or N for no.
echo Application created and programed by Slaim36 www.slaim36.com (Page in Spanish).
echo -------------------------------------------------------------------------------------------------------
Set/p respuestauno= Answer: 
If %respuestauno%==Y (goto sn) else If %respuestauno%==y (goto sn) else If %respuestauno%==N (goto nn) else If %respuestauno%==n (goto nn) else goto nnn
:sn
echo A moment.
echo A moment..
echo A moment...
pause
del /s/q %temp% 
cls
echo Temporal files deleted. Press any key to leave.
pause >nul
exit 
:nn
cls
echo If you don't want, we don't obligate you. Press any key to leave.
pause >nul
exit
:nnn
echo Error, incorrect answer, you need to answer Y or N.
echo Press any key to continue
pause >nul
goto Inicion
