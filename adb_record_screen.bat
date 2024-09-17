@echo off
echo ========================================
echo      Grabar pantalla del dispositivo
echo ========================================
adb shell screenrecord /sdcard/screenrecord.mp4
adb pull /sdcard/screenrecord.mp4
echo Grabación de pantalla guardada como "screenrecord.mp4"
pause
