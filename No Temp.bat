@echo off 
mode con:cols=1200 lines=700
chcp 65001
:inicio
cls
title NoTemp
echo -------------------------------------------------------------------------------------------------------
echo Hola, bienvenido/a, ¿desea eliminar los archivos temporales de su sistema y hacer que sea más rápido?
echo Escriba S para sí y N para no.
echo Aplicación creada y programada por Slaim36 www.slaim36.com
echo -------------------------------------------------------------------------------------------------------
Set/p respuestauno= Respuesta: 
If %respuestauno%==S (goto s) else If %respuestauno%==s (goto s) else If %respuestauno%==N (goto n) else If %respuestauno%==n (goto n) else goto nn
:s
echo Un momento.
echo Un momento..
echo Un momento...
pause
del /s/q %temp% 
cls
echo Archivos Temporales eliminados. Presione cualquier tecla para salir.
pause >nul
exit 
:n
cls
echo Si no quiere, no le obligamos. Presione cualquier tecla para salir.
pause >nul
exit
:nn
echo Error, respuesta incorrecta, tiene que responder S o N
pause
goto inicio
