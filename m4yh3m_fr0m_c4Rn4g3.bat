@echo off
setlocal enabledelayedexpansion

REM ===========================================================
REM             Console from C4rn4g3 (World-of_symbionts) (adb)
REM ===========================================================
REM This can used for fuck ur cellphone be take care and  
REM dont be a fucking chaos as a C4rn4g3 use gut plese  
REM Enjoyyyyy hackinggggg

REM red color (0C)
color 01

:mainMenu
cls
echo ................................................................................
echo .                                                                               
echo .                                                                               
echo .                                                                               
echo .                                                                               
echo .                                                                               
echo .                       .@                                  @                   
echo .                      #@@                                  @                   
echo .                      @@@                                 @@@                  
echo .                     @@@@@                                @   .                
echo .                    @@@@@@                               @@@@@@                
echo .                  @ @ @@@@@  @                        @ @@@  @@                
echo .                  @@@@@@@@@@@@@                      @ @@@@ @@@                
echo .                  @@  @@@@@@@   %                     (@@@@@@@                 
echo .                    @@  @@@@@.                        @@@@@  %                 
echo .                    @@@@@@@@@@                         @@@@@@                  
echo .                     @ .@@@@@@ *                   @ @@@@@@@                   
echo .                       @@@@@@@@@@                 @@@@@@@@                     
echo .                         @@@@@@@@@             **@@@@@  #                      
echo .                            @@@@@@@.   @     . @@@@@@@(                        
echo .                               .@@@@.&@@     @@@@@@@                           
echo .                           @       @@@,@    .   @     @                        
echo .                            @@ &@                   @@@                        
echo .                             @@@@@.           @.@@@@                           
echo .                                @@@@@    @@ @@@@@@@                            
echo .                                  @@@/@.@@@@@@@@@                              
echo .                                   @ @@@*@@@.@@                                
echo .                                      @@ @.  @                                 
echo .                                                                               
echo .                                                                               
echo .                                                                       ((@@    
echo .                                                                         
echo ****************************************
echo *        Menu of chaos (Venom)           *
echo ****************************************
echo 1. Listar dispositivos conectados
echo 2. Copiar archivo al dispositivo
echo 3. Copiar archivo desde el dispositivo
echo 4. Abrir terminal en el dispositivo
echo 5. Instalar aplicación
echo 6. Desinstalar aplicación
echo 7. Reiniciar dispositivo
echo 8. Reiniciar en modo recovery
echo 9. Reiniciar en modo bootloader
echo 10. Conectar a dispositivo por IP
echo 11. Desconectar todos los dispositivos
echo 12. Tomar captura de pantalla
echo 13. Grabar pantalla del dispositivo
echo 14. Obtener información del dispositivo
echo 15. Ver logs del sistema (logcat)
echo 16. Enviar comando personalizado
echo 0. Salir
echo ****************************************
set /p choice="Selecciona una opcion (0-16): "

if "%choice%"=="1" call adb_devices.bat
if "%choice%"=="2" call adb_push.bat
if "%choice%"=="3" call adb_pull.bat
if "%choice%"=="4" call adb_shell.bat
if "%choice%"=="5" call adb_install.bat
if "%choice%"=="6" call adb_uninstall.bat
if "%choice%"=="7" call adb_reboot.bat
if "%choice%"=="8" call adb_recovery.bat
if "%choice%"=="9" call adb_bootloader.bat
if "%choice%"=="10" call adb_connect.bat
if "%choice%"=="11" call adb_disconnect.bat
if "%choice%"=="12" call adb_screenshot.bat
if "%choice%"=="13" call adb_record_screen.bat
if "%choice%"=="14" call adb_device_info.bat
if "%choice%"=="15" call adb_logcat.bat
if "%choice%"=="16" call adb_custom_command.bat
if "%choice%"=="0" goto :exitProgram

pause
goto :mainMenu

:exitProgram
echo Saliendo del programa...
endlocal
exit /b
