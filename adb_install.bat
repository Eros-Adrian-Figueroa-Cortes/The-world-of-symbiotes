@echo off
echo ========================================
echo      Instalar aplicación
echo ========================================
set /p apkPath="Ingresa la ruta del archivo APK en tu PC: "
adb install %apkPath%
pause
