@echo off
setlocal

echo Descargando scripts desde el repositorio...
curl -o install-nodejs.bat https://raw.githubusercontent.com/Dekoher/codegen-scripts/refs/heads/main/install-nodejs.bat
curl -o install-playwright.bat https://raw.githubusercontent.com/Dekoher/codegen-scripts/refs/heads/main/install-playwright.bat
curl -o ejecutar-codegen.bat https://raw.githubusercontent.com/Dekoher/codegen-scripts/refs/heads/main/ejecutar-codegen.bat

echo Ejecutando scripts...
start /wait cmd /c install-nodejs.bat
start /wait cmd /c install-playwright.bat
start /wait cmd /c ejecutar-codegen.bat

echo Todos los scripts se ejecutaron correctamente.
pause
endlocal
