@echo off
setlocal

echo Ejecutando Playwright Codegen...
npx playwright codegen https://flexipago-web-dev.frd.org.mx/ --output grabar-actividad.spec.ts
echo Código generado.

endlocal