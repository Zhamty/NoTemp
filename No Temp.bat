@echo off 
mode con:cols=1200 lines=700
chcp 65001
cls
title NoTemp
echo -------------------------------------------------------------------------------------------------------
echo Hola, bienvenido/a, ¿desea eliminar los archivos temporales de su sistema y hacer que sea más rápido?
echo Escriba S para sí y N para no, también recuerde las mayúsculas.
echo Aplicación creada y programada por Slaim36 www.slaim36.com
echo -------------------------------------------------------------------------------------------------------
Set/p respuestauno= Respuesta: 
If %respuestauno%==S (goto s) else goto n
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
