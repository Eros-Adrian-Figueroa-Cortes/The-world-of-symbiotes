@echo off
echo ========================================
echo      Copiar archivo desde el dispositivo
echo ========================================
set /p remotePath="Ingresa la ruta del archivo en el dispositivo (ej. /sdcard/archivo.txt): "
set /p localPath="Ingresa la ruta destino en tu PC: "
adb pull %remotePath% %localPath%
pause
