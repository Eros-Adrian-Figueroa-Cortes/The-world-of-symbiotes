@echo off
echo ========================================
echo      Desinstalar aplicación
echo ========================================
set /p packageName="Ingresa el nombre del paquete de la aplicación (ej. com.example.app): "
adb uninstall %packageName%
pause
