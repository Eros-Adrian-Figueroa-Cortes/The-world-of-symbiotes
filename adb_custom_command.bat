@echo off
echo ========================================
echo      Enviar comando personalizado
echo ========================================
set /p command="Ingresa el comando ADB a ejecutar: "
adb %command%
pause
