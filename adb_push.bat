@echo off
echo ========================================
echo      Copiar archivo al dispositivo
echo ========================================
set /p localPath="Ingresa la ruta del archivo en tu PC: "
set /p remotePath="Ingresa la ruta destino en el dispositivo (ej. /sdcard/): "
adb push %localPath% %remotePath%
pause
