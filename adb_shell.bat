@echo off
color 0C
echo ========================================
echo        ADB Shell(C4rn4g3)
echo ========================================
set /p confirm="¿Deseas ejecutar comandos ADB? (s/n): "

if /i "%confirm%"=="s" (
    :shellMenu
    cls
    echo ****************************************
    echo *        Menu of commands (chaos)     *
    echo ****************************************
    echo 1. Listar paquetes instalados (pm)
    echo 2. Instalar una aplicación (pm)
    echo 3. Desinstalar una aplicación (pm)
    echo 4. Iniciar una actividad (am)
    echo 5. Enviar una intención (am)
    echo 6. Volcado de sistema (dumpsys)
    echo 7. Información de batería (dumpsys)
    echo 8. Estadísticas de memoria (dumpsys)
    echo 9. Mostrar procesos en ejecución (top)
    echo 10. Habilitar Wi-Fi (svc)
    echo 11. Deshabilitar Wi-Fi (svc)
    echo 12. Establecer propiedad del sistema (setprop)
    echo 13. Salir del ADB Shell
    echo ****************************************
    set /p commandChoice="Selecciona una opción (1/2/3/4/5/6/7/8/9/10/11/12/13): "

    if "%commandChoice%"=="1" (
        adb shell pm list packages
        pause
    )
    if "%commandChoice%"=="2" (
        set /p apkFile="Ruta del APK en el PC: "
        adb install "%apkFile%"
        pause
    )
    if "%commandChoice%"=="3" (
        set /p packageName="Nombre del paquete a desinstalar: "
        adb shell pm uninstall "%packageName%"
        pause
    )
    if "%commandChoice%"=="4" (
        set /p activity="Nombre del paquete y actividad (ej. com.example/.MainActivity): "
        adb shell am start -n "%activity%"
        pause
    )
    if "%commandChoice%"=="5" (
        set /p intent="Acción de intención (ej. com.example.ACTION): "
        adb shell am broadcast -a "%intent%"
        pause
    )
    if "%commandChoice%"=="6" (
        adb shell dumpsys
        pause
    )
    if "%commandChoice%"=="7" (
        adb shell dumpsys battery
        pause
    )
    if "%commandChoice%"=="8" (
        adb shell dumpsys meminfo
        pause
    )
    if "%commandChoice%"=="9" (
        adb shell top -n 1
        pause
    )
    if "%commandChoice%"=="10" (
        adb shell svc wifi enable
        pause
    )
    if "%commandChoice%"=="11" (
        adb shell svc wifi disable
        pause
    )
    if "%commandChoice%"=="12" (
        set /p prop="Propiedad a establecer (ej. sys.foo bar): "
        adb shell setprop "%prop%"
        pause
    )
    if "%commandChoice%"=="13" (
        echo Saliendo del ADB Shell...
        exit
    )

    goto :shellMenu
) else (
    echo Saliendo del script...
    exit
)
