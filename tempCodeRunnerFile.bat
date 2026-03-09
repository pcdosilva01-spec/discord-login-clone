@echo off
echo ========================================
echo  Deploy para GitHub
echo ========================================
echo.

set /p USUARIO="pcdosilva01-spec"
set /p REPO="discord-login-clone"

echo.
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

echo Enviando para GitHub...
git push -u origin main

echo.
echo ========================================
echo  Concluido!
echo ========================================
echo.
echo Seu site estara em:
echo https://%USUARIO%.github.io/%REPO%
echo.
pause
