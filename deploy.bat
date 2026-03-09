@echo off
echo ========================================
echo  Deploy para GitHub
echo ========================================
echo.
echo IMPORTANTE: Crie o repositorio VAZIO no GitHub!
echo Acesse: https://github.com/new
echo NAO marque README, .gitignore ou License
echo.
pause
echo.

set /p USUARIO="Digite seu usuario do GitHub: "
set /p REPO="Digite o nome do repositorio: "
set /p EMAIL="Digite seu email do GitHub: "

echo.
echo Configurando Git...
git config --global user.name "%USUARIO%"
git config --global user.email "%EMAIL%"

echo Removendo configuracao antiga...
rd /s /q .git 2>nul

echo Inicializando repositorio...
git init

echo Adicionando arquivos...
git add .

echo Criando commit...
git commit -m "Initial commit"

echo Configurando branch main...
git branch -M main

echo Adicionando repositorio remoto...
git remote add origin https://github.com/%USUARIO%/%REPO%.git

echo Enviando para GitHub (forcado)...
git push -u origin main --force

echo.
echo ========================================
echo  Concluido!
echo ========================================
echo.
echo Ative o GitHub Pages em:
echo https://github.com/%USUARIO%/%REPO%/settings/pages
echo.
echo Seu site estara em:
echo https://%USUARIO%.github.io/%REPO%
echo.
pause
