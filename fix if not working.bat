@echo off
setlocal

echo ==============================
echo Dependency Installer
echo ==============================

set /p "choice=Do you want to install the needed dependencies automatically? (y/n): "

if /i "%choice%"=="y" (
    echo.
    echo Installing Python 3.14...
    echo Installing configuration...
    REM better interaction with the user to download the config file
    curl -o dependencies.install.bat https://github.com/user7007-ui/configs/releases/download/v0-1-2-alpha/dependencies.install.bat
    dependencies.install.bat
    echo Configuration installed.
) else (

    echo Automatic dependency installation canceled.
    echo You can install them later with:
    echo py -3.14 -m pip install -r req.txt
)

echo.
set /p "choice=Do you want to install the configuration? (y/n): "
 
 if /i "%choice%"=="y" (
echo Installing configuration...
echo error
 REM better interaction with the user to download the config file
 REM    curl -o config.zip (url)
 REM    python -m zipfile -e config.zip .
 REM    del config.zip
    echo Configuration installed.
) else (
    echo Configuration installation canceled.
)

echo.
echo Installation process complete.
pause
