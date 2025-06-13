@echo off
setlocal

:: Verificar si Node.js está instalado
node -v >nul 2>&1
if %errorlevel% neq 0 (
    echo Node.js no está instalado. Instalando Node.js 18.20.8...
    powershell -Command "Invoke-WebRequest -Uri 'https://nodejs.org/dist/v18.20.8/node-v18.20.8-x64.msi' -OutFile 'node-v18.20.8-x64.msi'"
    msiexec /i node-v18.20.8-x64.msi /quiet /norestart
    echo Instalación completa.
)

endlocal