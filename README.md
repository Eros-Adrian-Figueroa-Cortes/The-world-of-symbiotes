# The World of Symbiotes

## Descripción breve del proyecto

El proyecto "The World of Symbiotes" está inspirado en la naturaleza agresiva y adaptable de los simbiontes como Venom y Carnage. Así como estos simbiontes buscan anfitriones para aprovechar al máximo sus habilidades, nuestra herramienta ADB toma control del dispositivo Android para realizar análisis de seguridad, instalaciones de aplicaciones, y más. Esta herramienta está diseñada para hacking ético, permitiendo realizar pruebas de seguridad y análisis forense. Al igual que los simbiontes, ADB se puede "fusionar" con otras herramientas como Nmap y MSFVenom para aumentar sus capacidades, enfocándose en la evaluación de seguridad y pruebas de penetración.

## Tabla de contenido

- [Features](#features)
- [Librerías necesarias](#librerías-necesarias)
- [Hablemos de nuestro BAT](#hablemos-de-nuestro-bat)
- [Configuración e instalación](#configuración-e-instalación)

## Features

- **Interacción con dispositivos Android:** Con ADB, se puede ejecutar comandos directamente en el dispositivo, desde la instalación de aplicaciones hasta la manipulación de archivos.
- **Escaneo de puertos y análisis con Nmap:** Combina la herramienta con Nmap para identificar posibles vulnerabilidades en los puertos abiertos de dispositivos Android.
- **Uso de MSFVenom:** Utiliza MSFVenom para generar cargas útiles maliciosas y explotarlas en dispositivos comprometidos para análisis.
- **Automatización con scripts BAT:** Los scripts en batch permiten automatizar las tareas, facilitando la interacción entre las herramientas y mejorando la eficiencia en el hacking ético.

## Librerías necesarias

Para ejecutar el proyecto correctamente, necesitarás instalar las siguientes librerías y dependencias:

- **ADB (Android Debug Bridge):** Herramienta de comunicación con dispositivos Android.
    - Instalación: [Guía de instalación de ADB](https://developer.android.com/studio/command-line/adb)
- **Nmap:** Utilizada para escanear redes y puertos.
    - Instalación: `sudo apt install nmap` (Linux)
- **Metasploit (con MSFVenom):** Framework de explotación y generación de payloads.
    - Instalación: [Instalación de Metasploit](https://docs.metasploit.com/docs/using-metasploit/getting-started.html)

## Hablemos de nuestro BAT

El proyecto utiliza scripts en batch (.bat) como lenguaje base para automatizar tareas en sistemas Windows. Los scripts se comunican con ADB para interactuar con dispositivos Android y se integran con herramientas como Nmap para realizar escaneos de red y con MSFVenom para generar y desplegar payloads. Esta combinación de herramientas maximiza las capacidades del hacking ético, simulando ataques reales con fines educativos y de evaluación.

Ejemplo de un comando simple en batch que ejecuta un escaneo con Nmap y luego interactúa con ADB:

```batch
nmap -p 5555 %DEVICE_IP%
adb connect %DEVICE_IP%
adb install malware.apk
