@echo off
echo ========================================
echo      Tomar captura de pantalla
echo ========================================
adb shell screencap /sdcard/screenshot.png
adb pull /sdcard/screenshot.png
echo Captura de pantalla guardada como "screenshot.png"
pause
