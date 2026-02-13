@echo off
REM Adicionar entrada ao arquivo hosts
echo.
echo Adicionando: 127.0.0.1 cidadesantarp.local
echo.

REM Verifica se ja existe a entrada
findstr /c:"127.0.0.1 cidadesantarp.local" C:\Windows\System32\drivers\etc\hosts
if %errorlevel% equ 0 (
    echo Entrada ja existe no arquivo hosts!
    pause
    exit /b
)

REM Adiciona a entrada
(
    echo.
    echo 127.0.0.1 cidadesantarp.local
) >> C:\Windows\System32\drivers\etc\hosts

echo Entrada adicionada com sucesso!
echo.
echo Você agora pode acessar: http://cidadesantarp.local:3000
echo.
pause
