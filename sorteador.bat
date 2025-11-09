@echo off
setlocal enabledelayedexpansion
color 0A
title Sorteador Simples

:menu
cls
echo =======================================================================================
echo                                    SORTEADOR SIMPLES
echo                                         v.1.3.3
echo                 Copyright (c) 2025 Warreno Hendrick Costa Lima Guimaraes.
echo                               Todos os direitos reservados.
echo =======================================================================================
echo.
echo 1 - Sortear NUMEROS
echo 2 - Sortear TERMOS/NOMES
echo 3 - Sair
echo.
echo =======================================================================================
echo.
set /p opcao="Escolha uma opcao: "

if "%opcao%"=="1" goto sortear_numeros
if "%opcao%"=="2" goto sortear_termos
if "%opcao%"=="3" exit
goto menu

:sortear_numeros
cls
echo =======================================================================================
echo                                 SORTEIO DE NUMEROS
echo =======================================================================================
echo.
set /p num_min="Digite o numero MINIMO: "
set /p num_max="Digite o numero MAXIMO: "
echo.
echo Pressione qualquer tecla para iniciar o sorteio...
pause >nul

rem Sortear o numero final
set /a "resultado_final=(%RANDOM% %% (%num_max% - %num_min% + 1)) + %num_min%"

rem Mostrar animacao por 10 segundos (aproximadamente 200 iteracoes)
set iterations=0
:animacao_numeros
if !iterations! geq 200 goto resultado_numeros

cls
echo =======================================================================================
echo                                     SORTEANDO...
echo =======================================================================================
echo.
echo.

rem Mostrar um numero aleatorio
set /a "numero_temp=(%RANDOM% %% (%num_max% - %num_min% + 1)) + %num_min%"
echo                                   !numero_temp!

echo.
echo.
echo =======================================================================================

rem Delay pequeno (100ms aproximadamente)
ping localhost -n 1 -w 100 >nul

set /a iterations+=1
goto animacao_numeros

:resultado_numeros
cls
echo =======================================================================================
echo                                    RESULTADO FINAL
echo =======================================================================================
echo.
echo.
echo.
echo                              **  !resultado_final!  **
echo.
echo.
echo.
echo =======================================================================================
echo.
pause
goto menu

:sortear_termos
cls
echo =======================================================================================
echo                                SORTEIO DE TERMOS/NOMES
echo =======================================================================================
echo.
echo Digite os termos separados por virgula
echo Exemplo: Joao,Maria,Pedro,Ana
echo.
set /p termos="Termos: "

rem Contar quantos termos existem
set count=0
for %%a in ("%termos:,=" "%") do (
    set /a count+=1
    set "termo!count!=%%~a"
)

if %count%==0 (
    echo Nenhum termo foi digitado!
    pause
    goto menu
)

echo.
echo Total de termos: %count%
echo.
echo Pressione qualquer tecla para iniciar o sorteio...
pause >nul

rem Sortear o vencedor final
set /a "indice_final=(%RANDOM% %% %count%) + 1"

rem Mostrar animacao por 10 segundos (aproximadamente 200 iteracoes)
set iterations=0
:animacao
if !iterations! geq 200 goto resultado

cls
echo =======================================================================================
echo                                     SORTEANDO...
echo =======================================================================================
echo.
echo.

rem Mostrar um termo aleatorio
set /a "indice_temp=(%RANDOM% %% %count%) + 1"
echo                            !termo%indice_temp%!

echo.
echo.
echo =======================================================================================

rem Delay pequeno (100ms aproximadamente)
ping localhost -n 1 -w 100 >nul

set /a iterations+=1
goto animacao

:resultado
cls
echo =======================================================================================
echo                                     RESULTADO FINAL
echo =======================================================================================
echo.
echo.
echo.
echo                       **  !termo%indice_final%!  **
echo.
echo.
echo.
echo =======================================================================================
echo.
pause
goto menu
