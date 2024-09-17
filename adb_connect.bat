@echo off
echo ========================================
echo      Conectar a dispositivo por IP y puerto
echo ========================================
set /p deviceIP="Ingresa la dirección IP del dispositivo: "
set /p port="Ingresa el puerto (ej. 5555): "
adb connect %deviceIP%:%port%
pause

